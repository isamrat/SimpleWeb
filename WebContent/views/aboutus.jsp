<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery-1.12.0.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>
<%
	//For not to cache any data in the page history (after logout back button fiasco)
    response.setHeader( "Cache-Control", "no-store, no-cache, must-revalidate");  //HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", -1); //prevents caching at the proxy server
%>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility %>
<%if(session.getAttribute("username")=="" || session.getAttribute("username")==null) {%>
		You are not loggedIn... <br>
		<a href="index.jsp"><span></span> Login page</a>
	<%}else {%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="views/home.jsp">Home</a></li>
       <li class="active"><a href="DisplayFilter?flag=aboutus">About Us</a></li>
      <li><a href="DisplayFilter?flag=users">Users</a></li>
      <li><a href="DisplayFilter?flag=contactus">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
      <li><a href="LogoutController"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<table class="container" align="center">
<tr>
	<td>
	<%if(request.getAttribute("data") != null) { %>
		<p><%= request.getAttribute("data").toString() %></p>
	<%} %>
	
  	</td>
</tr>
</table> 

<%} %>
</body>
</html>