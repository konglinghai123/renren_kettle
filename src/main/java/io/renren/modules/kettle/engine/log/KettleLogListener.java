package io.renren.modules.kettle.engine.log;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.pentaho.di.job.Job;
import org.springframework.stereotype.Component;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@ServerEndpoint("/kettle/log")
public class KettleLogListener implements Listener{

    private static Logger logger = Logger.getLogger(KettleLogListener.class);

    private static Map<String, MonitorClient> map = new ConcurrentHashMap<>();

    final static Pattern MSG_PATTERN = Pattern.compile("^(\\d+)-open$");

    @Override
    public void handleMsg(Job job, String msg) {
        for (MonitorClient client : map.values()) {
            client.sendMsg(job.getObjectId().getId(),msg);
        }

    }

    /**
     * 连接建立成功调用的方法
     * @param session  可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(Session session) {
        logger.info("客户端[" + session.getId() + "]尝试服务监控连接...");
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose(Session session) {
        logger.info("客户端[" + session.getId() + "]关闭服务监控连接！");
        map.remove(session.getId());
    }

    /**
     * 收到客户端消息后调用的方法
     * @param message 客户端发送过来的消息
     * @param session 可选的参数
     */
    @OnMessage
    public void onMessage(String message, Session session) {
        logger.info("客户端[" + session.getId() + "]发送消息：" + message);
        Matcher matcher = MSG_PATTERN.matcher(message);
        if (matcher.matches()) {
            String jobId = matcher.group(1);
            map.put(session.getId(), new MonitorClient(jobId, session));
            logger.info("当前服务监听连接数：" + map.size());
        }
    }


    private class MonitorClient {
        private String jobId;
        private Session session;

        public MonitorClient(String serviceCode, Session session) {
            this.jobId = serviceCode;
            this.session = session;
        }

        public void sendMsg(String code, String msg) {
            if (!StringUtils.equals(jobId, code)) {
                return;
            }
            if (!session.isOpen()) {
                logger.info("服务["+code+"]发送消息取消，客户端["+session.getId()+"]已关闭！");
                return;
            }
            try {
                session.getBasicRemote().sendText(msg);
            } catch (IOException e) {
                logger.error("服务["+code+"]发送消息到客户端["+session.getId()+"]失败！", e);
            }
        }

    }
}
