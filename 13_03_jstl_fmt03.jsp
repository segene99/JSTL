<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internalization</title>
</head>
<body>
<%-- 	<% Date now = new Date(); %> --%>
	<p><jsp:useBean id="now" class="java.util.Date"/></p>
	<p><fmt:formatDate value="${now}" type="date"/></p>
	<p><fmt:formatDate value="${now}" type="time"/></p>
	<p><fmt:formatDate value="${now}" type="both"/></p>
	
	<p>default:<fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/></p>
	<p>short:<fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></p>
	<p>medium:<fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></p>
	<p>long:<fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></p>
	<p>full:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
	<p>pattern:<fmt:formatDate value="${now}" type="both" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초 E요일"/></p>
	
</body>
</html>