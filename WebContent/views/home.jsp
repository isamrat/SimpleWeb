<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery-1.12.0.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link href="bootstrap.css" rel="stylesheet" media="screen">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
<title>Home</title>

<%
	//For not to cache any data in the page history (after logout back button fiasco)
    response.setHeader( "Cache-Control", "no-store, no-cache, must-revalidate");  //HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", -1); //prevents caching at the proxy server
%>
<script type="text/javascript">
var count = 0; 
window.onload = function () { 
    if (typeof history.pushState === "function") { 
        history.pushState("back", null, null);          
        window.onpopstate = function () { 
            history.pushState('back', null, null);              
            if(count == 1){
            	$('#myModal').modal('show');
            	$('#myModal').find('.modal-footer #confirm').on('click', function(){
            		window.location.replace("http://localhost:8080/SimpleWeb/LogoutController");
            	});
            }
            
         }; 
     }
 };  
setTimeout(function(){count = 1;},200);</script>
</head>
<body>

<%if(session.getAttribute("username")=="" || session.getAttribute("username")==null) {%>
		You are not loggedIn... <br>
		<a href="../index.jsp"><span></span> Login page</a>
	<%}else {%>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">!!!!! ALERT !!!!!</h4>
      </div>
      <div class="modal-body">
        <p>You will be logged out from the application. Proceed? </p>
      </div>
      <div class="modal-footer">
        <button id="confirm" type="button" class="btn btn-danger" data-dismiss="modal">Yes</button>
        <button id="btnNoConfirmYesNo" type="button" class="btn btn-default" data-dismiss="modal">No</button>
      </div>
    </div>

  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
       <li><a href="../DisplayFilter?flag=aboutus">About Us</a></li>
      <li><a href="../DisplayFilter?flag=users">Users</a></li>
      <li><a href="../DisplayFilter?flag=contactus">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
      <li><a href="../LogoutController"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<table class="container">
<tr>
	<td>
	<%if(request.getAttribute("data")!=null) { %>
		<h3>Right Aligned Navbar</h3>
	<%} %>
	  	<p>The .navbar-right class is used to right-align navigation bar buttons.</p>
  	</td>
</tr>
</table> 
<%} %>
</body>
</html>