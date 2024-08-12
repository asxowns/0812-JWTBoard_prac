<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
</head>
<body>
<h1>메인페이지</h1>
<a href="signup">회원가입</a><br>
<c:if test="${username ne null}">
<a href="login">로그인</a>
</c:if>
<c:if test="${username eq null}">
<a href="login">${username}</a>
</c:if>
</body>
</html>