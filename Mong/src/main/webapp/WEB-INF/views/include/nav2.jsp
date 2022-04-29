<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
*{
font-family: 'Montserrat', sans-serif;
}
.header3 {
	height: 100px;
	padding: 10px;
	padding-top: 15px;
	text-align: center;
	border: 3px solid gray;
}


.header3 table{
	width: 100%;
	height: 80px;
}
.header3 td{
	padding-left: 25px;
	padding-right: 25px;
	height: 30px;
	
	
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
.h31 td{
	height: 45px;
}

</style>
</head>
<body>
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
</body>
</html>