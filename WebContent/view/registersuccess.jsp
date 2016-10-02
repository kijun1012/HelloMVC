<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register success</title>
</head>
<style>
div.ex {
	text-align: center;
	width: 30%;
	padding: 10px;
	border: 3px solid blue;
}
</style>
<body>
	<h2>register success!</h2>
<div class="ex">
		<form action="/HelloMVC/index.jsp" >
			<table align = "center">
				<tr>
					<td colspan=2 align="center"><b>check your input</b></td>
				</tr>
				<tr>
					<td>아이디:</td>
					<td>${customer.id }</td>
				</tr>
				<tr>
					<td>비밀번호:</td>
					<td>${customer.pw }</td>
				</tr>
				<tr>
					<td>이름:</td>
					<td>${customer.name }</td>
				</tr>
				<tr>
					<td>성별:</td>
					<td>${customer.gender }</td>
				</tr>
				<tr>
					<td>이메일:</td>
					<td>${customer.email }</td>
				</tr>
				<tr>
					<td></td>
					<td><a href = "/HelloMVC/home?action=index">return to home</a></td>
				</tr>

			</table>
</body>
</html>