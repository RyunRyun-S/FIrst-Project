<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/nav1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined"
	rel="stylesheet" >
 

 
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

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
.panel-body button{
	background: #483d8b;
	border: 1px solid #483d8b;
	font-size: 20px;
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
		<div class="panel panel-default">
			<div class="panel-heading"><h1>상품 등록</h1></div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/product/register" method="post" role="form">
					<div class="form-group">
						<label>글 번호</label>
						<input class="form-control" name="p_num" disabled="disabled">
					</div>
					<div class="form-group">
						<label>아이디</label>
						<input type="text" class="form-control" value="<sec:authentication property="principal.username"/>" name="p_id" disabled="disabled" >
					</div> 

					<div class="form-group" class="form-control">
						<label>카테고리</label>
						<select name='p_cate'>
							  <option value='' selected>-- 선택 --</option>
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
						<label>상품명</label>
						<input type="text" class="form-control" name="p_title" >
					</div>
					<div class="form-group">
						<label>상품 내용</label>
						<textarea class="form-control" name="p_content" rows="20"></textarea>
					</div>
					<div class="form-group">
						<label>메인 이미지</label>
						<input type="file" class="form-control" name="p_imgf" >
					</div>
					<div class="form-group">
						<label>디테일 이미지</label>
						<input type="file" class="form-control" name="p_imgl">
					</div>
					<div class="form-group">
						<label>상품 가격</label>
						<input class="form-control" name="p_price">
					</div>
					<div class="form-group">
						<label>상품 가격2</label>
						<input class="form-control" name="p_price2">
					</div>
					<div class="form-group">
						<label>상품 가격3</label>
						<input class="form-control" name="p_price3">
					</div>
					<select name='p_star'>
					  <option value='1' selected="selected">★</option>
					  <option value='2'>★★</option>
					  <option value='3'>★★★</option>
					  <option value='4'>★★★★</option>
					  <option value='5'>★★★★★</option>
					</select><br><br>
					<button type="submit" data-oper="register" class="btn btn-primary btn-block">등록</button>
					<button type="submit" data-oper="list" class="btn btn-primary btn-block">목록</button>

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
			
			if(operation === 'register'){
				
				formObj.attr("action", "/product/register");
				
			}else if(operation === 'list'){
				
				formObj.attr("action", "/product/list");
				formObj.attr("method", "get");
				
				
				formObj.empty();	
			}
			
			formObj.submit();
		});
	});
</script>

</html>
<%@ include file="../include/footer.jsp" %>