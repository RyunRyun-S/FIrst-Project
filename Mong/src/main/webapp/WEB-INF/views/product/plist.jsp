<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/nav1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 전체 list</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

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
	font-family: 'Montserrat', sans-serif;
}
.col-md-8 a:link { color: gray; text-decoration: none;}
.col-md-8 a:visited { color: gray; text-decoration: none;}
.col-md-8 a:hover { color: gray; text-decoration: none;}


.total{
	padding: 25px;
	width: 100%;
	padding-top: 100px;
	padding-bottom: 200px;

}
.notice{
	width: 100%;
	height: 300px;
	padding-top:100px;
	text-align: center;
	color: white;	
	font-size: 2.5em;
	background: highlight;
	border-radius: 10px;
}

.row{
	padding: 15px;
	
}
.table{
	margin-top: 150px;
	border: 1px solid gray;
	border-radius: 30px;
}
.table th{
	text-align: center;
}
.table td{
	font-size: 1.1em;
	color: gray;
	margin: 10px;
	text-align: center;
}

.table tr:nth-child(1) {
	background: lightgray;

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
		<div class="notice"><b>ProductList</b></div>
		<form >
			<table class="table" >
				<tr>
					<th> </th>
					<th>Title</th>
					<th>Category </th>
					<th>ImgF</th>
					<th>ImgL</th>
					<th>Price</th>
					<th>ID </th>
					<th>Date </th>
				</tr>
				<c:forEach var="pro" items="${pro }">
				<tr>
					<td> </td>
					<td>
						<a class="move" href='/product/get?p_num=<c:out value="${pro.p_num}"/>'>   
							<c:out value="${pro.p_title }"></c:out>
						</a>
					</td>
					<td><c:out value="${pro.p_cate }"></c:out> </td>
					<td><c:out value="${pro.p_imgf }"></c:out> </td>
					<td><c:out value="${pro.p_imgl }"></c:out> </td>
					<td><c:out value="${pro.p_price }"></c:out> </td>
					<td><c:out value="${pro.p_id }"></c:out> </td>
					<td><fmt:formatDate value="${pro.p_date}" pattern="yyyy-MM-dd"/></td>
				</tr>

				</c:forEach>
			</table>
			
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
	
	
	$("button").click(function(e){	
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		if(operation === 'wrig'){
			formObj.attr("action", "/product/get");
			formObj.attr("method", "get");
			formObj.submit();
		}
	});
	
	//----------------- 알림 이벤트 코드-------------------
	// 결과창 출력을 위한 코드
	var result = '<c:out value="${result}"/>';
	
	// rttr 객체를 통해 받아온 값이 빈 값이 아닐 때(데이터 변경) 알림 메소드 실행
	if(result != ''){
		checkResult(result);
	}
	// 뒤로가기 할 때 문제가 될 수 있으므로
	// history  객체를 조작({정보를 담은 객체}, 뒤로가기 버튼 문자열 형태의 제목, 바꿀 url)
	history.replaceState({},null,null);	
	function checkResult(result){
		if(result === '' || history.state){	// 뒤로가기 방지
			return;
		}
		if(result === 'success'){	// 수정 및 삭제
			alert("처리가 완료되었습니다.");
			return;
		}
		if(parseInt(result) > 0){	// 삽입
			alert("게시글 " + parseInt(result) + "번이 등록되었습니다.");
		}
	}
	

	
	

});
</script>
</html>
<%@ include file="../include/footer.jsp" %>