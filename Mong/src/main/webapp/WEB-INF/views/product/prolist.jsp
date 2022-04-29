<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/nav1.jsp" %>
<%@ include file="../include/nav2.jsp" %>
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
 
.gridC{
	display: grid;
	grid-template-columns: auto auto auto;
	padding: 10%;
	width: 100%;
	padding-left: 10em;
	

	
}
.gridC img{
	margin: 1em;
	background: pink;
	width: 28em;
	border-radius: 30px;
	border: 2px solid gray;
}
.gridC p{
	padding: 0 1em;
	margin: 0 1em;
	width: 17em;

}
.gridC p:nth-child(3){
	text-align: right;	
}
.gridD{
	margin: 1em;
}
.ttt{
	margin: 1em;
}
.sstar{
	font-size: 1.2em;
	color: orange;
}
</style>
</head>
<body>
	<div class="gridC">
		<c:forEach var="pro" items="${list }">
		<div class="gridD">
			<a href='/product/proDetail?p_num=<c:out value="${pro.p_num}"/>'>
				<img src="../resources/img/<c:out value="${pro.p_imgf }"/>"> 
			</a>
			<div class="ttt">
			<b><c:out value="${pro.p_title }"></c:out> </b><br>
			<b><c:out value="${pro.p_price }"></c:out>원~</b>
			<b><span class="sstar">★</span> | <c:out value="${pro.p_star }"></c:out></b>
			</div>
		</div>
		</c:forEach>
	</div>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
</body>

</html>
<%@ include file="../include/footer.jsp" %>