package io.renren.config;


import org.csource.common.MyException;
import org.csource.fastdfs.ClientGlobal;
import org.csource.fastdfs.TrackerClient;
import org.csource.fastdfs.TrackerGroup;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.net.InetSocketAddress;
import java.util.List;

/**
 * Created by Glenn on 2017/5/18 0018.
 */

@Configuration("FastDFSConfig")
@EnableCaching//启用缓存的意思
public class FastDFSConfig {
    /***
     * Example
     @Autowired
     private TrackerClient client;

     上传至FastDFS
     StorageClient storageClient = new StorageClient(client.getConnection(), null);
     String[] ret = storageClient.upload_file(fileContent,type.getPureSuffix(), null);
     下载从FastDFS

     StorageClient storageClient = new StorageClient(client.getConnection(), null);
     FileInfo fi = storageClient.get_file_info(entity.getGroupName(), entity.getFileUri());
     if (fi == null) {
     throw new Exception("File information from FastDFS is null");
     }
     byte[] fileContent = storageClient.download_file(entity.getGroupName(), entity.getFileUri());
     if (fileContent == null) {
     throw new Exception("File entity from FastDFS is null");
     }
     * */


    @Value("${fdfs.networkTimeout:#{null}}")
    private Integer networkTimeout;
    @Value("${fdfs.connectTimeout:#{null}}")
    private Integer connectTimeout;
    @Value("${fdfs.trackerServer:#{null}}")
    List<String> trackerServer;
    @Value("${fdfs.charset:#{null}}")
    private String charset;
    @Value("${fdfs.trackerHttpPort:#{null}}")
    private Integer trackerHttpPort;
    @Value("${fdfs.antiStealToken:#{null}}")
    private Boolean antiStealToken;
    @Value("${fdfs.secretKey:#{null}}")
    private String secretKey;

    @Bean
    public TrackerClient getTrackerClient() throws MyException {
        String[] parts;
        ClientGlobal.setG_anti_steal_token(antiStealToken);
        ClientGlobal.setG_charset(charset);
        ClientGlobal.setG_connect_timeout(connectTimeout*1000);
        ClientGlobal.setG_network_timeout(networkTimeout*1000);
        ClientGlobal.setG_secret_key(secretKey);
        InetSocketAddress[] tracker_servers = new InetSocketAddress[trackerServer.size()];
        for (int i=0; i<trackerServer.size(); i++)
        {
            parts =trackerServer.get(i).split("\\:", 2);
            if (parts.length != 2)
            {
                throw new MyException("the value of item \"tracker_server\" is invalid, the correct format is host:port");
            }

            tracker_servers[i] = new InetSocketAddress(parts[0].trim(), Integer.parseInt(parts[1].trim()));
        }
        ClientGlobal.setG_tracker_group(new TrackerGroup(tracker_servers));
        ClientGlobal.setG_tracker_http_port(trackerHttpPort);
        TrackerClient trackerClient = new TrackerClient();
        return trackerClient;
    }
}
