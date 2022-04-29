<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">회원정보 수정/삭제</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">회원정보 수정/삭제</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/member/modify" method="post">
					<div class="form-group">
						<label>글 번호</label>
						<input class="form-control" name="m_num" value='<c:out value="${mem.m_num }"/>' readonly="readonly">
					</div>
					<div class="form-group">
						<label>권한 코드</label>
						<input class="form-control" name="m_code" value='<c:out value="${mem.m_code }"/>'>
					</div>
					<div class="form-group">
						<label>핸드폰</label>
						<input class="form-control" name="m_phon" value='<c:out value="${mem.m_phon }"/>'>
					</div>
					<div class="form-group">
						<label>생일</label>
						<input class="form-control" name="m_birth" value='<c:out value="${mem.m_birth }"/>' readonly="readonly">
					</div> 
					<div class="form-group">
						<label>이름</label>
						<input class="form-control" name="m_name" value='<c:out value="${mem.m_name }"/>' readonly="readonly">
					</div> 
					<div class="form-group">
						<label>아이디</label>
						<input class="form-control" name="m_id" value='<c:out value="${mem.m_id }"/>' readonly="readonly">
					</div> 
					<div class="form-group">
						<label>비밀번호</label>
						<input class="form-control" name="m_pw" value='<c:out value="${mem.m_pw }"/>' readonly="readonly">
					</div> 
					<input type="hidden"  name="m_date" value='<c:out value="${mem.m_date }"/>' readonly="readonly">
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
				formObj.attr("action", "/member/remove");
			}else if(operation === 'list'){
				formObj.attr("action", "/member/list");
				formObj.attr("method", "get");

				formObj.empty();	
			}else if(operation === 'modify'){
				formObj.attr("action", "/member/modify");
				formObj.attr("method", "post");

			}
			
			formObj.submit();
		});
	});
</script>


<%@ include file="../include/footer.jsp" %>