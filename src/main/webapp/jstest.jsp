<%--
  Created by IntelliJ IDEA.
  User: smallfat
  Date: 2019/7/16
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <title>JSTEST</title>
    <script>
        window.onload = choosePic;
        function choosePic() {
            var myPix = new Array("images/c1.jpg","images/c2.jpg","images/c3.jpg");
            var randomNum = Math.floor((Math.random() * myPix.length));
            var randomNum1 = Math.floor((Math.random() * myPix.length));
            document.getElementById("myPicture").src = myPix[randomNum];
            document.getElementById("myPicture1").src = myPix[randomNum1];
        }
    </script>
</head>
<body>

<h1>我的第一个 JavaScript 程序</h1>
<p id="demo">这是一张图片</p>
<img id="myPicture" src="" alt="随机图片">
<img id="myPicture1" src="" alt="随机图片">
</body>
</html>
