<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



<%@ page import="java.util.Date" %>  
Today is: <%= new Date() %> 

<br>

<%@ page info="composed by Sonoo Jaiswal" %>  
Today is: <%= new java.util.Date() %>

<br>

<%@ page buffer="16kb" %>  
Today is: <%= new java.util.Date() %>
<br>
<%@ page isErrorPage="true" %>  
  
 Sorry an exception occured!<br/>  
The exception is: <%= exception %>  

</body>
</html>