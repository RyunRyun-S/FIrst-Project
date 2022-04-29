<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(일반)</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 	
 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>회원정보</title>
<style type="text/css">
.ray{
	width: 800px;
	text-align: center;
	border: 1px solid black;
	margin: auto;
	margin-top: 200px;
	font-size: 20px;
	padding: 30px;
	background: linear-gradient( to bottom, white, #483D8B );
	border-radius: 20px;
}
.has-feedback input{
	font-size: 20px;
}
.has-feedback button{
	background: #483D8B;
	color: white;
	font-size: 20px;
	border: 1px solid #483d8b;	
}
.has-feedback button:hover{
	background: white;
	color: black;
	border: 1px solid #483d8b;
}
</style>	
</head>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
			});
			
				
			
		})
	</script>
	
<body>
	<div class="ray">
		<section id="container">
			<form action="/login/memberUpdate" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="userid">아이디</label>
					<input class="form-control" type="text" id="userId" name="userid" value=" <sec:authentication property='principal.username'/>" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userpw">패스워드</label>
					<input class="form-control" type="password" id="userPass" name="userpw" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">성명</label>
					<input class="form-control" type="text" id="userName" name="userName" value="<sec:authentication property='principal.member.userName'/>"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="useremail">이메일</label>
					<input class="form-control" type="text" id="useremail" name="useremail" value="<sec:authentication property="principal.member.useremail"/>" />
				</div>

				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>
</div>
</body>
	
</html>