<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add employee</title>
</head>
<body>
<h1>ADD NEW EMPLOYEE</h1>
<form action="saveemployee.jsp" method="post">
<label>FIRSTNAME</label><input type="text" name="firstname"><br>
<label>LASTNAME</label><input type="text" name="lastname"><br>
<label>AGE</label><input type="text" name="age"><br>
<input type="submit" value="Add">

</form>
</body>
</html>