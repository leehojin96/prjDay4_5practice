<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="prjDay4_5practice.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 450px;
	border: 1px solid black;
	margin: 100px auto;
}

td {
	border: 1px solid black;
	width: 150px;
}

th {
	height: 40px;
	background-color: rgb(199, 199, 195);
}

td:nth-child(1) {
	text-align: center;
}

button {
	width: 200px;
	height: 50px;
	border: 0px;
	background-color: rgb(199, 199, 195);
	color: black;
}
</style>
</head>
<body>
	<%
	User user = (User) request.getAttribute("user");
	%>
	<table>
		<caption>고객정보 조회</caption>
		<tr>
			<th>아이디</th>
			<td><%=user.getId()%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=user.getName()%></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=user.getAddr()%></td>
		</tr>
		<tr>
			<td colspan="2"><button>수정하기</button></td>
		</tr>
	</table>
</body>
</html>