package com.team2.ticket.controller.action.admin.introduce;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team2.ticket.controller.action.Action;

public class adminNoticeCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		request.getRequestDispatcher("admin/introduce/adminNoticeCheckForm.jsp").forward(request, response);

	}

}
