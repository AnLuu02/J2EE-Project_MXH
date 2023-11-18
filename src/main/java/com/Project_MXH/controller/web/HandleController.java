package com.Project_MXH.controller.web;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.Project_MXH.model.UserModel;
import com.Project_MXH.service.IFriendService;
import com.Project_MXH.service.IUserService;
import com.Project_MXH.service.impl.UserService;
import com.Project_MXH.utils.FormUtil;
import com.Project_MXH.utils.SessionUtil;
import com.google.gson.Gson;

@WebServlet({ "/handle" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class HandleController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Inject
	private IUserService userService = new UserService();
	@Inject
	private IFriendService friendService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");		UserModel model = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
		String id_user = req.getParameter("id_user");
		String action = req.getParameter("action");
		System.out.println("action" + action);
		// xử lí thêm bạn
		if (action.equals("add")) {
			if (model != null && id_user != null) {
				friendService.addFriends(model, Long.parseLong(id_user), "waiting");
				resp.getWriter().write("success");
			} else {
				resp.getWriter().write("error");
			}

		}
		// hủy lời mời kết bạn
		else if (action.equals("delete_invitation")) {
			if (model != null && id_user != null) {
				userService.deleteInvitation(model, Long.parseLong(id_user));
				resp.getWriter().write("success");
			} else {
				resp.getWriter().write("error");
			}
		}
		// hủy bạn bè
		else if (action.equals("delete_friend")) {
			if (model != null && id_user != null) {
				friendService.deleteFriend(model, Long.parseLong(id_user));
				resp.getWriter().write("success");
			} else {
				resp.getWriter().write("error");
			}
		}
		// đồng ý kết bạn
		else if (action.equals("accepted")) {
			if (model != null && id_user != null) {
				friendService.updateFriend(model, Long.parseLong(id_user));
				resp.getWriter().write("success");
			} else {
				resp.getWriter().write("error");
			}
		}

		// lấy thông tin bạn bè đã gửi lời mời thêm bạn
		else if (action.equals("find_user")) {
			if (model != null && id_user != null) {
				UserModel user = userService.findUserById(Long.parseLong(id_user));
				if (user != null) {
					resp.getWriter().write(new Gson().toJson(user));
				} else {
					resp.getWriter().write("error");
				}
			} else {
				resp.getWriter().write("error");
			}
		}

		// lấy danh sach bbạn bè
		else if (action.equals("find_all_friend")) {
			if (model != null && id_user != null) {
				UserModel user = (UserModel) friendService.findAllFriendsById(Long.parseLong(id_user));
				if (user != null) {
					resp.getWriter().write(new Gson().toJson(user));
				} else {
					resp.getWriter().write("error");
				}
			} else {
				resp.getWriter().write("error");
			}
		}
		// xóa ảnh đại diện
		else if (action.equals("delete_avatar")) {
			String fileName = req.getParameter("file_name");
			String filePath = getServletContext().getRealPath("") + "photos";
			if (model != null && id_user != null) {
				if (userService.deleteImg(Long.parseLong(id_user)) != null) {
					resp.getWriter().write("success");
					model = userService.findUserById(Long.parseLong(id_user));
					SessionUtil.getInstance().setValue(req, "USERMODEL", model);
					if (fileName != null && filePath != null) {
						removeFile(fileName, filePath);
					}
				} else {
					resp.getWriter().write("error");
				}
			} else {
				resp.getWriter().write("error");
			}
		} else if (action.equals("delete_wall_img")) {
			String fileName = req.getParameter("file_name");
			String filePath = getServletContext().getRealPath("") + "photos";
			if (model != null && id_user != null) {
				if (userService.deleteWallImg(Long.parseLong(id_user)) != null) {
					resp.getWriter().write("success");
					model = userService.findUserById(Long.parseLong(id_user));
					SessionUtil.getInstance().setValue(req, "USERMODEL", model);
					if (fileName != null && filePath != null) {
						removeFile(fileName, filePath);
					}
				} else {
					resp.getWriter().write("error");
				}
			} else {
				resp.getWriter().write("error");
			}
		} else if (action.equals("edit_profile")) {
			UserModel formUserModel = FormUtil.toModel(UserModel.class, req);
			System.out.println("1: " + formUserModel.getDisplay_name());
			System.out.println("2: " + formUserModel.getEmail());
			System.out.println("3: " + formUserModel.getPassword());
			System.out.println("4: " + formUserModel.getOccupation());
			System.out.println("5: " + formUserModel.getEducation());
			System.out.println("6: " + formUserModel.getStudy_at());
			System.out.println("7: " + formUserModel.getCountry());
			System.out.println("8: " + formUserModel.getGender());
			System.out.println("9: " + formUserModel.getHobbies());
			System.out.println("10: " + formUserModel.getPhone_number());
			System.out.println("11: " + formUserModel.getDate_of_birth());
			System.out.println("12: " + formUserModel.getAbout());

			if (userService.updateProfile(Long.parseLong(id_user), formUserModel) != null) {
				model = userService.findUserById(Long.parseLong(id_user));
				SessionUtil.getInstance().setValue(req, "USERMODEL", model);
				JSONObject jsonResponse = new JSONObject();
				jsonResponse.put("error", 0);
				resp.getWriter().write(jsonResponse.toString());

			} else {
				JSONObject jsonResponse = new JSONObject();
				jsonResponse.put("error", 1);
				resp.getWriter().write(jsonResponse.toString());
			}
		}
	}

	private void removeFile(String fileName, String root) {
		String filePath = root + File.separator + fileName;
		File fileToDelete = new File(filePath);
		// Kiểm tra xem tệp có tồn tại hay không
		if (fileToDelete.exists()) {
			if (fileToDelete.delete()) {
				System.out.println("Tệp đã được xóa thành công!");
				// Xử lý tiếp theo nếu cần
			} else {
				System.out.println("Xóa tệp thất bại.");
				// Xử lý lỗi nếu cần
			}
		} else {
			System.out.println("Tệp không tồn tại.");
			// Xử lý nếu tệp không tồn tại
		}

	}
}