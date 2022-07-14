<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="sub_image_menu.jsp" %>
<article>
	<h2>주문 내역</h2>
	<form>
		<table border>
			<tr>
				<th colspan="2">상품명</th>
				<th>가격</th>
				<th>수량</th>
				<th>주문일</th>
				<th>진행상태</th>
			</tr>
			<c:forEach items="${goodsOrderList}" var="govo">
	   			<tr>
	   				<td>
	   					<a href="ticket.do?command=goodsDetail&gseq=${govo.gseq}">
	   						<img src="${govo.image}">
	   					</a>
	   				</td>
	   				<td>
	   					<a href="ticket.do?command=goodsDetail&gseq=${govo.gseq}">
	   						${govo.gname}
	   					</a>
	   				</td>
	   				<td>
	   					<fmt:formatNumber value="${govo.price*govo.quantity}" type="currency"/>
	   				</td>
	   				<td>
	   					${govo.quantity}
	   				</td> 
	   				<td>
	   					<fmt:formatDate value="${govo.indate}" type="date"/>
	   				</td>
	   				<td>
	   					처리 진행 중
	   				</td>
	   			</tr>  
	  		</c:forEach>
	  		<tr>
	  			<th colspan="2">결제 금액</th>
	  			<th colspan="2"><fmt:formatNumber value="${totalPrice}" type="currency"/></th>
	  			<th colspan="2">
	  				주문 완료
	  			</th>
	  		</tr>
		</table>
	</form>
</article>
<%@ include file="../footer.jsp" %>