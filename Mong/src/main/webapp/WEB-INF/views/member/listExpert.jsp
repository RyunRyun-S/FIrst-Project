<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(전문가)</title>
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

.topMy{
}
.h1-logo{
	float: left;
}
.h1-logo span{
	font-size: 2em;
	padding: 10px;
}
.rtop{
	float: right;
}
.leftMenu{
	clear: left;
}

.changeH{
	background: navy;
	border: navy;
	color: white;
	border-radius: 20px;
	
}

.leftMenuT{
	clear: both;
	margin: 30px;
	width: 20%;
	text-align: center;
	float: left;
}
.leftMenuA{
	border-bottom: 2px solid gray;
	background: skyblue;
	width: 100%;
}
.leftMenuA div{
	padding: 3px;
}
.leftMenuB{
	margin-top: 50px;
	clear: both;
	text-align: left;
	padding: 20px;
	
}
.leftMenuB div{
	padding: 4px;
	border-bottom: 1px solid gray;
}
.boardTable{
	float:left;
	width: 70%;
	padding: 100px;
}
.boardTable h3{
	background: lightgray;
}
.boardTable table td:nth-child(1){
	width: 80%;
}
.leftMenuT span{
	font-size: 6em;
}
</style>
</head>
<body>
	<div class="topMy">
		<div class="h1-logo">
			<a href="#"><span class="material-icons-outlined">pets</span>MongMong</a>
		</div>

		<div class="dropdown rtop">
			<button class="dropbtn">My MongMong</button>
			<div class="dropdown-content">
				<a href="#">프로필관리</a> 
				<a href="#">찜!!!</a> 
				<a href="#">로그아웃</a> 
			</div>
		</div>
	</div>
	<div class="leftMenuT">
		<div class="leftMenuA" >
			<span class="material-icons-outlined">face</span>
			<div>의뢰인</div>
			<div>강렬한나무2345</div>
			<div><h3>마이크몽</h3></div>
			
		</div>
		<div class="leftMenuB">
	
			<div class=""><a href="#">접수 된 주문</a></div>
			<div class=""><a href="#">완료 된 주문</a></div>
			<div class=""><a href="#">구매중인 주문</a></div>
			<div class=""><a href="#">결제 내역</a></div>
		</div>
	</div>
	<div class="boardTable" >
		<br>
		<h3>☆ 1:1 문의(전문가) ☆</h3>
		<table class="table">
			<tr>
				<th>제목 </th>
				<th>날짜 </th>
			</tr>
			<tr> 
				<td>문의합니다 </td>
				<td>21.22.22 </td>
			</tr>
			<tr> 
				<td>문의합니다 </td>
				<td>21.22.22 </td>
			</tr>
			<tr> 
				<td>문의합니다 </td>
				<td>21.22.22 </td>
			</tr>
		</table>
		<br>
		<h3>☆ 1:1 문의(관리자) ☆</h3>
		<table class="table">
			<tr>
				<th>제목 </th>
				<th>날짜 </th>
			</tr>
			<tr> 
				<td>문의합니다 </td>
				<td>21.22.22 </td>
			</tr>
			<tr> 
				<td>문의합니다 </td>
				<td>21.22.22 </td>
			</tr>
			<tr> 
				<td>문의합니다 </td>
				<td>21.22.22 </td>
			</tr>
		</table>
	</div>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
	
</body>
</html>