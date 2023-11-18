package com.Project_MXH.controller.web;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.json.JSONObject;

import com.Project_MXH.model.UserModel;
import com.Project_MXH.service.IUserService;
import com.Project_MXH.service.impl.UserService;
import com.Project_MXH.utils.SessionUtil;

@WebServlet({ "/upload-avatar" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadImageController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Inject
	private IUserService userService = new UserService();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// Định dạng thời gian nhập vào
			String id_user = req.getParameter("id_user");
			String category_img = req.getParameter("category_img");
			String uploadPath = getServletContext().getRealPath("") + File.separator + "photos";
			File dir = new File(uploadPath);

			if (!dir.exists()) { // tạo nếu chưa tồn tại
				if (dir.mkdirs()) {
					System.out.println("Thu muc da dc tao");
				} else {
					System.out.println("Errror");
				}
			} else {
				System.out.println(dir);
			}
			// lưu các file upload vào thư mục files
			Part avatar = req.getPart("avatar");
			String fileName = UUID.randomUUID().toString() + "_" + getFileName(avatar);

			if (avatar != null) {
				avatar.write(uploadPath + File.separator + fileName);

				if (category_img != null && category_img.equals("avatar_img")) {
					if (userService.uploadImg(Long.parseLong(id_user), 0L, req.getContextPath() + "/photos/" + fileName,
							"avatar") != null) {
						JSONObject jsonResponse = new JSONObject();
						jsonResponse.put("error", 0);
						jsonResponse.put("url_img", req.getContextPath() + "/photos/" + fileName);
						UserModel model = userService.findUserById(Long.parseLong(id_user));
						SessionUtil.getInstance().setValue(req, "USERMODEL", model);

						// Ghi phản hồi JSON vào PrintWriter
						resp.getWriter().write(jsonResponse.toString());
					} else {
						JSONObject jsonResponse = new JSONObject();
						jsonResponse.put("error", 1);
						resp.getWriter().write(jsonResponse.toString());
					}
				} else if (category_img != null && category_img.equals("wall_img")) {
					if (userService.uploadWallImg(Long.parseLong(id_user), 0L,
							req.getContextPath() + "/photos/" + fileName, "wall_img") != null) {
						JSONObject jsonResponse = new JSONObject();
						jsonResponse.put("error", 0);
						jsonResponse.put("url_img", req.getContextPath() + "/photos/" + fileName);
						UserModel model = userService.findUserById(Long.parseLong(id_user));
						SessionUtil.getInstance().setValue(req, "USERMODEL", model);
						// Ghi phản hồi JSON vào PrintWriter
						resp.getWriter().write(jsonResponse.toString());
					} else {
						JSONObject jsonResponse = new JSONObject();
						jsonResponse.put("error", 1);
						resp.getWriter().write(jsonResponse.toString());
					}
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String getFileName(final Part part) {
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

}