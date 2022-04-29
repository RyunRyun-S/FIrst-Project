<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(일반)</title>
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
	padding-top: 30px;
	height: 100px;
	background: linear-gradient( to left, white, #6A5ACD );
	border-bottom: 2px solid gray;
}
.dropbtn {
  	background: linear-gradient( to left, lightgreen, green );
 	color: white;
	padding: 18px;
  	font-size: 20px;
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
	margin-bottom: 30px;
}
.h1-logo span{

	font-size: 45px;
	padding-left: 15px;
	color: white;


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
	background: linear-gradient( to bottom, white, skyblue );
	width: 100%;
	padding: 30px;
	font-size: 20px;
}
.leftMenuA div{
	padding: 10px;
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
	width: 60%;
}
.leftMenuT span{
	font-size: 120px;
}
#himg{
	width: 80px;
	height: 60px;
}
.heart{
	padding: 0;
	border: none;
	background: none;
	margin-top: 10px;
}

</style>
</head>
<body>
	<div class="topMy">
		<div class="h1-logo">
			<a href="/product/mainlist"><span class="material-icons-outlined">pets</span></a>
		</div>

		<div class="dropdown rtop">
			<button class="dropbtn">My MongMong</button>
			<div class="dropdown-content">
				<a href="/login/memberUpdate">프로필관리</a> 
				<a href="/login/memberDelete" >회원탈퇴</a> 
				<a href="/customLogout">로그아웃</a> 
			</div>
		</div>

	</div>
	<div class="leftMenuT">
		<div class="leftMenuA" >
			<span class="material-icons-outlined">face</span>
			<div>의뢰인</div>
			<div><sec:authentication property="principal.member.userName"/> </div>
			<form method="post" action="/login/authUpdate">
			<div><button type="submit" class="changeH">↔ 전문가로 전환</button> </div>
			<input type="hidden" name="auth" value="ROLE_MEMBER">
			</form>
			<div><h3>마이크몽</h3></div>
			
		</div>
		

	</div>
	<div class="boardTable" >
		<br>
		<h3>☆ 결제 완료 ☆</h3>
		<table class="table">
			<tr>
				<th>상품명 </th>
				<th>금액 </th>
				<th>날짜 </th>
			</tr>
				<c:forEach var="list" items="${list }">
				<tr>
					<td><c:out value="${list.c_title }"></c:out> </td>
					<td><c:out value="${list.c_price }"></c:out> </td>

					<td><fmt:formatDate value="${list.c_date}" pattern="yyyy-MM-dd"/></td>
				</tr>

				</c:forEach>
				
		</table>

				
		<br>
		<h3>☆ 찜♥ ☆</h3>
		<table class="table">
			<tr>
				<th>제목 </th>
				<th> </th>
				<th>날짜 </th>
				<th>삭제</th>
			</tr>
				<c:forEach var="list" items="${list2 }">
				<tr>
					<td><c:out value="${list.h_title }"></c:out> </td>
					<td><img id="himg" src="../resources/img/<c:out value="${list.h_img }"></c:out>"> </td>

					<td><fmt:formatDate value="${list.h_date}" pattern="yyyy-MM-dd"/></td>
					<td>
					<form>
					<button id="heartAt" class="heart"><span class="material-icons-outlined">favorite_border</span></button> 
					<input type="hidden" id="h_num" value="${list.h_num }">
					</form>
					</td>
					
				</tr>

				</c:forEach>
		</table>
	</div>
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
	
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/heart.js"></script>
<script type="text/javascript">

$("#heartAt").on("click",function(e){
	var h_num = $('#h_num').val();

	heartService.remove(h_num, function(count){
		console.log(count);
		
		if(count === "success"){
			alert("찜이 해제되었습니다!!!");
		}
		}, function(err){
			alert("error...");
	});
});

</script>

</html>
