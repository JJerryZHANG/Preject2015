<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/login_style.css" />
<link rel="stylesheet" type="text/css" href="css/login_body.css"/> 
<title>登陆页面</title>
</head>
<body>
<div class="container">
	<section id="content">
		<form action="servlet/UserServlet?flag=login" method="post">
			<h1>用户登录</h1>
			<div>
				<input type="text" placeholder="用户名" name="userName" id="userName"/>
			</div>
			<div>
				<input type="password" placeholder="密码" name="password" id="password"/>
			</div>
			 <div class="">
				<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			</div> 
			<div>
				<!-- <input type="submit" value="Log in" /> -->
				<input type="submit" value="登录" class="btn btn-primary" id="js-btn-login"/>
				<a href="<%=basePath%>Signup.jsp" class="btn btn-default">注册</a>
				<!-- <a href="#">Register</a> -->
			</div>
		</form><!-- form -->
	</section><!-- content -->
</div>
<!-- container -->
<br/><br/><br/><br/>
</body>
</html>