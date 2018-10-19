<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.training.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div{
	width:50%;
	background-color:aqua;
	margin:auto;
	border: 3px solid black;
}
.left{
	margin-left:200px;
	position:fixed;
}
.right{
	margin-left:300px;
	position:fixed;
}
#btn{
	margin-left:300px;
	position:fixed;
}
p,a,b{
	font-size:16px;
	text-align: center;
	color:black;
}
body{
	background-color:#4200ff;
}
h3{
	text-align:center;
}
</style>
<title>Details</title>
</head>
<body>
<%
Customer cust=(Customer)request.getAttribute("customer");
%>
<div>
<h3><u>Details</u></h3><br/><br/>
<b><%out.print("Name");%></b>
<%out.println(cust.getCname());%>
<b><%out.print("Address");%></b>
<%out.println(cust.getAddr()); %>
<b><%out.print("Email"); %></b>
<%out.println(cust.getEmail());%>
<br/>
<b><a href="main.html"><p>BACK</p></a></b>
</div>
</body>
</html>