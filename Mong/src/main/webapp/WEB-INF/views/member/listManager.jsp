<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(관리자)</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined"
	rel="stylesheet" >

<style type="text/css">
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
}
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none;}

.topMy{
	height: 60px;
	border-bottom: 2px solid gray;
}
.dropbtn {
  background-color: green;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  float: right;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}


.tdb{
	text-align:center;
	height: 600px;
	width: 70%;
	margin: 150px;
}
.tdb td{
	border: 1px solid black;
	
}
.tdb button{
	
}
.h1-logo{
	float: left;
}
.h1-logo span{
	font-size: 2em;
	padding: 10px;
}
</style>
</head>
<body>

	<form >
	<div class="topMy">
		<div class="h1-logo">
			<a href="#"><span class="material-icons-outlined">pets</span>MongMong</a>
		</div>

		<div class="dropdown rtop">
			<button class="dropbtn">My MongMong</button>
			<div class="dropdown-content">
				<a href="/login/memberUpdate">프로필관리</a> 
				<a href="/login/memberDelete">회원탈퇴</a> 
				<a href="/customLogout">로그아웃</a>
			</div>
		</div>
	</div>
	<table class="tdb" style="border: 1px solid black;">

		<tr> 
			<td rowspan="3">회원관리 </td>
			<td rowspan="2">전문가 </td>
			<td ><button href="">총 구매 내역</button> </td>
		</tr>
		<tr> 
			<td ><button href="">총 접수 내역</button> </td>
		</tr>
		<tr> 
			<td >일반 회원 </td>
			<td ><button>총 구매 내역</button> </td>
		</tr>
		<tr> 
			<td rowspan="2">1:1문의 </td>
			<td >전문가 </td>
			<td ><button>답변 대기</button> </td>
		</tr>
		<tr> 
			<td >일반 회원 </td>
			<td ><button>답변 대기</button> </td>
		</tr>
		<tr>
			<td><button>공지사항 관리</button> </td>
		</tr>
		<tr>
			<td><button>카테고리 관리</button> </td>
		</tr>

	</table>
	</form>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
	
</body>
</html>