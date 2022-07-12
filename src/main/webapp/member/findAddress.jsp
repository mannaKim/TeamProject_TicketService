<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="css/ticket.css" rel="stylesheet">
  	<script src="member/member.js"></script>
</head>
<body>
  <div>
    <h1>우편번호 검색</h1>
    <form method="post" name="frm" action="ticket.do">
      <input type="hidden" name="command" value="findAddress">
      동 이름 : <input type="text" name="dong">
      <input type="submit" value="찾기">
    </form>
    <!-- 검색된 우편번호와 동이 표시되는 곳 -->
    <table>
      <tr>
        <th width="100">우편번호</th><th>주소</th>
      </tr>
      <c:forEach items="${addressList}" var="add">
        <tr>
          <td>
            <!-- 함수 호출 형태 : result('123-123','서울시','서대문구','대현동') -->
            <a href="#" onClick="save_address('${add.zip_num}','${add.sido}','${add.gugun}','${add.dong}');">
              ${add.zip_num}
            </a>
          </td>
          <td>
            <a href="#" onClick="save_address('${add.zip_num}','${add.sido}','${add.gugun}','${add.dong}');">
              ${add.sido} ${add.gugun} ${add.dong}
            </a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </div>
</body>
</html>