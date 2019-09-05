<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="MovieTicket.jsp" method="POST">
Name: <input type="text" name="name">
Age: <input type="text" name="age">
<input type="submit" value="Submit">
</form>
<%
String name=request.getParameter("name"); 
String age=request.getParameter("age");
if(age!=null && !age.equals("")) {
int ageIn=Integer.parseInt(age);
double price=9.50;
if(ageIn>65) {
	price=7.00;
}
else if(ageIn<10) {
	price=5.00;
}
String pr=String.format("%.2f",price);
out.print("Name:"+name+"<br>Age:"+age+"<br> The price of a ticket is:"+pr);
}
%>
</body>
</html>