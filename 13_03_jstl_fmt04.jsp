<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>	
<body>
	<jsp:useBean id="now" class="java.util.Date" />
	<p>Seoul : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
	
	<p><fmt:timeZone value="America/New_York">
	<p>NewYork : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
	</fmt:timeZone></p>
	
	<p><fmt:timeZone value="Europe/London">
	<p>London : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
	</fmt:timeZone></p><br><hr>
	
	<h3>setTimeZone 태그 사용</h3>
	<p>한국(대한민국 표준시) :
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /></p>
	
	<p><fmt:setTimeZone value="GMT-5" />
	뉴욕(그리니치 표준시간 -5) :
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /></p>
	
	<p><fmt:setTimeZone value="GMT" />
	런던(그리니치 표준 시간) :
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /></p>
	
</body>
</html>