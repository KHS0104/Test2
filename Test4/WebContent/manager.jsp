<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>   
<%@ page import="java.util.*" %>    
<%@ page import="test.*" %>

<%
	MemberDAO member = new MemberDAO();
	ArrayList<MemberDTO> memberlist = member.getAllMember();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>Name</th>
			<th>Point</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<% for(int i=0; i<=memberlist.size()-1; i++) { %>
		<tr>
			<td><%=memberlist.get(i).getId() %></td>	
			<td><%=memberlist.get(i).getPw() %></td>	
			<td><%=memberlist.get(i).getName() %></td>	
			<td><%=memberlist.get(i).getPoint() %></td>	
			<td><button>수정</button></td>	
			<td><button>삭제</button></td>
		</tr>
		<% } %>
	</table>
	<h1>스케줄러관리</h1><br/>
	<button>스케줄러(20초마다 포인트 1증가) 실행 시작</button><button>스케줄러 실행 종료</button>
</body>
</html>