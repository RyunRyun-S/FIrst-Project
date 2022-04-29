<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>




<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">회원정보 등록</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/member/register" method="post" role="form">
					
					<div class="form-group">
						<label>회원 종류</label>
						<input class="form-control" name="m_code">
					</div>
					<div class="form-group">
						<label>핸드폰</label>
						<input class="form-control" name="m_phon">
					</div>
					<div class="form-group">
						<label>생일</label>
						<textarea class="form-control" rows="3" name="m_birth"></textarea>
					</div>
					<div class="form-group">
						<label>이름</label>
						<input class="form-control" name="m_name">
					</div>
					<div class="form-group">
						<label>아이디</label>
						<input class="form-control" name="m_id">
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input class="form-control" name="m_pw">
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
				
				formObj.attr("action", "/member/register");
				
			}else if(operation === 'list'){
				
				formObj.attr("action", "/member/list");
				formObj.attr("method", "get");
				
				
				formObj.empty();	
			}
			
			formObj.submit();
		});
	});
</script>

<%@ include file="../include/footer.jsp" %>