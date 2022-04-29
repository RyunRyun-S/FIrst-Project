<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/nav1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
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
	font-size: 20px;
	font-family: 'Montserrat', sans-serif;
}
.total{
	border: 4px solid gray;
	margin: 210px;
	padding:50px;
	border-radius: 30px;
	width: 78%;
}
.call{
	font-size: 40px;
	padding-bottom: 30px;
}
.total button{
	font-size: 20px;
	background: #483d8b;
	border: 1px solid #483d8b;
	color: white;
	border-radius: 5px;
	height: 40px;
	margin-top: 20px;
	width: 80px;
}
.total button:hover{
	color: white;
	background: #0080FF;
}
.form-group input,label{
	margin: 10px;
}
</style>
</head>
<body>
	<div class="total">
		<div class="call">
			<h1 class="page-header">상품 수정/삭제</h1>
		</div>
		<form>
			<div class="form-group">
				<label>글 번호</label>
				<input class="form-control" name="p_num" value='<c:out value="${pro.p_num }"/>' readonly="readonly">
			</div>
			<div class="form-group">
				<label>ID</label>
				<input class="form-control" name="p_id" value='<c:out value="${pro.p_id }"/>' readonly="readonly">
			</div>
			<div class="form-group">
				<label>카테고리</label>
				<input class="form-control" name="p_cate" value='<c:out value="${pro.p_cate }"/>' readonly="readonly">
			</div>
			<div class="form-group">
				<label>상품명</label>
				<input class="form-control" name="p_title" value='<c:out value="${pro.p_title }"/>' readonly="readonly">
			</div>
			<div class="form-group">
				<label>글 내용</label>
				<textarea class="form-control" name="p_content" rows="20" readonly="readonly" ><c:out value="${pro.p_content }"/> </textarea>
			</div>
			<div class="form-group">
				<label>상품가격1</label>
				<input class="form-control" name="p_price"  readonly="readonly" value="<c:out value="${pro.p_price }"/>">
			</div>
			<div class="form-group">
				<label>상품가격2</label>
				<input class="form-control" name="p_price2"  readonly="readonly" value="<c:out value="${pro.p_price2 }"/>">
			</div>
			<div class="form-group">
				<label>상품가격3</label>
				<input class="form-control" name="p_price3"  readonly="readonly" value="<c:out value="${pro.p_price3 }"/>">
			</div>
			<div class="form-group">
				<label>상품가격3</label>
				<input class="form-control" name="p_star"  readonly="readonly" value="<c:out value="${pro.p_star }"/>">
			</div>
			<button data-oper="mod">수정</button>
			<button data-oper="wri">글쓰기</button>
			<button data-oper="list">목록</button>
			

		</form>
		<form action="/product/modify" method="get" id="operForm">
			<input id="bno" type="hidden" name="p_num" value='<c:out value="${pro.p_num }"/>' />
		</form>
	</div>
	

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	var formObj = $("form");
	var operForm = $("#operForm");
	
	$("button").click(function(e){	
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		if(operation === 'mod'){
			formObj.attr("action", "/product/modify");
			
		}else if(operation === 'wri'){
			formObj.attr("action", "/product/register");
			formObj.attr("method", "get");
			
		}else if(operation === 'list'){
			operForm.find("#bno").remove();
			formObj.attr("action", "/product/plist");
			

		}
		
		// form 태그 전송(register or remove)
		formObj.submit();
	});
});


</script>



</html>
<%@ include file="../include/footer.jsp" %>