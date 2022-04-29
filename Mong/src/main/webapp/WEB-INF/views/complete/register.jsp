<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>




<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">결제완료등록</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/complete/register" method="post" role="form">
					<div class="form-group">
						<label>제목</label>
						<input class="form-control" name="c_title">
					</div>
					<div class="form-group">
						<label>상품이름</label>
						<textarea class="form-control" rows="3" name="c_title"></textarea>
					</div>
					<div class="form-group">
						<label>작성자</label>
						<input class="form-control" name="c_id">
					</div>
					<button type="submit" data-oper="register" class="btn btn-primary">등록</button>
					<button type="submit" data-oper="list" class="btn btn-warning">목록</button>

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
			
			if(operation === 'register'){
				
				formObj.attr("action", "/complete/register");
				
			}else if(operation === 'list'){
				
				formObj.attr("action", "/complete/list");
				formObj.attr("method", "get");
				
				
				formObj.empty();	
			}
			
			formObj.submit();
		});
	});
</script>

<%@ include file="../include/footer.jsp" %>