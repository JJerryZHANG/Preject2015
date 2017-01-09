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
<link rel="stylesheet" type="text/css" href="css/reg_style.css" />
<link rel="stylesheet" type="text/css" href="css/reg_body.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<title>注册页面</title>
</head>
<body>
	<div class="container">
		<section id="content" >
		<form action="servlet/UserServlet?flag=signup" method="post">
			<h1>用户注册</h1>

			<table>
				<tr>
					<td><h5>昵称：</h5></td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td><h5>密码：</h5></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><h5>性别：</h5></td>
					<td>
					<label  class="radio-inline">
							<input type="radio" name="sex" value="male" id="inlineRadio1">男
						</label>
						<label  class="radio-inline">
							<input type="radio" name="sex" value="female" id="inlineRadio2">女
						</label>
						</td>
				<tr>
					<td><h5>所属人群：</h5></td>
					<td><select name="age" class="form-control">
							<option value="baby">婴儿</option>
							<option value="children">儿童</option>
							<option value="young">青少年</option>
							<option value="adult">中年人</option>
							<option value="old">老年人</option>
					</select></td>
				</tr>
				<tr>
					<td><h5>个性：</h5></td>
					<td><select name="tag" class="form-control">
							<option value="eat">吃货</option>
							<option value="cartoon">动漫迷</option>
							<option value="cute">可爱</option>
							<option value="tech">科技迷</option>
							<option value="art">文艺范</option>
							<option value="beauty">爱美</option>
					</select></td>
				</tr>
			</table>
			
			<div>
				<!-- <input type="submit" value="Log in" /> -->
				<input type="submit" value="注册" class="btn btn-primary"
					id="js-btn-login" /> 
				<a href="<%=basePath%>Login.jsp" class="btn btn-default">登陆</a>
				<!-- <a href="#">Register</a> -->
			</div>

		</form>
		<!-- form --> </section>
		<!-- content -->
	</div>
	<!-- container -->	
</body>
</html>