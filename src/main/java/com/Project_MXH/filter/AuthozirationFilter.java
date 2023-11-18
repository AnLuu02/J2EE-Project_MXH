package com.Project_MXH.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Project_MXH.model.UserModel;
import com.Project_MXH.utils.SessionUtil;

public class AuthozirationFilter implements Filter {

	private ServletContext context;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		UserModel model = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
		String url = req.getRequestURI();

//		if (url.equals(req.getContextPath() + "/") || url.equals(req.getContextPath() + "/trang-chu")) {
//			if (model != null) {
//				req.getRequestDispatcher("/trang-chu").forward(req, resp);
//			} else {
//				if (url.equals(req.getContextPath() + "/trang-chu")) {
//					resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=danger");
//					
//				} else {
//					resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
//				}
//			}
//		} else
		if (url.startsWith(req.getContextPath() + "/admin")) {
			if (model != null) {
				if (model.getRole().getCode().equals("ADMIN")) {
					chain.doFilter(request, response);
				} else if (model.getRole().getCode().equals("USER")) {
					resp.sendRedirect(
							req.getContextPath() + "/dang-nhap?action=login&message=not_permission&alert=danger");
				}
			} else {
				resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=danger");

			}
		} else {
			chain.doFilter(req, resp);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();

	}

}
