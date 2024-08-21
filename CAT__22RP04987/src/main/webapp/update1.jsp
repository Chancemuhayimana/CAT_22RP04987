<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%! 
String driver="com.mysql.cj.jdbc.Driver";
String url_22rp04987="jdbc:mysql://localhost:3306/emp_22rp04987";
String user_22rp04987="root", pass_22rp04987="";
String firstname_22rp04987,lastname_22rp04987,age_22rp04987;
int id_22rp04987;
int status;
Connection conn;
PreparedStatement smt;

%>
<%
id_22rp04987= Integer.parseInt(request.getParameter("id"));
firstname_22rp04987 = request.getParameter("firstname");
lastname_22rp04987 = request.getParameter("lastname");
age_22rp04987 = request.getParameter("age");

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url_22rp04987,user_22rp04987,pass_22rp04987);
	smt = conn.prepareStatement("UPDATE employees SET firstname=?,lastname=?,age=? WHERE id=?");
	smt.setString(1, firstname_22rp04987);
	smt.setString(2, lastname_22rp04987);
	smt.setInt(3, Integer.parseInt(age_22rp04987));
	smt.setInt(4, id_22rp04987);
	status= smt.executeUpdate();
	if(status>0){
		
		out.println("<script>");
		out.println("alert('employee Updated')");
		out.println("window.location.href='home.jsp'");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('employee not  updated try again')");
		out.println("window.location.href='update1.jsp'");
		out.println("</script>");
	}
		
}catch(Exception e){
	out.print("Error" + e.getMessage());
}finally{
	if(smt != null) try{smt.close();} catch(SQLException e){}
	if(conn != null) try{conn.close();} catch(SQLException e){}
}


%>
