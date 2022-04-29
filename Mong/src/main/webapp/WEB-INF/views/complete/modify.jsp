<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">결제완료 수정/삭제 </h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">결제완료 수정/삭제</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/complete/modify" method="post">
					<div class="form-group">
						<label>글 번호</label>
						<input class="form-control" name="c_num" value='<c:out value="${com.c_num }"/>' readonly="readonly">
					</div>
					<div class="form-group">
						<label>글 제목</label>
						<input class="form-control" name="c_title" value='<c:out value="${com.c_title }"/>' >
					</div>
					<div class="form-group">
						<label>상품 가격</label>
						<textarea class="form-control" name="c_price" rows="3" ><c:out value="${com.c_price }"/></textarea>
					</div>
					<div class="form-group">
						<label>작성자</label>
						<input class="form-control" name="c_id" value='<c:out value="${com.c_id }"/>' readonly="readonly">
					</div>
					<input type="hidden"  name="c_date" value='<c:out value="${com.c_date }"/>' readonly="readonly">
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

<script type="text/javascript">
	$(function(){
		var formObj = $("form");	
		
		$("button").click(function(e){	
			e.preventDefault();
			
			var operation = $(this).data("oper");
			
			if(operation === 'remove'){
				formObj.attr("action", "/complete/remove");
			}else if(operation === 'list'){
				formObj.attr("action", "/complete/list");
				formObj.attr("method", "get");

				formObj.empty();	
			}else if(operation === 'modify'){
				formObj.attr("action", "/complete/modify");
				formObj.attr("method", "post");

			}
			
			formObj.submit();
		});
	});
</script>


