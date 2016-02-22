<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Contactus</title>
<%
    response.setHeader( "Cache-Control", "no-store, no-cache, must-revalidate");  //HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", -1); //prevents caching at the proxy server
%>
</head>
<body>

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
       <li><a href="DisplayFilter?flag=aboutus">About Us</a></li>
      <li><a href="DisplayFilter?flag=users">Users</a></li>
      <li class="active"><a href="DisplayFilter?flag=contactus">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
      <li><a href="LogoutController"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<table class="container">
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