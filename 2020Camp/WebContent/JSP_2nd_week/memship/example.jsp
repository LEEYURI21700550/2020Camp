<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="com.hello.MemberBean" />
    <jsp:setProperty property="*" name="member" />
    <%
        //동일한 요청에 의해 실행되는 페이지 간에 정보를 유지하기 위해 HttServletRequest 객체에 등록 합니다.
        request.setAttribute("member", member);
         
        //클라이언트 단위로 정보를 유지하고자 할 때 HttpSession 객체에 등록합니다.
        //session.setAttribute("member", member);
         
        //웹 애플리케이션 단위로 정보를 유지하고자 할 때 ServletContext객체에 등록합니다.
        //application.setAttribute("member", member); 
    %>
    <jsp:forward page="meminfo.jsp" />
</body>
</html>