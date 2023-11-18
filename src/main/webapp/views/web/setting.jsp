<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="merged20" id="page-contents">
				<%@ include file="/common/web/profile/header.jsp"%>
				<div class="">
					<div class="central-meta">
						<div class="about">
							<div class="d-flex flex-row mt-2">
								<ul class="nav nav-tabs nav-tabs--vertical nav-tabs--left">
									<li class="nav-item"><a href="#gen-setting"
										class="nav-link active" data-toggle="tab"><i
											class="fa fa-gear"></i> General Setting</a></li>
									<li class="nav-item"><a href="#edit-profile"
										class="nav-link" data-toggle="tab"><i class="fa fa-pencil"></i>
											Edit Profile</a></li>
									<li class="nav-item"><a href="#notifi" class="nav-link"
										data-toggle="tab"><i class="fa fa-bell"></i> Notification</a>
									</li>
									<li class="nav-item"><a href="#messages" class="nav-link"
										data-toggle="tab"><i class="fa fa-comment"></i> Messages</a></li>
									<li class="nav-item"><a href="#weather" class="nav-link"
										data-toggle="tab"><i class="fa fa-cloud"></i> Weather
											Setting</a></li>
									<li class="nav-item"><a href="#page-manage"
										class="nav-link" data-toggle="tab"><i
											class="fa fa-pencil-square-o"></i>Widgets Setting</a></li>
									<li class="nav-item"><a href="#privacy" class="nav-link"
										data-toggle="tab"><i class="fa fa-shield"></i> Privacy &
											Data</a></li>
									<li class="nav-item"><a href="#security" class="nav-link"
										data-toggle="tab"><i class="fa fa-lock"></i> Security</a></li>
									<li class="nav-item"><a href="#apps" class="nav-link"
										data-toggle="tab"><i class="fa fa-th"></i> Apps</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane fade show active" id="gen-setting">
										<div class="set-title">
											<h5>General Setting</h5>
											<span>Set your login preference, help us personalize
												your experience and make big account change here.</span>
										</div>
										<div class="onoff-options ">
											<form method="post">
												<div class="setting-row">
													<span>Sub users</span>
													<p>Enable this if you want people to follow you</p>
													<input type="checkbox" id="switch00" /> <label
														for="switch00" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Enable follow me</span>
													<p>Enable this if you want people to follow you</p>
													<input type="checkbox" id="switch01" /> <label
														for="switch01" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Send me notifications</span>
													<p>Send me notification emails my friends like, share
														or message me</p>
													<input type="checkbox" id="switch02" /> <label
														for="switch02" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Text messages</span>
													<p>Send me messages to my cell phone</p>
													<input type="checkbox" id="switch03" /> <label
														for="switch03" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Enable tagging</span>
													<p>Enable my friends to tag me on their posts</p>
													<input type="checkbox" id="switch04" /> <label
														for="switch04" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Enable sound Notification</span>
													<p>You'll hear notification sound when someone sends
														you a private message</p>
													<input type="checkbox" id="switch05" checked="" /> <label
														for="switch05" data-on-label="ON" data-off-label="OFF"></label>
												</div>

												<div class="submit-btns">
													<button type="button" class="main-btn" data-ripple="">
														<span>Save</span>
													</button>
													<button type="button" class="main-btn3" data-ripple="">
														<span>Cancel</span>
													</button>
												</div>
											</form>
										</div>
										<div class="account-delete">
											<h5>Account Changes</h5>
											<div>
												<span>Hide Your Posts and profile </span>
												<button type="button" class="">
													<span>Deactivate account</span>
												</button>
											</div>
											<div>
												<span>Delete your account and data </span>
												<button type="button" class="">
													<span>close account</span>
												</button>
											</div>
										</div>
									</div>
									<!-- general setting -->
									<div class="tab-pane fade" id="edit-profile">
										<div class="set-title">
											<h5>Chỉnh sửa thông tin</h5>
											<span>Mọi người sẽ nhìn thấy thông tin bạn đã chỉnh
												sửa</span>
										</div>
										<div class="setting-meta">
											<div class="change-photo">
												<figure>
													<c:if test="${not empty USER.getAvatar_url() }">
														<img src="${USER.getAvatar_url() }" alt="">
													</c:if>
													<c:if test="${empty USER.getAvatar_url() }">
														<img
															src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />"
															alt="">
													</c:if>
												</figure>
												<div class="edit-img">
													<form class="edit-phto">

														<label class="fileContainer"> <i
															class="fa fa-camera-retro"></i> Chage DP <input
															type="file">
														</label>
													</form>
												</div>
											</div>
										</div>
										<div class="stg-form-area">
											<form method="post" class="c-form" id="form_edit_profile" enctype="multipart/form-data">

												<input type="text" name="action" value="edit_profile" hidden>
												<input type="text" name="id_user" value="${USER.getId()}"
													hidden>


												<div class="row">
													<div class="col">
														<label>Tên đầy đủ</label> <input type="text"
															value="${USER.getFull_name() }" name="full_name">
															<span class="error_message"
																			id="error_full_name">Có lỗi xảy ra</span>
													</div>
													<div class="col">
														<label>Tên hiển thị</label> <input type="text"
															value="${USER.getDisplay_name() }" name="display_name">
															<span class="error_message"
																			id="error_display_name">Có lỗi xảy ra</span>
													</div>

												</div>
												<div class="row">
													<div class="col">
														<label>Địa chỉ email</label> <input type="text"
															placeholder="abc@gmail.com" value="${USER.getEmail()}"
															name="email">
															<span class="error_message"
																			id="error_email">Có lỗi xảy ra</span>
													</div>

													<div class="col">
														<label>Mật khẩu</label> <input type="password"
															placeholder="abc@gmail.com"
															value="${USER.getPassword() }" name="password">
															<span class="error_message"
																			id="error_password">Có lỗi xảy ra</span>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<label>Công việc</label> <input type="text"
															placeholder="Kỹ sư,..." value="${USER.getOccupation() }"
															name="occupation">
															<span class="error_message"
																			id="error_occupation">Có lỗi xảy ra</span>
													</div>
													<div class="col">
														<label>Học vấn</label> <select value="" name="education">
															<option value="">Tuy chọn</option>
															<option value="hocsinh">Học sinh</option>
															<option value="sinhvien">Sinh viên</option>
															<option value="datotnghiep">Đã tốt nghiệp</option>
															<option value="caohoc">Cao học</option>
															<option value="khac">Khác</option>

														</select>
														<span class="error_message"
																			id="error_education">Có lỗi xảy ra</span>
													</div>
												</div>

												<div class="row">
													<div class="col">
														<label>Học hoặc làm việc tại:</label> <input type="text"
															placeholder="Ex.San Francisco, CA"
															value="${USER.getStudy_at() }" name="study_at">
															<span class="error_message"
																			id="error_study_at">Có lỗi xảy ra</span>
													</div>
													<div class="col">
														<label>Quê quán</label> <input type="text"
															placeholder="Ex.San Francisco, CA"
															value="${USER.getCountry() }" name="country">
															<span class="error_message"
																			id="error_country">Có lỗi xảy ra</span>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<label>Giới tính</label>
														<div class="form-radio">
															<div class="radio">
																<label> <input type="radio" value="male"
																	${USER.getGender() eq 'male' ? 'checked' :'' }
																	name="gender"><i class="check-box"></i>Nam
																</label>
															</div>
															<div class="radio">
																<label> <input type="radio" value="female"
																	name="gender"
																	${USER.getGender() eq 'female' ? 'checked':'' }><i
																	class="check-box"></i>Nữ
																</label>
															</div>
															<div class="radio">
																<label> <input type="radio" value="other"
																	name="gender"
																	${USER.getGender() eq 'other' ? 'checked':'' }><i
																	class="check-box"></i>Tùy chỉnh
																</label>
															</div><br>
															<span class="error_message"
																			id="error_gender">Có lỗi xảy ra</span>
														</div>
													</div>
													<div class="col">
														<label>Sở thích</label> <select id="hobbies"
															name="hobbies" multiple>
															<option value="nghenhac">Nghe nhạc</option>
															<option value="bongda">Bóng đá</option>
															<option value="ngu">Ngủ</option>
															<option value="trochoidientu">Trò chơi điện tử</option>
															<option value="caulong">Cầu long</option>
															<option value="dulich">Du lịch</option>
															<option value="anuong">Ăn uống</option>
															<option value="cahat">Ca hát</option>
															<option value="docsach">Đọc sách</option>
															<option value="choidan">Chơi đàn</option>
														</select>
														<span class="error_message"
																			id="error_hobbies">Có lỗi xảy ra</span>
													</div>
												</div>

												<div class="row">
													<div class="col">
														<label>Số điện thoại</label> <input type="text"
															placeholder="0123......" name="phone_number" value="${USER.getPhone_number() }">
															<span class="error_message"
																			id="error_phone_number">Có lỗi xảy ra</span>
													</div>
													<div class="col">
														<label>Ngày sinh</label> <input type="date" value="${USER.getDate_of_birth().toString() }"
															name="date_of_birth">
															<span class="error_message"
																			id="error_date_of_birth">Có lỗi xảy ra</span>
													</div>
												</div>
												<div>
													<label>Giới thiệu về bạn</label>
													<textarea rows="3"
														placeholder="write someting about yourself" name="about" value="${USER.getAbout() }"></textarea>
														<span class="error_message"
																			id="error_about">Có lỗi xảy ra</span>
												</div>

												<div class="submit-btns">
													<button type="button" class="main-btn" data-ripple=""
														id="save_edit_profile">
														<span>Save</span>
													</button>
													<button type="button" class="main-btn3" data-ripple="">
														<span>Cancel</span>
													</button>
												</div>
											</form>
										</div>
									</div>
									<!-- edit profile -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- centerl meta -->

			</div>
		</div>
	</div>
</body>
</html>