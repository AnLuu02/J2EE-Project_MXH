package com.Project_MXH.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Project_MXH.model.UserModel;
import com.Project_MXH.service.IFriendService;
import com.Project_MXH.service.IUserService;
import com.Project_MXH.service.impl.UserService;
import com.Project_MXH.utils.SessionUtil;

@WebServlet({ "/trang-chu" })
public class HomeController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Inject
	private IUserService userService = new UserService();
	@Inject
	private IFriendService friendService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserModel model = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
		if (model != null) {
			if (model.getRole().getCode().equals("USER")) {
				req.setAttribute("USER", model);
				req.setAttribute("SUGGEST_FRIEND", friendService.findUserFriends(model));
				req.setAttribute("FRIENDS", friendService.findAllFriendsById(model.getId()));
				req.setAttribute("WAITING_ACCEPT_FRIEND", friendService.findUserFriendWaitingAccept(model));

				req.getRequestDispatcher("/views/web/home.jsp").forward(req, resp);

			} else if (model.getRole().getCode().equals("ADMIN")) {
				req.setAttribute("ADMIN", model);
				resp.sendRedirect(req.getContextPath() + "/admin-home");
			}
		} else {
			resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=danger");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}