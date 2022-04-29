<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined"
	rel="stylesheet" >
	
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
}
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none;}

.row{
	margin: 170px;
	margin-left:600px;
	margin-right: 600px;
	text-align: center;
	padding: 20px;
	background: linear-gradient( to bottom, white, #483D8B );
	
}
.rowt {
	margin: auto;
	width: 600px;
	height: 200px;
	text-align: center;
	margin-left: 50px;
}
.rowt th{
	text-align:center;
}
.rowt td{
	text-align: left;
	padding: 20px;
}

.rowt td input{
	width: 400px;
	padding: 5px;
}
.btn-success{
	background: #483d8b;
	border: 1px solid #483d8b;
	width: 500px;
	padding: 20px;
	margin: 10px;
}
.btn-success:hover{
	background: white;
	color: black;
	border: 1px solid #483d8b;
}
</style>
</head>

<body>
	<form method="post" action="/login/userRegister">
		<div class="row">
			<h1>회원가입 Page</h1>
			<table class="rowt">
				<tr>
					<th>아이디  </th> 
					<td><input type="text" name="userid" placeholder="6~8자 입력"> </td>
				</tr>
				<tr>
					<th>비밀번호  </th> 
					<td><input type="text" name="userpw" placeholder="비밀번호를 입력해주세요"> </td>
				</tr>
				<tr>
					<th>이름  </th> 
					<td><input type="text" name="userName" placeholder="이름을 입력해주세요"> </td>
				</tr>
				<tr>
					<th>이메일  </th> 
					<td><input type="text" name="useremail" placeholder="@포함 이메일을 입력해주세요" > </td>
				</tr>
				<tr>
					<th>생년월일  </th> 
					<td><input type="text" name="userbirth" placeholder="주민번호 앞 6자리를 입력해 주세요"> </td>
				</tr>
			</table>
			
			<div><input type="submit" class="btn btn-success " value="회원가입"></div>
		</div>
	</form>
	
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
</body>
</html>