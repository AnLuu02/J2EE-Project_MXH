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
import com.Project_MXH.utils.SessionUtil;

@WebServlet("/profile/*")
public class ProfileController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Inject
	private IUserService userService;
	@Inject
	private IFriendService friendService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserModel model = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
		String pathInfo = req.getPathInfo().toString().trim();
		String[] temp = pathInfo.split("/");
		String emailUser = temp[1] + "@gmail.com";
		if (temp != null) {
			if (model != null) {
				req.setAttribute("FRIENDS", friendService.findAllFriendsById(model.getId()));
				if (model.getEmail().equals(emailUser)) {
					req.setAttribute("USER", model);
					req.setAttribute("USER_PROFILE", model);
				} else {
					req.setAttribute("USER", model);
					model = userService.findUser(emailUser.trim(), null);
					UserModel model1 = (UserModel) userService.findUserProfile(model);
					req.setAttribute("USER_PROFILE", model1);
				}
				if (temp.length <= 2) {
					req.getRequestDispatcher("/views/web/timeline.jsp").forward(req, resp);

				} else {
					if (temp[2].equals("timeline")) {
						req.getRequestDispatcher("/views/web/timeline.jsp").forward(req, resp);
					} else if (temp[2].equals("friends")) {
						req.getRequestDispatcher("/views/web/friends.jsp").forward(req, resp);
					} else if (temp[2].equals("about")) {
						req.getRequestDispatcher("/views/web/about.jsp").forward(req, resp);
					} else if (temp[2].equals("videos")) {
						req.getRequestDispatcher("/views/web/videos.jsp").forward(req, resp);
					} else if (temp[2].equals("photos")) {
						req.getRequestDispatcher("/views/web/photos.jsp").forward(req, resp);
					} else if (temp[2].equals("settings")) {
						req.getRequestDispatcher("/views/web/setting.jsp").forward(req, resp);
					}
				}
			} else {
				model = userService.findUser(emailUser.trim(), null);
				if (model != null) {
					req.setAttribute("USER_PROFILE", model);
					if (temp.length <= 2) {
						req.getRequestDispatcher("/views/web/timeline.jsp").forward(req, resp);

					} else {
						if (temp[2].equals("timeline")) {
							req.getRequestDispatcher("/views/web/timeline.jsp").forward(req, resp);
						} else if (temp[2].equals("friends")) {
							req.setAttribute("FRIENDS", friendService.findAllFriendsById(model.getId()));
							req.getRequestDispatcher("/views/web/friends.jsp").forward(req, resp);
						} else if (temp[2].equals("about")) {
							req.getRequestDispatcher("/views/web/about.jsp").forward(req, resp);
						} else if (temp[2].equals("videos")) {
							req.getRequestDispatcher("/views/web/videos.jsp").forward(req, resp);
						} else if (temp[2].equals("photos")) {
							req.getRequestDispatcher("/views/web/photos.jsp").forward(req, resp);
						} else if (temp[2].equals("settings")) {
							resp.sendRedirect(
									req.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=danger");
						}
					}

				}

			}
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
