<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	Welcome, ${ param.name } <br>
	Hello, ${cookie.name.value} <br>
	Value is ${ sessionScope.user } <br>


</body>
</html>