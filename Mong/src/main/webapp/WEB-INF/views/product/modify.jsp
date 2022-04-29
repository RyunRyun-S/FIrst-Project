<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/nav1.jsp" %>
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
	font-size: 20px;
	font-family: 'Montserrat', sans-serif;
}
.row{
	padding: 200px;
	padding-right: 250px;
}
.col-lg-12{
	border: 4px solid gray;
	margin: 50px;
	padding:50px;
	border-radius: 30px;

}
.row input{
	font-size: 20px;
}
.btn-primary{
	background: #483d8b;
	border: 1px solid #483d8b;
	font-size: 40px;
	height: 40px;
}
.btn-primary:hover{
	background: white;
	color: black;
	border: 1px solid #483d8b;
	font-size: 20px;
}
.form-group{
	margin: 20px;
}
</style>
</head>

<body>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">상품 수정/삭제</h1>
	</div>
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading"></div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/product/modify" method="post">
					<div class="form-group">
						<label>글 번호</label>
						<input class="form-control" name="p_num" value='<c:out value="${pro.p_num }"/>' readonly="readonly">
					</div>
					<div class="form-group">
						<label>아이디</label>
						<input class="form-control" name="p_id" value='<c:out value="${pro.p_id }"/>' readonly="readonly">
					</div> 
					<div class="form-group">
						<label>상품명</label>
						<input class="form-control" name="p_title" value='<c:out value="${pro.p_title }"/>'>
					</div>
					<div class="form-group">
						<label>카테고리</label>
						<select name='p_cate'>
							  <option value='<c:out value="${pro.p_cate }"/>' selected><c:out value="${pro.p_cate }"/></option>
							  <option value='1'>레슨★실무교육</option>
							  <option value='2'>주문제작</option>
							  <option value='3'>디자인</option>
							  <option value='4'>영상★사진</option>
							  <option value='5'>IT★프로그래밍</option>
							  <option value='6'>번역★통역</option>
							  <option value='7'>마케팅</option>
							  <option value='8'>문서★글쓰기</option>
						</select>
					</div>
					<div class="form-group">
						<label>상품 내용</label>
						<textarea class="form-control" name="p_content" rows="20"><c:out value="${pro.p_content }"/></textarea>
					</div>
					<div class="form-group">
						<label>메인 이미지</label>
						<input class="form-control" name="p_imgf" value='<c:out value="${pro.p_imgf }"/>'>
					</div>
					<div class="form-group">
						<label>디테일 이미지</label>
						<input class="form-control" name="p_imgl" value='<c:out value="${pro.p_imgl }"/>'>
					</div>
					<div class="form-group">
						<label>상품 가격1</label>
						<input class="form-control" name="p_price" value='<c:out value="${pro.p_price }"/>'>
					</div>
					<div class="form-group">
						<label>상품 가격2</label>
						<input class="form-control" name="p_price2" value='<c:out value="${pro.p_price2 }"/>'>
					</div>
					<div class="form-group">
						<label>상품 가격3</label>
						<input class="form-control" name="p_price3" value='<c:out value="${pro.p_price3 }"/>'>
					</div>
					<select name='p_star'>
					  <option value='1' selected="selected">★</option>
					  <option value='2'>★★</option>
					  <option value='3'>★★★</option>
					  <option value='4'>★★★★</option>
					  <option value='5'>★★★★★</option>
					</select><br><br>		
					<input type="hidden"  name="p_date" value='<c:out value="${pro.p_date }"/>' readonly="readonly">
					<button type="submit" data-oper="modify" >글 수정</button>
					<button type="submit" data-oper="remove">글 삭제</button>
					<button type="submit" data-oper="list" >목록</button>
					
				</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</body>
<script type="text/javascript">
	$(function(){
		var formObj = $("form");	
		
		$("button").click(function(e){	
			e.preventDefault();
			
			var operation = $(this).data("oper");
			
			if(operation === 'remove'){
				formObj.attr("action", "/product/remove");
			}else if(operation === 'list'){
				formObj.attr("action", "/product/plist");
				formObj.attr("method", "get");

				formObj.empty();	
			}else if(operation === 'modify'){
				formObj.attr("action", "/product/modify");
				formObj.attr("method", "post");

			}
			
			formObj.submit();
		});
	});
</script>

</html>

<%@ include file="../include/footer.jsp" %>