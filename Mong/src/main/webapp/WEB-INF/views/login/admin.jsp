<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
	height: 100px;
	border-bottom: 2px solid gray;
	background: linear-gradient( to left, white, #6A5ACD );
}
.dropbtn {
  background: linear-gradient( to left, red, teal );
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


.tdb{
	padding-left: 200px;
	text-align:center;
	width: 90%;
	margin-left: 100px;
	margin-top: 100px;
	margin-bottom: 400px;
	
}

.h1-logo{
	float: left;
	
}
.h1-logo span{
	font-size: 50px;
	padding: 20px;
	color: white;

}
.rtop{
	float: right;
	margin: 30px;
}

.leftMenuA{
	border-bottom: 2px solid gray;
	background: linear-gradient( to bottom, pink, #8B008B );

	width: 100%;
	padding: 30px;
	font-size: 20px;
}
.leftMenuA div{
	padding: 3px;
}
.leftMenuT{
	clear: both;
	margin: 30px;
	width: 20%;
	text-align: center;
	float: left;
}
.leftMenuT span{
	font-size: 6em;
}

section {
  max-width: 500px;
}

details {
  	background: linear-gradient(to bottom, white, #ff66b2);
  padding: 20px;
  margin-bottom: 5px;
  margin-left: 200px;
}

summary {
  
  cursor: pointer;
  font-weight: bold;
  font-size: 20px;
}
.table{

	background: white;
	margin: 30px;
	border: 1px solid gray;
}
.table th:nth-child(2){
	width: 500px;
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
				<a href="/login/memberDelete">회원탈퇴</a> 
				<a href="/customLogout">로그아웃</a> 
			</div>
		</div>
	</div>
		
	<div class="leftMenuT">
		<div class="leftMenuA" >
			<span class="material-icons-outlined">face</span>
			<div>관리자</div>
			<div><sec:authentication property="principal.member.userName"/></div>
			<div><h3>마이크몽</h3></div>
			
		</div>

	</div>
	<form >
	<div class="tdb" >


		<details>
		  <summary>
		    회원정보
		  </summary>
			<table class="table">
				<tr>
					<th>사용자 이름</th>
					<th>아이디 </th>
					<th>가입일 </th>
				</tr>

				<c:forEach var="list" items="${list1 }">
				<tr>
					<td><c:out value="${list.userName }"></c:out> </td>
					<td><c:out value="${list.userid }"></c:out> </td>

					<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
				</tr>

				</c:forEach>
				
			</table>
		</details>

		<details>
		  <summary>
		    전체 구매 내역
		  </summary>
			<table class="table">
				<tr>
					<th>아이디</th>
					<th>상품명 </th>
					<th>금액 </th>
					<th>구매일자 </th>
				</tr>
		
				<c:forEach var="list" items="${list2 }">
				<tr>
					<td><c:out value="${list.c_id }"></c:out> </td>
					<td><c:out value="${list.c_title }"></c:out> </td>
					<td><c:out value="${list.c_price }"></c:out> </td>

					<td><fmt:formatDate value="${list.c_date}" pattern="yyyy-MM-dd"/></td>
				</tr>

				</c:forEach>
				
			</table>
		</details>

		<details>
		  <summary>
		    전체 상품 내역
		  </summary>
			<table class="table">
				<tr>
					<th>전문가 아이디</th>
					<th>상품명 </th>
					<th>등록 날짜 </th>
				</tr>
	
				<c:forEach var="list" items="${list3 }">
				<tr>
					<td><c:out value="${list.p_id }"></c:out> </td>
					<td><c:out value="${list.p_title }"></c:out> </td>

					<td><fmt:formatDate value="${list.p_date}" pattern="yyyy-MM-dd"/></td>
				</tr>

				</c:forEach>
				
			</table>
		</details>

	</div>
	</form>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
	
</body>
<script type="text/javascript">
	$(function(){
		var formObj = $("form");	
		
		$("button").click(function(e){	
			e.preventDefault();
			
			var operation = $(this).data("oper");
			
			if(operation === 'mem'){
				formObj.attr("action", "/member/list");
			}else if(operation === 'pro'){
				formObj.attr("action", "/product/list");
				formObj.attr("method", "get");

			}else if(operation === 'com'){
				formObj.attr("action", "/complete/list");
				formObj.attr("method", "get");

			}else if(operation === 'not'){
				formObj.attr("action", "/notice/list");
				formObj.attr("method", "get");

			
			formObj.submit();
		});
	});
</script>
</html>
<%@ include file="../include/footer.jsp" %>