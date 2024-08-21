<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Employee</title>
</head>
<body><a href="addemployee.jsp">ADD NEW EMPLOYEE</a><br>
<h1><%
String email_22rp04987 = request.getParameter("email");
out.println("Welcome    " +email_22rp04987);%></h1>
<table border="1">
<tr>
<th>ID</th>
<th>FIRSTNAME</th>
<th>LASTNAME</th>
<th>AGE</th>
<th colspan="2">OPTIONS</th>
</tr>
<%
try{
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_22rp04987","root","");
	Statement smt = conn.createStatement();
	ResultSet rs = smt.executeQuery("SELECT * FROM employees");
	while(rs.next()){
		%>
		<tr>
		<td><%= rs.getInt("id") %></td>
		<td><%= rs.getString("firstname") %></td>
		<td><%= rs.getString("lastname") %></td>
		<td><%= rs.getString("age") %></td>
		<td><a href="update.jsp?id=<%= rs.getInt("id") %>">Update</a></td>
		<td><a href="delete.jsp?id=<%= rs.getInt("id") %>">Delete</a></td>
		
		
	
		
		<% 
		
		
	}
	
}
catch(SQLException e){
	
}
	
	
%>
</table>
</body>
</html>