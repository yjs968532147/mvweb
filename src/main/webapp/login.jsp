<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%
/*获取工程路径*/
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>登录表单</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">



	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link href="css/style1.css" rel="stylesheet">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>登录表单</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>登 录</h2>
			<form action="<%=basePath%>user/checklogin" method="post" accept-charset="UTF-8">
				<input type="text" Name="username" placeholder="用户名" required="">
				<input type="password" Name="password" placeholder="密码" required="">
				<ul class="tick w3layouts agileits">
					<li>
						<input type="checkbox" id="brand1" value="">
						<label for="brand1"><span></span>记住我</label>
					</li>
				</ul>
				<div class="send-button w3layouts agileits">
					<input type="submit" value="登 录">
				</div>
			</form>
			<h3>${msg}</h3>
			<a href="#">记住密码?</a>
			<div class="social-icons w3layouts agileits">
				<p>- 其他方式登录 -</p>
				<ul>
					<li class="qq"><a href="#">
					<span class="icons w3layouts agileits"></span>
					<span class="text w3layouts agileits">QQ</span></a></li>
					<li class="weixin w3ls"><a href="#">
					<span class="icons w3layouts"></span>
					<span class="text w3layouts agileits">微信</span></a></li>
					<li class="weibo aits"><a href="#">
					<span class="icons agileits"></span>
					<span class="text w3layouts agileits">微博</span></a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="register w3layouts agileits">
			<h2>注 册</h2>
			<form action="<%=basePath%>user/register" method="post" accept-charset="UTF-8">
				<input type="text" Name="username" placeholder="用户名" required="">
				<input type="password" Name="password" placeholder="密码" required="">
				<input type="text" Name="netname" placeholder="昵称" required="">
				<input type="text" Name="sex" placeholder="性别" required="">
				<div class="send-button w3layouts agileits">
					<input type="submit" value="注册">
				</div>
			</form>
			<div class="clear"></div>
		</div>
		<h3>${msg2}</h3>
		<div class="clear"></div>

	</div>



</body>
<!-- //Body -->

</html>