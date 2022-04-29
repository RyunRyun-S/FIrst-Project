<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined"
	rel="stylesheet" >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<title>main</title>
<style type="text/css">


/*header1 시작*/
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	font-family: 'Montserrat', sans-serif;
}

 h12-logo a:link { color: white; text-decoration: none;}
 h12-logo a:visited { color: white; text-decoration: none;}
 h12-logo a:hover { color: white; text-decoration: none;}

.header1{
	width: 100%;
	height: 80px;
	background: linear-gradient( to left, white, #6A5ACD );
}
.h12-logo{
	float: left;
	padding-top: 5px;
	padding-left: 3em;
	width: 100px;
	height: 40px;
	color: white;
}
.h12-logo span{
	font-size: 3em;
	padding-left: 12px;
	color: white;
}
.h12-logo a{
	padding-top: 0.3em;
	font-size: 15px;
	color: white;
}
.h12-login{
	font-size: 15px;
	padding-top: 10px;
	padding-right:10px;
	float: right;
}
.h12-login a{
	color: white;
	}
.header2{
	text-align: center;
	padding: 170px;
	background: linear-gradient( to left, white, #6A5ACD );
}
.h31 span{
	font-size: 35px;
}
.h31 span:hover{
	font-size: 40px;
	color: red;
}
.h32{
	font-size: 20px;
	
}

#hin{
	border: 2.5px solid black;
	height: 70px;
	width: 600px;
	font-size: 2em;
}
.material-icons-outlined{
	font-size: 100px;
}
#heap1{
	font-size: 15px;
}
#heap2{
	font-size: 40px;
}

.header3 {
	height: 100px;
	padding: 10px;
	padding-top: 15px;
	text-align: center;
	border-bottom: 3px solid gray;
	border-radius: 50px;
}


.header3 table{
	width: 100%;
	height: 30px;
}
.header3 td{
	padding-left: 25px;
	padding-right: 25px;
}

.search{
	font-size: 2em;
	margin: 5px;
	margin-left: 70px;
}
.search span{
	font-size: 3em;
    margin-top: 10px;
}
.search a:hover{
	cursor: pointer;
}
.search span:hover{
	color: red;

}
.h31 td{
	height: 45px;
}
</style>
<script type="text/javascript">
function formSubmit(){
		document.getElementById("frm1").submit();
	}
</script>
</head>

<body>
	<!-- headerT 시작 -->
	<div class="headerT">
		<!-- header1 시작 -->
		<div class="header1">
			<div class="h12-logo">
				<a href="/product/mainlist"><span class="material-icons-outlined">pets</span>MongMong</a>
			</div>
			<div class="h12-login">
				
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
		<!-- header1 끝 -->
		<!-- header2 시작 -->
		<div class="header2">
			<p id="heap1">212만건의 거래, 98.6%의 만족도 </p>
			<p id="heap2">프리랜서 마켓 NO.1,<span class="mong">Mong</span> <span class="material-icons-outlined">hotel_class</span> </p>
			<form action="/product/prolist" method="get" id="frm1">
			<div class="search" >
				<input id="hin" type="text" name="keyword">
				<a onclick="formSubmit(); return false;"><span class="material-icons-outlined">search</span>
				</a> 
			</div>
			</form>
		</div>
		<!-- header2 끝 -->
		<!-- header3 시작 -->
		<div class="header3">
			<table>
				<tr class="h31">
					<td><a href="/product/catelist1"><span class="material-icons">cases</span></a> </td>
					<td><a href="/product/catelist2"><span class="material-icons">vpn_key</span></a> </td>
					<td><a href="/product/catelist3"><span class="material-icons">draw</span></a> </td>
					<td><a href="/product/catelist4"><span class="material-icons">local_see</span></a> </td>
					<td><a href="/product/catelist5"><span class="material-icons">laptop_chromebook</span></a> </td>
					<td><a href="/product/catelist6"><span class="material-icons">text_fields</span></a> </td>
					<td><a href="/product/catelist7"><span class="material-icons">contact_phone</span></a> </td>
					<td><a href="/product/catelist8"><span class="material-icons">edit</span></a> </td>
				<tr>
				
				<tr class="h32">
					<td><b>레슨★실무교육</b> </td>
					<td><b>주문제작</b> </td>
					<td><b>디자인 </b></td>
					<td><b>영상★사진 </b></td>
					<td><b>IT★프로그래밍 </b></td>
					<td><b>번역★통역 </b></td>
					<td><b>마케팅 </b></td>
					<td><b>문서★글쓰기 </b></td>
				<tr>
			</table>
		</div>
		<!-- header3 끝 -->
	</div>
		<!-- headerT 끝 -->
 
        
        <!-- 기존 제이쿼리를 버리고 새 제이쿼리 추가 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>