package com.Project_MXH.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Project_MXH.model.UserModel;
import com.Project_MXH.service.IUserService;
import com.Project_MXH.utils.FormUtil;
import com.Project_MXH.utils.SessionUtil;

@WebServlet({"/dang-nhap", "/thoat" })
public class LoginController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	ResourceBundle rs = ResourceBundle.getBundle("message");
	@Inject
	private IUserService userService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserModel model = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
		String action = req.getParameter("action");
		if (model != null) {
			if (action != null && action.equals("logout")) {
				SessionUtil.getInstance().removeValue(req, "USERMODEL");
				resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
			}
			else if (model.getRole().getCode().equals("USER")) {
				resp.sendRedirect(req.getContextPath() + "/trang-chu");
			} else if (model.getRole().getCode().equals("ADMIN")) {
				resp.sendRedirect(req.getContextPath() + "/admin-home");
			}
		} else {
			if (action != null && action.equals("login")) {
				String message = req.getParameter("message");
				String alert = req.getParameter("alert");
				if (message != null && alert != null) {
					req.setAttribute("message", rs.getString(message));
				}
				req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
			} else {
				resp.sendRedirect(req.getContextPath()
						+ "/dang-nhap?action=login&message=username_password_invalid&alert=danger");
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("email_login");
		String password = req.getParameter("password_login");
		System.out.println(username);System.out.println(password);
		UserModel model = new UserModel();
		if(username != null && password != null) {
			model = userService.findUser(username, password);
			if (model != null) {
				model = userService.findUser(username, password);
				SessionUtil.getInstance().setValue(req, "USERMODEL", model);
				if (model.getRole().getCode().equals("USER")) {
					resp.getWriter().write("USER_SUCCESS_LOGIN");
				} else if (model.getRole().getCode().equals("ADMIN")) {
					resp.getWriter().write("ADMIN_SUCCESS_LOGIN");
				}
			} else {
				resp.getWriter().write("NOT_FOUND");
			}
		}
		else {
			UserModel model_register = FormUtil.toModel(UserModel.class, req);
			System.out.println(model_register.getEmail());
			System.out.println(model_register.getPassword());
			System.out.println(model_register.getGender());
			System.out.println(model_register.getFull_name());
			System.out.println(model_register.getDate_of_birth());
			
			if(userService.findUser(model_register.getEmail(),null) != null){
				System.out.print("email da ton tai");
				resp.getWriter().write("email_exits");
			}
			else {
				Long id = userService.insertUser(model_register);
				if(id != null ) {
					System.out.println("suceess");
					resp.getWriter().write("success");					
				}else {
					resp.getWriter().write("error");
				}
			}
		}

	}
}