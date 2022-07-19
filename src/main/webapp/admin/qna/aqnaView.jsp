<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>

<article>
	<h2>1:1 문의</h2>
	<form>
		<table border="1">
			<tr>
				<th>제목</th>
				<td width="500">${qnaVO.subject}</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td align="left"><fmt:formatDate value="${qnaVO.indate}"
						type="date" /></td>
			</tr>
			<tr>
				<th>질문내용</th>
				<td align="left" style="text-align: left; font-size: 115%;"><pre>${qnaVO.content}</pre></td>
			</tr>
		</table>
		<div class="clear"></div>
		<div id="buttons" style="float: right">
			<input type="button" value="목록" class="submit"
				onclick="location.href='ticket.do?command=aqna'">
			<!-- 목록 버튼을 누르면 qnalist.jsp 로 이동합니다.  -->
		</div>
	</form>

	<form action="ticket.do" method="post" name="frm_reply">
	<input type="hidden" name="command" value="qnaReply" /> 
	<input type="hidden" name="qnanum" value="${qnaVO.qseq}" />
		<table>
			<tr>
				<th width="100">작성자</th>
				<th>내용</th>
				<th width="100">답변 작성</th>
			</tr>
			<tr align="center">
				<td>${qnaVO.id}<input type="hidden" name="id"
					value="${qnaVO.id}"></td>
				<td><input type="text" name="content" size="80"></td>
				 <td><input type="submit" value="작성" onClick="return reply_check();"></td>
						<!-- 답변 작성 버튼을 누르면 내용 확인 후 QnaReplyAction 으로 이동합니다.  -->

			</tr>

			<c:forEach items="${replylist}" var="reply">
				<tr align="center">
					<td>${reply.id}</td>
					<td><fmt:formatDate value="${reply.indate}" type="date" /></td>
					<td align="left">&nbsp;${reply.content}</td>
				</tr>
			</c:forEach>


		</table>
	</form>



</article>
