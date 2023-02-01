<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	int random = (int)(Math.random() * 1000) +1;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<style>
		.fl { float: left; }
		.fr { float: right; }
		.item {
			width: 350px;
		}
	</style>
	<script>
		$(function() {
			$(".out").click(function() {
				alert("로그아웃 되었습니다.");
			});
			$(".item").click(function() {
				alert($(this).attr('subject')+"를 구입하였습니다.");
			});
			$(".korea").click(function() {
				alert("<%=random%>점이 적립되었습니다.");
				location.href = "https://www.koreaisacademy.com/";
			});
		});
	</script>
</head>
<body>
	<h1>메인페이지</h1>
	<div>
		<div class="fr">
			<%=id %>님 안녕하세요.<form action="Login.jsp"><input type="submit" class="out" value="로그아웃"/></form></br>
			포인트 : 
		</div>
		<div style="clear:both;"></div>
		<h3>구입할 컨텐츠를 선택하세요.</h3>
		<div class="fl item" subject="컨텐츠(intro)">
			<img src="image/Intro_350_408.png"/>
		</div>
		<div class="fl item" subject="컨텐츠(java)" style="margin-left: 10px;">
			<img src="image/Java_350_408.png"/>
		</div>
		<div class="fl item" subject="컨텐츠(C++)" style="margin-left: 10px;">
			<img src="image/Cpp_350_408.png"/>
		</div>
		<div style="clear:both;"></div>
		<div class="fr korea" a="<%=random %>">
			<img src="image/korea_it.png"/>
		</div>
	</div>
</body>
</html>