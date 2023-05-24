<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/teacher/join">가입하기</a>

<form action="/teacher/login">
id<input type="text" name="teacherid">
pwd<input type="password" name="pwd">
<input type="submit" value="로그인">
</form>

${sessionScope.loginId }로 로그인됨

<c:forEach var="vo" items="${list }">
teacherid: ${vo.teacherid }<br/>
name: ${vo.name }<br/>
pwd: ${vo.pwd }<br/>
phone: ${vo.phone }<br/>
classnum: ${vo.classnum }<br/>
profile: ${vo.profile }<br/>

<c:if test="${ sessionScope.loginId == vo.teacherid}">
<a href="/teacher/mypage?teacherid=${sessionScope.loginId }">마이페이지</a>
</c:if>
<br/>
</c:forEach>

</body>
</html>