<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.ddd{
	padding-top: 80px;
	text-align: center;
	background: linear-gradient( to bottom, white, #483D8B );
	width: 400px;
	font-size: 30px;
	margin: 250px;
	margin-left: 750px;
	height: 250px;
	border-radius: 30px;
}
.ddd input{
	border: none;
	font-size: 20px;
	margin: 30px;
}
#btm{
	background: #483d8b;
	border: 1px solid #483d8b;
	color: white;
	margin: 10px;
	border-radius: 15px;
	padding: 5px;
}
#btm:hover{
	background: white;
	color: black;
	border: 1px solid #483d8b;
	border-radius: 15px;
	padding: 5px;
}
</style>
</head>
<body>
	<div class="ddd">
	<form action="/login/memberDelete" method="post">
		<div><input type="text" name="userid" value=" <sec:authentication property='principal.username'/>" readonly="readonly"/></div>
		<div>탈퇴 하시겠습니까?</div>
		<div><input type="submit" id="btm" value="회원탈퇴"></div>
	</form>
	</div>
</body>
</html>