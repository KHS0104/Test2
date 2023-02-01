<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		.a, .b {
			padding: 10px;
			text-align: center;
			width: 215px;
		}
	</style>	
	<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<script>
		$(function() {
			$(".a").click(function() {
				location.href = "Main.jsp?id=" + $(".id").val();
			});
		});
	</script>
</head>
<body>
	<h1>로그인</h1><br/>
	ID : <input type="text" class="id" name="id"/><br/>
	PW : <input type="password" class="password" name="pw"/><br/>
		<input type="submit" class="a" value="로그인"/><br/>
	<form action="Join.jsp">
		<input type="submit" class="b" value="회원가입"/>
	</form>
</body>
</html>