<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>Login</title>
<style type="text/css">
.wrap-div{
	margin-top:500px;
	width: 500px;
	padding-top:20px;
	margin: auto;
	text-align: center;
	background: linear-gradient( to bottom, white, #483D8B );
	border-radius: 20px;
	font-size: 20px;
}
.btn-success{
	background: #483d8b;
	border: 1px solid #483d8b;
}
.btn-success:checked{
	background: #483d8b;
	border: 1px solid #483d8b;
}
.checkbox{
	color: #b0c4de;
}
.btn-success:hover{
	background: white;
	color: black;
	border: 1px solid #483d8b;
}
.toto{
	margin: 250px;
}
.form-control{
	font-size: 20px;
	padding: 20px;
}
</style>
</head>
<body>
<div class="toto">
	<div class="wrap-div">
		<h1> Login Page</h1>
		<form role="form" method="post" action="/login">
		    <fieldset>
		        <div class="form-group">
		            <input class="form-control" placeholder="userid" name="username" type="email" autofocus>
		        </div>
		        <div class="form-group">
		            <input class="form-control" placeholder="Password" name="password" type="password" value="">
		        </div>
		        <div class="checkbox">
		            <label>
		                <input name="remember-me" type="checkbox">아이디 기억하기
		            </label>
		        </div>
		        <!-- Change this to a button or input when using this as a form -->
		        <a href="/product/mainlist" class="btn btn-lg btn-success btn-block">Login</a>
		    
		         <!--  csrf 공격 방어를 위해 동적 생성 -->
		        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" />
		    </fieldset>
		</form>
	</div>
</div>	
	<!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>
    
    <script type="text/javascript">
	    $(".btn-success").on("click", function(e){
	        e.preventDefault();
	        $("form").submit();
	    });
	</script>
</body>
</html>