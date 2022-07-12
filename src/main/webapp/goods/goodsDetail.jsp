<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="sub_image_menu.jsp" %>
<article>
  <div id="itemdetail" style="float:left">
    <h1>Item</h1>
    <form method="post" name="formm">
      <input type="hidden" name="pseq" value="${productVO.pseq}">
      <fieldset>
        <legend>Item Detail Info</legend>
        <span style="float:left; margin-right:20px;">
          <img src="product_images/${productVO.image}" style="border-radius:20px">
        </span>
        <h2>${productVO.name}</h2>
        <label>가 격 : </label><p>${productVO.price2}원</p>
        <label>수 량 : </label><input type="text" name="quantity" size="2" value="1"><br>
      </fieldset>
      <div class="clear"></div>
      <h3 style="font-size:170%;">${productVO.content}</h3><br><br>
      <div class="clear"></div>
      <div id="buttons">
        <input type="button" value="장바구니에 담기" class="submit" onClick="go_cart();">
        <input type="button" value="즉시 구매" class="submit" onClick="go_order();">
        <input type="button" value="뒤로" class="cancel" onClick="history.go(-1);">
      </div>
    </form>
  </div>
</article>
<%@ include file="../footer.jsp" %>