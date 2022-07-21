<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="sub_image_menu.jsp"%>
<article>
	<div class="goodsBox">
		<form name="goodsCartFrm" method="post">
			<c:choose>
				<c:when test="${empty goodsCartList}">
					<h1>장바구니</h1>
					<div class="emptyGoodsCart">
						<img src="./goods/goods_images/sub_images/emptyCart.png">
						<h3>장바구니가 비었습니다.</h3>
					</div>
					<div class="goodsCartButton">
						<input type="button" value="쇼핑하러 가기" class="goodsButton1"
							onClick="location.href='ticket.do?command=goodsMain'">
					</div>
				</c:when>
				<c:otherwise>
					<div class="goodsCart">
						<br><br>
						<h1>장바구니</h1>
						<input type="button" value="선택상품 삭제" class="goodsButton3"
							onClick="go_Gcart_delete();">
						<table>
							<tr>
								<th colspan="2">상품명</th>
								<th>가격</th>
								<th>수량</th>
								<th>선택</th>
							</tr>
							<c:forEach items="${goodsCartList}" var="gcvo">
								<tr>
									<td width="300"><a
										href="ticket.do?command=goodsDetail&gseq=${gcvo.gseq}"> <img
											src="goods/goods_images/${gcvo.image}">
									</a></td>
									<td width="500"><a
										href="ticket.do?command=goodsDetail&gseq=${gcvo.gseq}">
											${gcvo.gname} </a></td>
									<td width="100"><fmt:formatNumber
											value="${gcvo.price*gcvo.quantity}" type="currency" /></td>
									<td>
										<button type="button" class="goodsQuantity"
											onClick="changeQuantity(-1,${gcvo.gseq},${gcvo.quantity});">-</button>
										<input type="text" name="quantity" size="2"
										value="${gcvo.quantity}" readonly>
										<button type="button" class="goodsQuantity"
											onClick="changeQuantity(1,${gcvo.gseq},${gcvo.quantity});">+</button>
									</td>
									<td>
										<input type="checkbox" name="gcseq" value="${gcvo.gcseq}" checked>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<th colspan="3">총 결제 예상 금액</th>
								<th colspan="2">
									<fmt:formatNumber value="${totalPrice}" type="currency" />
								</th>
							</tr>
						</table>
						<div class="goodsCartButton">
							<input type="button" value="계속 쇼핑하기" class="goodsButton2"
								onClick="location.href='ticket.do?command=goodsMain'">
							<input type="button" value="선택한 상품 주문하기" class="goodsButton1"
								onClick="go_Gorder_insert();">
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</form>
	</div>
</article>
<%@ include file="../footer.jsp"%>