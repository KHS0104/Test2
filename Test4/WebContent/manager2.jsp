<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>   
<%@ page import="java.util.*" %>    
<%@ page import="test.*" %>

<%
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<style>
	table {
	 border-collapse: collapse;
	}
	td {
		padding: 3px;
	}
</style>
<script>
	$(function() {
		$(".a").click(function() {
			alert("수정되었습니다.");
		});
	});
</script>
</head>
<body>
	<h1>회원관리-수정관리자</h1></br>
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" readonly></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="text" name="pw"></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name"></td>
		</tr>	
		<tr>
			<td>point</td>
			<td><input type="text" name="point"></td>
		</tr>
		<tr>
			<td colspan="2"><form action="manager.jsp"><input type="submit" class="a" value="제출"></form></td>
		</tr>
	</table>
</body>
</html>