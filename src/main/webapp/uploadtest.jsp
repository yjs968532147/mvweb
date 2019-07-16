<%--
  Created by IntelliJ IDEA.
  User: smallfat
  Date: 2019/7/15
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload</title>
</head>
<body>
<center>
    <h1>视频后台添加视频资源</h1>
    <form id="frm2" name="frm2" action="/file/addVideo" target="nm_iframe" encType="multipart/form-data" method="post">
        <input id="file" name="file" type="file" style="width:518px;"  />
        <input name="" type="submit" class="btn"  value="提交"/>
    </form>
    <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>
</center>
</body>
</html>
