<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c 태그</title>
</head>
<body>
	c:out을 사용하는 이유 https://2ham-s.tistory.com/274
	<h2>c:set태그 - 변수의 값을 설정(setAttribute 와 동일한 역할을 한다.)</h2>
	<c:set var="num" value="50" />
	<%-- 	<c:set var="num">50</c:set> --%>
	<%-- 	<c:set var="num" value="50" scope="page"/> --%>
	num값은 : ${num}
<%-- 	표현언어 형식 ${ } --%>
	<br>
	<hr>

	<h2>c:out태그 - 변수의 값을 출력</h2>
	<c:out value="${num}" default="0"></c:out>
	<c:out value="작성자" default="Admin"></c:out>
	<c:out value="hello world!!!!!!!"></c:out>
	</br>
	<hr>

	<h2>c:forEach태그 - 반복문 수행</h2>
	범위안에서 반복문을 수행한다. for와 동일한 역할을 한다.
	<br>
	<br>
	<c:out value="수식: resNum = {(i+num-2)%7}" />
	<br>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:set var="resNum" value="${(i+num-2)%7}"></c:set>
		<c:out value="num: ${num}" /> <!-- 50 -->
		<c:out value="i: ${i}" /> <!-- 1, 2, ... -->
		<c:out value="resNum: ${resNum}" /> <!-- 0,1, ... -->
		<br>
	</c:forEach>
	<%-- <% for(int i=0; i<10;i++){  }%> --%>


	
	<hr>

	<h2>c:if태그 - 조건문 수행</h2>
	조건문을 수행한다. if와 동일한 역할을 한다.
	<br>
	<jsp:useBean id="memberBean" class="com.dto.MemberBean" />
	
	<!-- 	name은 getName() 그래서 getter 호출임 -->
	<c:if test="${memberBean.name eq '이루마' }">
		<p>이름은 ${memberBean.name}입니다.</p>
	</c:if>
	<hr>

	<h2>c:choose / c:when태그 - 조건문 수행</h2>
	if, else 구문 역할을 한다.
	<br>
	<c:choose>
		<c:when test="${memberBean.name eq '김남규' }">
			<p>이름은 ${memberBean.name}입니다.</p>
		</c:when>
		<c:when test="${memberBean.name eq '오지은' }">
			<p>이름은 ${memberBean.name}입니다.</p>
		</c:when>
		<c:otherwise>
			<p>이름은 ${memberBean.name}입니다.</p>
		</c:otherwise>
	</c:choose>
</body>
</html>