package com.team2.ticket.controller.action.admin.introduce;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team2.ticket.controller.action.Action;
import com.team2.ticket.dto.MemberVO;

public class AdminEventInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		String url = "";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		
		if(mvo == null) {
			url = "ticket.do?command=index";
		} else {
			url = "admin/introduce/eventWriteForm.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
