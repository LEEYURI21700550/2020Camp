<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${'Welcome to javaTpoint'}"/>
	<br>
	<c:set var="Income" scope="session" value="${4000*4}"/>  
	<c:out value="${Income}"/>  
	<br>
	
	<c:remove var="income"/>  
	<p>After Remove Value is: <c:out value="${income}"/></p> 
	<br>
	<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
	</c:catch>  
	  
	<c:if test = "${catchtheException != null}">  
    <p>The type of exception is : ${catchtheException} <br />  
    There is an exception: ${catchtheException.message}</p>  
	</c:if> 
	
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<c:if test="${income > 8000}">  
   		<p>My income is: <c:out value="${income}"/><p>  
	</c:if> 
	
	<c:set var="income" scope="session" value="${4000*2}"/>  
	<p>Your income is : <c:out value="${income}"/></p>  
	<c:choose>  
    <c:when test="${income <= 8000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
	</c:choose>  
	<br>
	<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
	</c:forEach>  
	<br>
	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">  
    <c:out value="${name}"/><p>  
	</c:forTokens>  
	
	<br>
	<c:url value="/RegisterDao.jsp"/>
</body>
</html>