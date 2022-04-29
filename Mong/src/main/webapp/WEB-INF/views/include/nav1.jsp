<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined"
	rel="stylesheet" >
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	font-family: 'Montserrat', sans-serif;
}

 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none;}

.header1{
	width: 100%;
	height: 100px;
	background: linear-gradient( to left, white, #6A5ACD );
}
.logo{
	float: left;
	padding-top: 5px;
	height: 40px;
	margin-left: 20px;
}
.logo span{
	font-size: 45px;
	padding-left: 20px;
	color: white;
}
.logo a{
	padding-top: 100px;
	width: 500px;
}
.login{
	padding-top: 10px;
	padding-right:10px;
	float: right;
	font-size: 18px;
}

#mo{
	font-size: 15px;
	color: white;
	margin-left: -14px;
}
</style>
</head>
<body>
		<div class="header1">
			<div class="logo">
				<a href="/product/mainlist"><span class="material-icons-outlined">pets</span><br><span id="mo">MongMong</span></a>
			</div>
			<div class="login">
				
			
				
				<sec:authorize access="isAnonymous()">
					<a href="/customLogin">로그인</a>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					| <a href="/login/userRegister">회원가입</a>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					 <a href="/customLogout">로그아웃</a>
				</sec:authorize>
				
				
				<sec:authorize access="hasRole('ROLE_USER')">
					| <a href="/login/all">MyPage</a>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_MEMBER')">
					| <a href="/login/member">전문가Page</a>
				</sec:authorize>

				<sec:authorize access="hasRole('ROLE_ADMIN')">
 					| <a href="/login/admin">관리자Page</a>
				</sec:authorize>

		
			</div>
		</div>
</body>
</html>