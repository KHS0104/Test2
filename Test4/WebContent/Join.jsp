<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		.a {
			padding: 10px;
			text-align: center;
			width: 215px;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<script>
		$(function() {
			$(".a").click(function(){
				alert("가입되었습니다. 로그인 해주세요.");
			});
		});
	</script>
</head>
<body>
	<h1>회원가입</h1><br/>
	ID : <input type="text" name="id"/><br/>
	PW : <input type="password" name="pw"/><br/>
	Name : <input type="text" name="name"/><br/>
	<form action="">
		<input type="submit" class="a" value="작성완료"/>
	</form>
</body>
</html>