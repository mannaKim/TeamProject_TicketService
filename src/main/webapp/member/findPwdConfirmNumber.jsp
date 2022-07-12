<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Find Password</title>
	<link href="css/ticket.css" rel="stylesheet">
	<script src="member/member.js"></script>
</head>
<body>
  	<center><h2>비밀번호 찾기</h2></center>
  	<form method="post" name="frm" action="ticket.do">
    	<input type="hidden" name="command" value="findPwdStep2">
    	<table align="center" bgcolor="black" cellspacing="1" width="400">
      		<tr align="center" bgcolor="#fde8ff">
        		<td width="430">
          			<h3>아이디 : ${id}</h3>
          			<input type="hidden" name="id" value="${id}">
        		</td>
      		</tr>
      		<tr align="center" bgcolor="#fde8ff">
        		<td width="430">
         			<h3>성명 : ${name}</h3>
         			<input type="hidden" name="name" value="${name}">
        		</td>
      		</tr>
      		<tr align="center" bgcolor="#fde8ff">
        		<td width="430">
          			<h3>전화번호 : ${phone}</h3>
          			<input type="hidden" name="phone" value="${phone}">
        		</td>
      		</tr>
      		<tr align="center" bgcolor="#fde8ff">
        		<td width="430">
          			<h3>인증번호<input type="text" name="confirmNum"></h3>
          			전송받은 번호를 입력하세요
          			<br>${msg}<br>
          			<input type="submit" value="인증번호 확인">
       			</td>
      		</tr>
    	</table>
	</form>
</body>
</html>