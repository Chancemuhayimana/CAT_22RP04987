<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email_22rp04987 = request.getParameter("email");
String password_22rp04987 = request.getParameter("password");
String driver="com.mysql.cj.jdbc.Driver";
String url_22rp04987="jdbc:mysql://localhost:3306/emp_22rp04987";
String user_22rp04987="root", pass_22rp04987="";
Connection conn=null;
PreparedStatement smt=null;
ResultSet rs=null;
try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url_22rp04987,user_22rp04987,pass_22rp04987);
	String sql="SELECT * FROM hr WHERE email=? AND password=?";
	smt=conn.prepareStatement(sql);
	smt.setString(1, email_22rp04987);
	smt.setString(2, password_22rp04987);
	rs=smt.executeQuery();
	if(rs.next()){
		response.sendRedirect("home.jsp");
		out.println("Welcome    " +email_22rp04987);
		
	}else{
		out.println("<script>");
		out.println("alert('Email or password Incorrect')");
		out.println("window.location.href='login.jsp'");
		out.println("</script>");
	}
	
}catch(SQLException e){
	out.println("Error: " + e.getMessage());
}






%>
</body>
</html>