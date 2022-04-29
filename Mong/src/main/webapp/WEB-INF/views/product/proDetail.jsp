<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/nav1.jsp" %>
<%@ include file="../include/nav2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Detail</title>
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
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none;}

.deTotal{
	width:100%;
	margin: 30px;
	background-color: red;
	font-size: 23px;
}
.deLeft{
	float:left;
	width:60%;
	height: 100%;
	text-align: center;
}
.deLeft img{
	width: 700px;
	height: 500px;
	margin: 80px 80px 80px 60px ;
	word-break: break-all;
}
.leftcen{
	margin: 30px;
	text-align:left;
	white-space:pre-line;
}
.deright{
	float:left;
	width:40%;
	height: 100%;
}
.deright button{
	border:0;
	outline: 0;
	padding-bottom: -10px;
	
}
/*header-nav 시작*/
.header-nav{
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	padding-bottom: 6px;
	padding-top: 6px;
	text-align: center;
	
}
#first1{
	margin-left: 150px;
}

.header-nav section {
    display: none;
    padding: 20px 0 0;
    border-top: 1px solid #ddd;
    }

.header-nav input {
      display: none;}

.header-nav label {
    display: inline-block;
    padding: 10px 20px;
    font-weight: 600;
    color: #bbb;
    border: 1px solid transparent;
    
    }

.header-nav label:hover {
    color: #2e9cdf;
    cursor: pointer;
    }

/*input 클릭시, label 스타일*/
.header-nav input:checked + label {
      color: #555;
      border-bottom: 1px solid #ffffff;}
      
.mboxT{
	height:100px;
	width: 100%;
	padding: 15px;
	text-align: left;
}



#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3 {
    display: block;}
    
.intro{
	text-align: center;
	padding: 15px;
	margin: 50px;
}  
.intro div{
	padding: 10px;
}
.intro table{
	width:100%;
}
.intro div:nth-child(7){
	text-align: left;
}
.heart span:checked{
	background: yellow;
}

.heart{
	padding: 0;
	border: none;
	background: none;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="deTotal">
		<div class="deLeft">

			<div><img src="../resources/img/<c:out value="${pro.p_imgl }"/>"></div>

			<div class="leftcen">
				<c:out value="${pro.p_content }"></c:out>
				<br><br><br><br><br>
	
			</div>
		</div>
		<div class="deright">
		
		<!-- ajax -->
			<div>
				<div>찜<button id="heartAt" class="heart"><span class="material-icons-outlined">favorite_border</span></button>  </div>
			</div>
			
			
			
			
			<form action="/complete/register" method="post">
			<div class="header-nav" style="text-align: left">
				<div>
				<input id="tab1" type="radio" name="c_price" value="<c:out value='${pro.p_price }'/>"> 
					<label for="tab1" ><c:out value="${pro.p_price }"/> 원 STANDARD</label><br> 
					<section id="content1" >
						<div class="mboxT">
							<div>반응형 홈페이지(기본형) </div>
							<div>작업일 7일 / 수정횟수:2회 </div>
						</div>
					</section>
				<input id="tab2" type="radio" name="c_price" checked="checked" value="<c:out value='${pro.p_price2 }'/>"> 
					<label for="tab2"><c:out value="${pro.p_price2 }"/>원 DELUXE</label> <br>
					<section id="content2" >
						<div class="mboxT" >
							<div>반응형 홈페이지(디럭스) </div>
							<div>작업일 7일 / 수정횟수:2회 </div>
						</div>
					</section>
				<input id="tab3" type="radio" name="c_price" value="<c:out value='${pro.p_price3 }'/>"> 
					<label for="tab3"><c:out value="${pro.p_price3 }"/>원 PREMIUM</label> 
					<section id="content3" >
						<div class="mboxT">
							<div>반응형 홈페이지(프리미엄) </div>
							<div>작업일 7일 / 수정횟수:3회 </div>
						</div>
						
					</section>
				
				</div>	
			</div>
				<input type="hidden" name="c_title" value='<c:out value="${pro.p_title }"/>' />
				<input type="hidden" name="cd_id" value='<c:out value="${pro.p_id }"/>' />
				<input type="hidden" name="p_num" value='<c:out value="${pro.p_num }"/>' />
				<button type="submit" id="smit"> 결제하기</button>
			</form>
			
			<div class="intro">
				<span class="material-icons-outlined">android</span>
				<h4><c:out value="${pro.p_id }"/></h4>
				<div>연락가능시간:09~20시</div>
				<a href="#">전문가에게 문의 남기기</a>
				<div>
					<table>
						<tr>
							<th>2761건 </th>
							<th>98% </th>
							<th>2시간 이내 </th>
							<th>기업회원 </th>
						
						</tr>
						<tr> 
							<td>총작업개수</td>
							<td>만족도 </td>
							<td>평균응답시간 </td>
							<td>회원구분 </td>
						</tr>
					</table>
				</div>
				<div>전문가소개<br>
					안녕하세요. <c:out value="${pro.p_id }"/>입니다
				</div>
			</div>
		</div>
	</div>
	
	
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/heart.js"></script>
<script type="text/javascript">

		
	var p_numValue ='<c:out value="${pro.p_num }"/>';
	
	
	$("#heartAt").on("click",function(e){
		heartService.add( 
			{ h_img : "<c:out value="${pro.p_imgl }"/>", h_title : "<c:out value="${pro.p_title }"/>",p_num: p_numValue}
			,
			function(result){
				
				alert("찜이 완료되었습니다!!!");
				$("#heartAt").css("color","yellow");
			});
		

	});
	
	$("#smit").on("click",function(e){
		alert("결제가 완료되었습니다. 장바구니로 이동합니다.")
		
	});
</script>





</html>
<%@ include file="../include/footer.jsp" %>