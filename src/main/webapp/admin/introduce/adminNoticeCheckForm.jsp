<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="admin/script/admin.js"></script>
</head>
<body>
<div align="center">
	<h1>비밀번호 확인</h1>
	<form method="post" action="ticket.do" name="frm">
		<input type="hidden" name="command" value="adminNoticeCheckpass">
		<input type="hidden" name="ntnum" value="${param.ntnum}">
		
		<table style="width:80%">
			<tr>
				<th>수정/삭제 비밀번호</th>
				<td><input type="password" name="pass" size="20"></td>
			</tr>
		</table><br>
		<input type="submit" value="확인" onClick="return passCheck()">
		<br><br>
		${message}
	</form>
</div>
</body>
</html>