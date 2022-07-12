<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="sub_image_menu.jsp" %>
<article>
	<div>
		<h1>Item</h1>
    	<form method="post" name="frm">
      		<input type="hidden" name="gseq" value="${GoodsVO.gseq}">
      		<fieldset>
        		<span style="float:left; margin-right:20px;">
          			<img src="${GoodsVO.image}" style="border-radius:20px">
        		</span>
        		<h2>${GoodsVO.name}</h2>
        		<label>가 격 : </label>${GoodsVO.price2}원<br>
        		<label>수 량 : </label><input type="text" name="quantity" size="2" value="1"><br>
      			<div id="buttons">
        			<input type="button" value="장바구니" onClick="go_cart();">
       				<input type="button" value="즉시구매" onClick="go_order();">
        			<input type="button" value="뒤로" onClick="history.go(-1);">
      			</div>
      		</fieldset>
      		<div class="clear"></div>
      		<hr>
      		<img src="${GoodsVO.detail_img}"><br><br>
      		<div class="clear"></div>
    	</form>
  	</div>
</article>
<%@ include file="../footer.jsp" %>