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
        //������ ��û�� ���� ����Ǵ� ������ ���� ������ �����ϱ� ���� HttServletRequest ��ü�� ��� �մϴ�.
        request.setAttribute("member", member);
         
        //Ŭ���̾�Ʈ ������ ������ �����ϰ��� �� �� HttpSession ��ü�� ����մϴ�.
        //session.setAttribute("member", member);
         
        //�� ���ø����̼� ������ ������ �����ϰ��� �� �� ServletContext��ü�� ����մϴ�.
        //application.setAttribute("member", member); 
    %>
    <jsp:forward page="meminfo.jsp" />
</body>
</html>