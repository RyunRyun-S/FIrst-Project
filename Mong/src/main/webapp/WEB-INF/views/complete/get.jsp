<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complete get</title>
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
.col-md-8 a:link { color: gray; text-decoration: none;}
.col-md-8 a:visited { color: gray; text-decoration: none;}
.col-md-8 a:hover { color: gray; text-decoration: none;}


.total{
	padding: 25px;
	width: 100%;
}
.notice{
	width: 100%;
	height: 100px;
	padding-top:40px;
	text-align: center;
	color: gray;	
	font-size: 1.2em;
}
.notice1{
	width: 100%;
	height: 30px;
	padding-top:40px;
	text-align: center;
	color: gray;	
	font-size: 0.8em;
}
.dana{
	width: 100%;
	height: 100px;
	padding-top:40px;
	text-align: center;
	color: gray;	
	font-size: 1.2em;
}



.table th{
	text-align: center;
}
.table td{
	font-size: 0.9em;
	color: gray;
}

.table td:nth-child(1) {
	text-align:center;
	width: 5em;
}
.table td:nth-child(2) {
	text-align:left;
	padding-left: 3em;
}
.table td:nth-child(3) {
	text-align:center;
	width: 8em;
}
.table td:nth-child(4) {
	width: 8em;
}

</style>
</head>
<body>
	<div class="total">
		<form>
		<div class="form-group">
			<label>글 번호</label>
			<input class="form-control" name="c_num" value='<c:out value="${com.c_num }"/>' readonly="readonly">
		</div>
		<div class="form-group">
			<label>상품 이름</label>
			<input class="form-control" name="c_title" value='<c:out value="${com.c_title }"/>' readonly="readonly">
		</div>
		<div class="form-group">
			<label>가격</label>
			<textarea class="form-control" name="c_price" rows="3" readonly="readonly"><c:out value="${com.c_price }"/></textarea>
		</div>
		<div class="form-group">
			<label>작성자</label>
			<input class="form-control" name="c_id" value='<c:out value="${com.c_id }"/>' readonly="readonly">
		</div>
		<button data-oper="mod">수정</button>
		<button data-oper="wri">글쓰기</button>
		<button data-oper="list">목록</button>

		</form>
		<form action="/complete/modify" method="get" id="operForm">
			<input id="bno" type="hidden" name="c_num" value='<c:out value="${com.c_num }"/>' />
		</form>
	</div>
	

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
</body>
<script type="text/javascript">
$(function(){
	var formObj = $("form");
	var operForm = $("#operForm");
	
	$("button").click(function(e){	
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		if(operation === 'mod'){
			formObj.attr("action", "/complete/modify");
			
		}else if(operation === 'wri'){
			formObj.attr("action", "/complete/register");
			formObj.attr("method", "get");
			
		}else if(operation === 'list'){
			operForm.find("#bno").remove();
			formObj.attr("action", "/complete/list");
			

		}
		
		// form 태그 전송(register or remove)
		formObj.submit();
	});
});


</script>



</html>
<%@ include file="../include/footer.jsp" %>