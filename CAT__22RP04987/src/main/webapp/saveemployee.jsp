<%@ page import="java.sql.*" %>
<%! 
String driver="com.mysql.cj.jdbc.Driver";


String url="jdbc:mysql://localhost:3306/emp_22rp04987";
String user="root",pass="";


String firstname_22rp04987,lastname_22rp04987,age_22rp04987;
int status;
Connection conn;
PreparedStatement smt;

%>
<% 
firstname_22rp04987=request.getParameter("firstname");
lastname_22rp04987=request.getParameter("lastname");
age_22rp04987=request.getParameter("age");

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url,user,pass);
	smt=conn.prepareStatement("INSERT INTO employees(firstname,lastname,age) VALUES(?,?,?)");
	
	smt.setString(1, firstname_22rp04987);
	smt.setString(2, lastname_22rp04987);
	smt.setString(3, age_22rp04987);
	
	status=smt.executeUpdate();
	
	if(status > 0 ){
		
		out.println("<script>");
		out.println("alert('employee inserted')");
		out.println("window.location.href='home.jsp'");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('employee not  inserted try again')");
		out.println("window.location.href='addemployee.jsp'");
		out.println("</script>");
	}}
catch(Exception e){
	{
		out.println("Error" + e.getMessage());
	}

}


%>