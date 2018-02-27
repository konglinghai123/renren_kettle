**项目说明** 
- renren_kettle是修改了kettle-manager的源码的项目，由于马老师的项目基于EVOA，不便于系统的集成，所以将部分重要功能转接到spring-boot，
具体操作kettle的sql仍然是beetl的，具体的代码带 kettle 这个模块，而其他业务代码你可以选择mybatis去实现。
- renren_kettle是搭建在renren_fast的基础上的，这个框架如何使用，请看这个开源项目的文档
<br>

**项目实现功能**
- 作业的列表（非实时），启动，停止，终结，删除，结束 （VJobController）
- 基于websocket的实时日志 （KettleLogListener）
- 前端代码,忙着找工作,没有实现，请各位自行完善
<br> 

**项目结构** 
```
renren-fast
├─doc  项目SQL语句
│
├─kettle 马老师的 kettle api调用都在这里
├─common 公共模块
│  ├─aspect 系统日志
│  ├─exception 异常处理
│  ├─validator 后台校验
│  └─xss XSS过滤
│ 
├─config 配置信息
│ 
├─modules 功能模块
│  ├─api API接口模块(APP调用)
│  ├─job 定时任务模块
│  ├─kettle kettle相关的业务
│  ├─oss 文件服务模块
│  └─sys 权限模块
│ 
├─RenrenApplication 项目启动类
│  
├──resources 
│  ├─mapper SQL对应的XML文件
│  ├─static 第三方库、插件等静态资源
│  └─views  项目静态页面

```
<br> 

**实时websocket的接入例子**
```
<script type="text/javascript">
    var websocket = null;
    $(document).ready(function(){
        //判断当前浏览器是否支持WebSocket
        if('WebSocket' in window){
            //${path} 是jsp的标签
            websocket = new WebSocket("ws://${path}/kettle/log");
        }
        else{
            alert('Not support websocket')
        }
        //连接发生错误的回调方法
        websocket.onerror = function(){
            setMessageInnerHTML("error");
        };

        //连接成功建立的回调方法
        websocket.onopen = function(event){
            var message = $("#jobId").val()+"-"+"open";
            websocket.send(message);

        }

        //接收到消息的回调方法
        websocket.onmessage = function(event){
            setMessageInnerHTML(event.data);
        }

        //连接关闭的回调方法
        websocket.onclose = function(){
            closeWebSocket();
        }

        //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
        window.onbeforeunload = function(){
            websocket.close();
        }

    });

    //关闭连接
    function closeWebSocket(){
        websocket.close();
    }

    //将消息显示在网页上
    function setMessageInnerHTML(innerHTML){
        document.getElementById('message').innerHTML += innerHTML +"\r\n"+"***********************************************************************>"+"\r\n";
    }

    function removeAll() {
        $("#message").html("");
    }
</script>
```
<br>

**部署指南**
- doc有2个数据库
    kettle.sql （kettle 5.4的资源库），有一张表是自己加的，CrTask-定时任务表，这里面有一条固定的记录，用于定时获取kettle的日志，然后发到websocket。
    renren_fast.sql （renren 开源项目的业务数据库）

- kettle的配置文件  resources/kettle.properties

- renren项目的配置都在application.yml


