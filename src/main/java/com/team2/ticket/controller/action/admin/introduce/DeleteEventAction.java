package com.team2.ticket.controller.action.admin.introduce;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team2.ticket.controller.action.Action;
import com.team2.ticket.dao.EventDao;

public class DeleteEventAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		int evnum = Integer.parseInt(request.getParameter("evnum"));
		
		EventDao edao = EventDao.getInstance();
		edao.deleteEvent(evnum);
		
		request.getRequestDispatcher("ticket.do?command=adminEvent").forward(request, response);

	}

}
