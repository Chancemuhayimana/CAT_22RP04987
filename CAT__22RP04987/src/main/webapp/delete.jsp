<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Employee</title>
</head>
<body>


<%
String id_22rp04987=request.getParameter("id");
Connection conn=null;
PreparedStatement smt=null;

if(id_22rp04987 != null){
	try{
		String url_22rp04987="jdbc:mysql://localhost:3306/emp_22rp04987";
		String user_22rp04987="root",pass_22rp04987="";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url_22rp04987,user_22rp04987,pass_22rp04987);
		String sql="DELETE FROM employees WHERE id= ?";
		smt =conn.prepareStatement(sql);
		smt.setInt(1, Integer.parseInt(id_22rp04987));
		int del = smt.executeUpdate();
		if(del > 0){
			out.println("<script>");
			out.println("alert('employee Deleted')");
			out.println("window.location.href='home.jsp'");
			out.println("</script>");
		}else{
			out.println("<script>");
			out.println("alert('employee not found')");
			out.println("window.location.href='home.jsp'");
			out.println("</script>");
		}}
	
		catch(SQLException e)
	{
			out.print("Error" + e.getMessage());
		}
	
	finally{
			try{
			if(smt != null) smt.close();
			if(conn != null) conn.close();
			
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		
		
	}
%>

</body>
</html>