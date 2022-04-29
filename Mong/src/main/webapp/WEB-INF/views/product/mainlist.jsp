<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
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
	font-family: 맑은고딕,굴림,돋움;

}
 a:link { color: white; text-decoration: none;}
 a:visited { color: white; text-decoration: none;}
 a:hover { color: white; text-decoration: none;}
.matt{
	margin-top: 100px;
	margin-bottom: 100px;
}  
.matt h3{
	margin: 30px;
}    
 .rolling_panel { 
	 position: relative; 
	 width: 1850px; 
	 height: 500px; 
	 margin-left: 20px;
	 border: 5px solid black; 
	 overflow: hidden; 
	 
 }
 .rolling_panel ul { 
	 position: absolute; 
	 margin: 5px; 
	 padding: 0; 
	 list-style: none;
  }
 .rolling_panel ul li {
	  float: left; 
	  width: 920px;
	  height: 500px;
}
.rolling_panel img{
  max-width: inherit;
  max-height: inherit;
  height: inherit;
  width: inherit;
  padding: 0.5em;
  border: 1.5px solid gray;
}
.sideb{
	text-align: center;
}
.toptotal{
	margin-bottom: 150px;
	padding: 10px;
	display: grid;
	grid-template-columns: auto auto auto;
	
}
.toptotal div{
	text-align: center;
	font-size: 1.2em;
	margin:15px;
	border-bottom: 2px solid green;
}
.topcate{
	border: 4px solid gray;
	border-radius: 70px;
	margin: 20px;
	padding: 20px;
}
.imgimg{
	display: grid;
	grid-template-columns: auto auto auto;
	margin: 10px;
	padding-left: 250px;
	padding-bottom: 150px;

}
.imgimg img{
	padding: 1em;
	margin: 1em;
	background: black;
	width: 30em;
	border-radius: 10px;
	}
.toca{
	width: 250px;
}
#bar{
	background: black;
	margin-bottom: 150px;
	margin-top:100px;
	height: 300px;
	background-image: url("../resources/img/100.jpg");
	background-repeat : no-repeat;
    background-size : cover;
}
.lench b{
	font-size: 19px;
}
.lench b:hover{
	color: navy;
}
.lench2{
	font-size: 15px;
}
</style>
</head>
<body>
<div class="matt">
    <div class="rolling_panel">
       <ul>
           <li><img src="../resources/img/1.jpg"></li>
           <li><img src="../resources/img/2.webp"></li>
           <li><img src="../resources/img/3.webp"></li>
           <li><img src="../resources/img/4.webp"></li>
           <li><img src="../resources/img/5.webp"></li>
       </ul>
    </div>
    <br>
    <div class="sideb">
	<a href="javascript:void(0)" id="prev"><span class="material-icons-outlined">navigate_before</span></a>
    <a href="javascript:void(0)" id="next"><span class="material-icons-outlined">navigate_next</span></a>
    </div>
</div>

<div class="imgimg">
	<div><a href="/product/catelist1"><img  src="../resources/img/6.webp"></a> </div>
	<div><a href="/product/catelist2"><img  src="../resources/img/8.webp"></a> </div>
	<div><a href="/product/catelist3"><img  src="../resources/img/9.webp"></a> </div>
	<div><a href="/product/catelist4"><img  src="../resources/img/13.webp"></a> </div>
	<div><a href="/product/catelist5"><img  src="../resources/img/11.webp"></a> </div>
	<div><a href="/product/catelist6"><img  src="../resources/img/14.webp"></a> </div>

</div>

<p id="bar">MONG</p>
<div class="toptotal">	
	<div class="topcate" >
		<div><img class="toca" src="../resources/img/flower.jpg"></div>
		<div>●최근 올라온 글● </div>
		<br>
	<c:forEach var="pro" items="${list1 }">
		<br>
		<div class="lench">
			<a href='/product/proDetail?p_num=<c:out value="${pro.p_num}"/>'>
				<b>★<c:out value="${pro.p_title }"/></b>
			</a><br>
			<span class="lench2"><c:out value="${pro.p_id }"/></span>
		</div>
	</c:forEach>
	</div>

	<div class="topcate" >
		<div><img class="toca" src="../resources/img/camera.jpg"></div>
		<div>●최근 올라온 글● </div>
		<br>
	<c:forEach var="pro" items="${list2 }">
		<br>
		<div class="lench">
			<a href='/product/proDetail?p_num=<c:out value="${pro.p_num}"/>'>
				<b>★<c:out value="${pro.p_title }"/></b>
			</a><br>
			<span class="lench2"><c:out value="${pro.p_id }"/></span>
		</div>
	</c:forEach>
	</div>

	<div class="topcate">
		<div><img class="toca" src="../resources/img/computer.png"> </div>
		<div>●최근 올라온 글● </div>
		<br>
	<c:forEach var="pro" items="${list3 }">
		<br>
		<div class="lench">
			<a href='/product/proDetail?p_num=<c:out value="${pro.p_num}"/>'>
				<b>★<c:out value="${pro.p_title }"/></b>
			</a><br>
			<span class="lench2"><c:out value="${pro.p_id }"/></span>
		</div>
	</c:forEach>
	</div>

</div>
</body>
<script type="text/javascript">
    $(document).ready(function() {

        var $panel = $(".rolling_panel").find("ul");

        var itemWidth = $panel.children().outerWidth(); // 아이템 가로 길이
        var itemLength = $panel.children().length;      // 아이템 수

        // Auto 롤링 아이디
        var rollingId;

        auto();

        // 배너 마우스 오버 이벤트
        $panel.mouseover(function() {
            clearInterval(rollingId);
        });

        // 배너 마우스 아웃 이벤트
        $panel.mouseout(function() {
            auto();
        });

        // 이전 이벤트
        $("#prev").on("click", prev);

        $("#prev").mouseover(function(e) {
            clearInterval(rollingId);
        });

        $("#prev").mouseout(auto);

        // 다음 이벤트
        $("#next").on("click", next);

        $("#next").mouseover(function(e) {
            clearInterval(rollingId);
        });

        $("#next").mouseout(auto);

        function auto() {

            // 2초마다 start 호출
            rollingId = setInterval(function() {
                start();
            }, 2000);
        }

        function start() {
            $panel.css("width", itemWidth * itemLength);
            $panel.animate({"left": - itemWidth + "px"}, function() {

                // 첫번째 아이템을 마지막에 추가하기
                $(this).append("<li>" + $(this).find("li:first").html() + "</li>");

                // 첫번째 아이템을 삭제하기
                $(this).find("li:first").remove();

                // 좌측 패널 수치 초기화
                $(this).css("left", 0);
            });
        }

        // 이전 이벤트 실행
        function prev(e) {
            $panel.css("left", - itemWidth);
            $panel.prepend("<li>" + $panel.find("li:last").html() + "</li>");
            $panel.animate({"left": "0px"}, function() {
                $(this).find("li:last").remove();
            });
        }

        // 다음 이벤트 실행
        function next(e) {
            $panel.animate({"left": - itemWidth + "px"}, function() {
                $(this).append("<li>" + $(this).find("li:first").html() + "</li>");
                $(this).find("li:first").remove();
                $(this).css("left", 0);
            });
        }
    });
</script>

</html>
<%@ include file="../include/footer.jsp" %>