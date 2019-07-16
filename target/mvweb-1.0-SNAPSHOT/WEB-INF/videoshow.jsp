<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%
    String VideoName = session.getAttribute("VideoName").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/backstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/select.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="js/select-ui.min.js"></script>


    <!-- 去掉...引用就是使用video.js播放，不引用就是使用html5的video标签播放 -->
    <script src="<%=basePath%>static.../js/video.min.js"></script>
    <script src="<%=basePath%>static.../js/zh-CN.js"></script>
    <link href="<%=basePath%>static.../css/video-js.min.css" rel="stylesheet">


    <script>
        videojs.options.flash.swf = "http://example.com/path/to/video-js.swf"
    </script>

    <style>
        body {
            background-color: #e5ebee
            width: 1000px;
            height: 800px;
        }

        .m {
            width: 600px;
            height: 400px;
            margin-left: 20%;
            margin-right: 5%;
            margin-top: 2%;
            margin-bootom: 5%;
        }


        /* 暂停时显示播放按钮 */
        .vjs-paused .vjs-big-play-button,
        .vjs-paused.vjs-has-started .vjs-big-play-button {
            display: block;
        }

        /* 点击屏幕播放/暂停 */
        .video-js.vjs-playing .vjs-tech {
            pointer-events: auto;
        }
    </style>

    <!-- 设置宽高自适应 -->
    <script type="text/javascript">
        var player = videojs('#my-video',{fluid: true},function(){
            console.log('Good to go!');
            this.play(); // if you don't trust autoplay for some reason
        })


        videojs("my-video", {}, function(){
            //video.js初始化完成后执行
        });

    </script>

    <title>视频播放</title>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <!-- <li><a href="back/resourceList?uid=3">视频资源管理</a></li> -->
        <li><a href="javascript:void(0)">视频播放</a></li>
    </ul>
</div>

<div class="Name" style="font-size: 15px;margin: 1% 0 0 0;text-align: center;">
    <%-- 视频名称:<%=VideoName%> --%>
    <c:if test="${not empty resource}">
        <td>视频标题：${resource.title}</td>
        <td>上传者：${resource.writer}</td>
        <td>上传时间：${resource.time}</td>
        <td>播放量：${resource.clicks}</td>
    </c:if>

</div>

<!-- class后面加vjs-fluid就设置宽高自适应 ,浏览器自带的控制条,自动预加载,视频封面-->
<div class="m">

    <video
            id="my-video"
            class="video-js vjs-big-play-centered"
            width="800"
            height="500"
            align="middle"
            controls="true"
            preload="auto"
            poster="/websiteimages/finshimg/GZNC.jpg"
            data-setup="{}" >

        <source src="/websiteimages/finshvideo/<%=VideoName%>" type="video/mp4" >

        <p class="vjs-no-js">
            暂不支持本浏览器 <a href="http://videojs.com/html5-video-support/"
                        target="_blank">请将浏览器设置为极速模式，使用html5播放</a></p>
    </video>
    <p style="color:red;margin:20px auto auto 33%;">温馨提示：点击播放器中下载按钮或者鼠标右键另存视频即可下载本视频。</p>
</div>

<!--这是带下载按钮版本-->
<!-- <video id="my-video"
    class="video-js "
    src="/video/5.mp4"
    controls="controls"			//浏览器自带的控制条
    preload="auto"
    width="500"			//不能写px
    height="300"
    poster="/video/1.jpg" >		//视频封面
    您的浏览器不支持播放该视频！
</video> -->
</body>
</html>
