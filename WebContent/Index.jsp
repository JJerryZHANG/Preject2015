<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--  
<%@ include file="LoginCheck.jsp"%>
--%>
<!-- Login Check -->
<%
	if (session.getValue("userName") == null) {
%>
<script>
	alert("请先登陆!");
	window.location.href = "Login.jsp";
</script>
<%
	}
%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	String userName = (String) session.getAttribute("userName");
	//String NameNum1 = (String) session.getAttribute("NameNum1");
	//String Hotone = (String) session.getAttribute("Hotone");//传过来的值要求是Hot1
	//request.getRequestDispatcher("servlet/GiftServlet").forward(request, response);
	//when the page load,doGet to servlet, 解决同步问题需要Ajax
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=path%>/css/Index.css"
	type="text/css" />
<title>MAIN PAGE</title>
</head>
<body>

	<div>
		<br/>		
		<h3>
			&nbsp;&nbsp; Hi,&nbsp;&nbsp; <%=userName%> 
			&nbsp;&nbsp;&nbsp; <a href="<%=basePath%>Logout.jsp">Log out</a> | <a
				href="<%=basePath%>Signup.jsp">Sign up</a> | <a
				href="<%=basePath%>Login.jsp">Login</a>
		</h3>
	</div>

	<div id="templatemo_wrapper_h">
		<div id="templatemo_header_wh">
			<div id="templatemo_header" class="header_home">
				<div id="site_title"></div>
				<div id="templatemo_menu" class="ddsmoothmenu">
					<!-- 标题栏 -->
					<ul>
						<li><a href="servlet/GiftServlet" class="selected">Main</a></li>
						<li><a href="javascript:DisplaySubnav1();">WHO</a>
							<ul id="subnav1">
								<li><a href="servlet/SelectServlet?tag=old">Old</a></li>
								<li><a href="servlet/SelectServlet?tag=adult">Adult</a></li>
								<li><a href="servlet/SelectServlet?tag=young">Young</a></li>
								<li><a href="servlet/SelectServlet?tag=children">Children</a></li>
								<li><a href="servlet/SelectServlet?tag=baby">Baby</a></li>
							</ul></li>
						<li><a href="javascript:DisplaySubnav2();">Festival</a>
							<ul id="subnav2">
								<li><a href="servlet/SelectServlet?tag=spring">Spring Festival</a></li>
								<li><a href="servlet/SelectServlet?tag=moon">MoonCake Day</a></li>
								<li><a href="servlet/SelectServlet?tag=birthday">Birthday</a></li>
								<li><a href="servlet/SelectServlet?tag=marry">Marriage</a></li>
								<li><a href="servlet/SelectServlet?tag=love">Love</a></li>
								<li><a href="servlet/SelectServlet?tag=move">Moving</a></li>
							</ul></li>
						<li><a href="javascript:DisplaySubnav3();">Feature</a>
							<ul id="subnav3">
								<li><a href="servlet/SelectServlet?tag=cute">Cute</a></li>
								<li><a href="servlet/SelectServlet?tag=eat">Eat Lover</a></li>
								<li><a href="servlet/SelectServlet?tag=cartoon">Cartoon Lover</a></li>
								<li><a href="servlet/SelectServlet?tag=tech">Technology Lover</a></li>
								<li><a href="servlet/SelectServlet?tag=art">Artist</a></li>
								<li><a href="servlet/SelectServlet?tag=beauty">Beauty</a></li>
							</ul></li>
						<!-- Entrance of  Discussion Area -->
						<!--  
						<li><a href="servlet/ToMessageBoard">Message</a></li>
						-->
					</ul>

					<!-- Search Box -->
					<!--  
					<div id="templatemo_search">
						<form action="servlet/SearchServlet" method="post">
							<input type="text" name="keyword" id="keyword" title="keyword"
								onfocus="clearText(this)" onblur="clearText(this)"
								class="txt_field" /> <input type="submit" name="Search"
								value="" alt="Search" id="searchbutton" title="Search"
								class="sub_btn" />
						</form>
					</div>
					-->

					<br style="clear: left" />
				</div>

				<!-- end of templatemo_menu -->

				<!-- 滚动横幅 -->
				<div class="slider-wrapper theme-orman">
					<img src="<%=path%>/images/header.jpg">
				</div>

			</div>
			<!-- END of header -->
		</div>
		<!-- END of header wrapper -->

		<div id="templatemo_main_wrapper">
			<div id="templatemo_main">
				<div id="sidebar" class="left">

					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>Advertisement Area</h3>
						<div class="content">
							<ul class="sidebar_list1" id="sidebar_list1">
								<li><a href="#">Ad1</a></li>
								<li><a href="#">Ad2</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
							</ul>
							<ul class="sidebar_list2" id="sidebar_list2">
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
								<li><a href="#">AD</a></li>
							</ul>
						</div>
						<%--分页 --%>
						<div>
							<sapn> &lt; </sapn>
							<a href="javascript:page1();">1</a> <a href="javascript:page2();">2</a>
							<sapn> &gt; </sapn>
						</div>


					</div>

					<!-- 热门礼物 -->
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>Most Popular Gift</h3>
						<div class="content special">
							<img src="images/product/<%=session.getAttribute("hPic")%>"
							/> <a href="//<%=session.getAttribute("hLink")%>">Purchase Link</a>
							<p>
								<span class="price special_price"><%=session.getAttribute("hName")%></span>
							</p>
						</div>
					</div>
				</div>

				<div id="content" class="right">
					<h2>Gifts Display</h2>
					
					<div class="product_box">
						<a><img
							src="images/product/<%=session.getAttribute("Pic0")%>"
							/></a>
						<h3><%=session.getAttribute("Name0")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link0")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name0")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name0")%>">Praise(<%=session.getAttribute("Hot0")%>)
							</a>
						</p>
					</div>

					<div class="product_box">
						<a><img
							src="images/product/<%=session.getAttribute("Pic1")%>"
							/></a>
						<h3><%=session.getAttribute("Name1")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link1")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name1")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name1")%>">Praise(<%=session.getAttribute("Hot1")%>)
							</a>
						</p>
					</div>
					<div class="product_box">
						<a><img
							src="images/product/<%=session.getAttribute("Pic2")%>"
							/></a>
						<h3><%=session.getAttribute("Name2")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link2")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name2")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name2")%>">Praise(<%=session.getAttribute("Hot2")%>)
							</a>
						</p>
					</div>

					<div class="product_box no_margin_right">
						<a><img
							src="images/product/<%=session.getAttribute("Pic3")%>"
							/></a>
						<h3><%=session.getAttribute("Name3")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link3")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name3")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name3")%>">Praise(<%=session.getAttribute("Hot3")%>)
							</a>
						</p>
					</div>

					<div class="product_box">
						<a><img
							src="images/product/<%=session.getAttribute("Pic4")%>"
							/></a>
						<h3><%=session.getAttribute("Name4")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link4")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name4")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name4")%>">Praise(<%=session.getAttribute("Hot4")%>)
							</a>
						</p>
					</div>
					<div class="product_box">
						<a><img
							src="images/product/<%=session.getAttribute("Pic5")%>"
							/></a>
						<h3><%=session.getAttribute("Name5")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link5")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name5")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name5")%>">Praise(<%=session.getAttribute("Hot5")%>)
							</a>
						</p>
					</div>
					<div class="product_box">
						<a><img
							src="images/product/<%=session.getAttribute("Pic6")%>"
							 /></a>
						<h3><%=session.getAttribute("Name6")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link6")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name6")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name6")%>">Praise(<%=session.getAttribute("Hot6")%>)
							</a>
						</p>
					</div>
					<div class="product_box no_margin_right">
						<a><img
							src="images/product/<%=session.getAttribute("Pic7")%>"
							 /></a>
						<h3><%=session.getAttribute("Name7")%></h3>
						<p class="product_price">
							<a href="//<%=session.getAttribute("Link7")%>" target="_blank">Purchase Link</a>
						</p>
						<p class="add_to_cart">
							<a
								href="https://zh.wikipedia.org/wiki/<%=session.getAttribute("Name7")%>">Introduce</a>
							<a
								href="servlet/PraiseServlet?gName=<%=session.getAttribute("Name7")%>">Praise(<%=session.getAttribute("Hot7")%>)
							</a>
						</p>
					</div>

					<div class="blank_box">
						<a href="#"><img src="<%=path%>/images/free_shipping.jpg"
							/></a>
					</div>
				</div>
				<div class="cleaner"></div>
			</div>
			<!-- END of main -->
		</div>
		<!-- END of main wrapper -->

		<!-- 页尾 -->
		<div id="templatemo_footer_wrapper">
			<div id="templatemo_footer">
				<div class="footer_left">&nbsp;</div>
				<div class="footer">
					<p>
						版权属于 <a href="#">ZHANG Jie</a>
					</p>
				</div>
				<div class="footer_right">&nbsp;</div>
				<div class="cleaner"></div>
			</div>
			<!-- END of footer -->
		</div>
		<!-- END of footer wrapper -->
	</div>
</body>
<script type="text/javascript" src="js/index.js"></script>
</html>