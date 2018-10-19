<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.training.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logs</title>
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
</head>
<body>
<div>
<%
List<Service_Log> list=request.getAttribute("logs");
for(Service_Log log:list)
{
%>
<b><%out.print("Car No: ");%></b>
<%out.println(log.getCar_no());%>
<b><%out.print("Service Date: ");%></b>
<%out.println(log.getService_date());%>
<b><%out.print("Delivery Date: ");%></b>
<%out.println(log.getDelivery_date());%>
<b><%out.print("Amount: ");%></b>
<%out.println(log.getNet_amount());%>
<b><%out.print("Type of Service: ");%></b>
<%
	long serviceId=log.getServiceid();
	String service="Polishing";
	if(serviceId==1){
		service="Polishing";
	}
	else if(serviceId==2){
		service="Wheel Balancing";
	}
	else{
		service="Decor";
	}
	out.println(service);
}
%>
<br/>
<b><a href="main.html"><p>BACK</p></a></b>
</div>
</body>
</html>