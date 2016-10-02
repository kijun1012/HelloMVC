<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register page</title>
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
	<h2>Hello! This is Register page!</h2>
	<div class="ex">
		<form action="/HelloMVC/doRegister" method="Post">
			<table align = "center">
				<tr>
					<td colspan=2><b>input your information</b></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="ID"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="PW"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" name="gender" value="male">남자
						<input type="radio" name="gender" value="female">여자</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="등록"></td>
				</tr>

			</table>


		</form>
	</div>
</body>
</html>