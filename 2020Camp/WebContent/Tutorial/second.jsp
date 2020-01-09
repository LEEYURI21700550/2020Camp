<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%   
  
String name=(String)session.getAttribute("user");  
out.print("Hello "+name);  
  
%> 
</body>
</html>