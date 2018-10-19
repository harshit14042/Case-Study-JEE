<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
p{
	color:red;
}
div{
	width:50%;
	background-color:aqua;
	margin:auto;
	border: 3px solid black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Summary</title>
</head>
<body>
<div>
<b><%out.print("Service Taken: ");%></b>
<%out.println(request.getAttribute("service"));%><br/><br/>
<b><%out.print("Charges for Service: ");%></b>
<%out.println(request.getAttribute("amount"));%><br/><br/>
<b><%out.print("Insurance Coverage: ");%></b>
<%out.println(request.getAttribute("coverage"));%><br/><br/>
<b><%out.print("Remaining Coverage after Service:");%></b>
<p><%out.println(request.getAttribute("net_amount"));%></p><br/><br/>
<br/>
<b><a href="main.html"><p>BACK</p></a></b>
</div>
</body>
</html>