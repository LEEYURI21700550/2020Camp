<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="process.jsp">  
	Enter Name:<input type="text" name="name" /><br/><br/>  
	<input type="submit" value="go"/>  
	</form> 
	<br>
	
	
	<h3>welcome to index page</h3>  

	<%  
	session.setAttribute("user","sonoo");  
	%>  
	  
	<a href="process.jsp">visit</a>  
	
	<br>



</body>
</html>