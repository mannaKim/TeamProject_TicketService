package com.team2.ticket.controller.action.goods;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team2.ticket.controller.action.Action;
import com.team2.ticket.dao.GCartDao;
import com.team2.ticket.dto.MemberVO;

public class GoodsCartDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ticket.do?command=goodsCartList";
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo==null) {
			url="ticket.do?command=loginForm";
		}else {
			String [] gcseqArr = request.getParameterValues("gcseq");
			GCartDao gcdao = GCartDao.getInstance();
			for(String gcseq : gcseqArr)
				gcdao.deleteCart(Integer.parseInt(gcseq));
		}
		response.sendRedirect(url);
	}

}
