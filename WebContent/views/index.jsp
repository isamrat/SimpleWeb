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
<title>WELCOME</title>
</head>
<body>

<div class="container" align="center">
<form action="LoginController" method="post" class="form-horizontal" role="form">
	<table align="center">
	<tr>
	<td class="form-group">
		<label class="control-label col-sm-2" for="uname">Username:</label> 
	</td>
	<td class="col-sm-10">
		
		<input type="text" class="form-control" name="username" placeholder="username" required>
	</td>
	</tr>
	<br><br> 
	<tr>
	<td class="form-group">
		<label class="control-label col-sm-2" for="pwd">Password:</label>
	</td>
	<td class="col-sm-10">
		<input type="password" class="form-control" name="password" placeholder="password" required>
	</td>
	</tr>
	<br><br>
	<tr class="form-group">
		<td align="center" class="col-sm-offset-2 col-sm-10"><input type="submit" class="btn btn-default" value="submit"></td>
	</tr>
	</table>
</form>







</div>
</body>
</html>