<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    int id= Integer.parseInt(request.getParameter("id"));
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_22rp04987","root","");
    PreparedStatement smt = conn.prepareStatement("SELECT * FROM employees WHERE id= ?");
    smt.setInt(1, id);
    ResultSet rs = smt.executeQuery();
    rs.next();
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update employee</title>
</head>
<body>
<h1>ADD NEW EMPLOYEE</h1>
<form action="update1.jsp" method="post">
<label>ID</label><input type="text" name="id" value="<%= rs.getInt("id") %>" readonly><br>
<label>FIRSTNAME</label><input type="text" name="firstname" value="<%= rs.getString("firstname") %>"><br>
<label>LASTNAME</label><input type="text" name="lastname" value="<%= rs.getString("lastname") %>"><br>
<label>AGE</label><input type="text" name="age" value="<%= rs.getString("age") %>"><br>
<input type="submit" value="Update">

</form>
</body>
</html>