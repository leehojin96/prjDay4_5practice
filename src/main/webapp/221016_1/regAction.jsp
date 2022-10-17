<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String userId = request.getParameter("userId");
String userName = request.getParameter("userName");
String userYY = request.getParameter("userYY");
String userMM = request.getParameter("userMM");
String userDD = request.getParameter("userDD");
String userSex = request.getParameter("userSex");
String userAb = request.getParameter("userAb");
String userAp = request.getParameter("userAp");

out.println(userId+"<br>");
out.println(userName+"<br>");
out.println(userYY+"<br>");
out.println(userMM+"<br>");
out.println(userDD+"<br>");
out.println(userSex+"<br>");
out.println(userAb+"<br>");
out.println(userAp+"<br>");
%>
</body>
</html>