<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="user-profile">
	<!-- <figure>
	<c:if test="${not empty USER }">
		<div class="edit-pp">
			<label class="fileContainer" data-toggle="modal" data-target="#myModalWallImg"><i
					class="fa fa-camera"></i></label>
		</div>
	</c:if>

	<c:if test="${USER.id == USER_PROFILE.id && not empty USER.wall_img_url }">
		<img alt="author" src="${USER.wall_img_url }" />
	</c:if>
	<c:if test="${USER.id != USER_PROFILE.id && not empty USER_PROFILE.wall_img_url }">
		<img alt="author" src="${USER_PROFILE.wall_img_url }" />
	</c:if>
	<ul class="profile-controls">
		<c:if test="${USER.getId() != USER_PROFILE.getId() }">
			<li><a href="#" title="Thêm bạn" data-toggle="tooltip" class="add_friend" id_user="${USER_PROFILE.id }"
					state_add_fr="${USER.getId() == USER_PROFILE.getFriend().getUser_id()? USER_PROFILE.getFriend().getState_accept() :(USER.getId() == USER_PROFILE.getFriend().getFriend_id())?'accepted':''}"><i
						class="fa fa-user-plus" id="icon_add_fr"></i></a></li>
		</c:if>
		<c:if test="${USER.getId() == USER_PROFILE.getId() }">
			<li style="display: none"><a href="#" title="Thêm bạn" data-toggle="tooltip" class="add_friend"
					id_user="${USER_PROFILE.id }"
					state_add_fr="${USER.getId() == USER_PROFILE.getFriend().getUser_id()? USER_PROFILE.getFriend().getState_accept() :(USER.getId() == USER_PROFILE.getFriend().getFriend_id())?'accepted':''}"><i
						class="fa fa-user-plus" id="icon_add_fr"></i></a></li>
		</c:if>
		<li><a href="#" title="Follow" data-toggle="tooltip"><i class="fa fa-star"></i></a></li>
		<li><a class="send-mesg" href="#" title="Send Message" data-toggle="tooltip"><i class="fa fa-comment"></i></a>
		</li>
		<li>
			<div class="edit-seting" title="Edit Profile image">
				<a href="/Project_MXH/profile/${ USER.getEmail().split('@')[0]}/settings">
					<i class="fa fa-sliders"></i>
				</a>
			</div>
		</li>
	</ul>

</figure> -->


	<figure>
		<c:if test="${not empty USER }">
			<div class="edit-pp">
				<label class="fileContainer" data-toggle="modal"
					data-target="#myModalWallImg"><i class="fa fa-camera"></i></label>
			</div>
		</c:if>
		<div class="dropdown">
			<c:if
				test="${USER.id == USER_PROFILE.id && empty USER.wall_img_url }">
				<img alt="author"
					src="<c:url value="/layouts/web/images/wall_img_macdinh.jpg" />"
					id="dropdownMenuWallImg" data-bs-toggle="dropdown"
					aria-expanded="false" data-bs-offset="600,-100" />
			</c:if>
			<c:if
				test="${USER.id != USER_PROFILE.id && empty USER_PROFILE.wall_img_url }">
				<img alt="author"
					src="<c:url value="/layouts/web/images/wall_img_macdinh.jpg" />"
					id="dropdownMenuWallImg" data-bs-toggle="dropdown"
					aria-expanded="false" data-bs-offset="600,-100" />
			</c:if>
			<c:if
				test="${USER.id == USER_PROFILE.id && not empty USER.wall_img_url }">
				<img alt="author" src="${USER.wall_img_url }"
					id="dropdownMenuWallImg" data-bs-toggle="dropdown"
					aria-expanded="false" data-bs-offset="600,-100" />
			</c:if>
			<c:if
				test="${USER.id != USER_PROFILE.id && not empty USER_PROFILE.wall_img_url }">
				<img alt="author" src="${USER_PROFILE.wall_img_url }"
					id="dropdownMenuWallImg" data-bs-toggle="dropdown"
					aria-expanded="false" data-bs-offset="600,-100" />
			</c:if>


			<ul class="dropdown-menu" aria-labelledby="dropdownMenuWallImg"
				style="padding: 10px; box-shadow: 1px 2px 10px 1px rgba(0, 0, 0, .2);">
				<c:if test="${empty USER.wall_img_url }">
					<li><a class="dropdown-item" href="#"
						style="color: black !important" id="" data-toggle="modal"
						data-target="#myModalWallImg"><i class="fa fa-images"></i>Chọn
							ảnh bìa</a></li>
					<li><a class="dropdown-item" href="#"
						style="color: black !important" id=""><i class="fa fa-upload"></i>Tải
							ảnh lên</a></li>
				</c:if>
				<c:if test="${not empty USER.wall_img_url }">
					<li><a class="dropdown-item" href="#"
						style="color: black !important" data-toggle="modal"
						data-target="#img-avatar"><i class="fa fa-eye"></i>Xem ảnh bìa</a></li>
					<li><a class="dropdown-item" href="#"
						style="color: black !important" id="submit_delete_upload_wall_img"><i
							class="fa fa-notdef"></i>Gỡ ảnh</a></li>
				</c:if>
			</ul>

		</div>
		<ul class="profile-controls">
			<c:if test="${USER.getId() != USER_PROFILE.getId() }">
				<li>
					<div class="dropdown">
						<!-- id="dropdownMenuLink" data-bs-toggle="dropdown"										aria-expanded="false" -->
						<a href="#" title="Thêm bạn" data-toggle="tooltip"
							class="add_friend" id_user="${USER_PROFILE.id }"
							state_add_fr="${USER.getId() == USER_PROFILE.getFriend().getUser_id()? USER_PROFILE.getFriend().getState_accept() :(USER.getId() == USER_PROFILE.getFriend().getFriend_id())?'accepted':''}"><i
							class="fa fa-user-plus" id="icon_add_fr"></i></a>

						<ul class="dropdown-menu huyketban"
							aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="#">Hủy bạn bè</a></li>
							<li><a class="dropdown-item"
								href="/Project_MXH/profile/${ user.getEmail().split('@')[0]}">Xem
									trang cá nhân</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul>
					</div>
				</li>
			</c:if>
			<c:if test="${USER.getId() == USER_PROFILE.getId() }">
				<li style="display: none"><a href="#" title="Thêm bạn"
					data-toggle="tooltip" class="add_friend"
					id_user="${USER_PROFILE.id }"
					state_add_fr="${USER.getId() == USER_PROFILE.getFriend().getUser_id()? USER_PROFILE.getFriend().getState_accept() :(USER.getId() == USER_PROFILE.getFriend().getFriend_id())?'accepted':''}"><i
						class="fa fa-user-plus" id="icon_add_fr"></i></a></li>
			</c:if>
			<li><a href="#" title="Follow" data-toggle="tooltip"><i
					class="fa fa-star"></i></a></li>
			<li><a class="send-mesg" href="#" title="Send Message"
				data-toggle="tooltip"><i class="fa fa-comment"></i></a></li>
			<li>
				<div class="edit-seting" title="Edit Profile image">
					<a
						href="/Project_MXH/profile/${ USER.getEmail().split('@')[0]}/settings">
						<i class="fa fa-sliders"></i>
					</a>
				</div>
			</li>
		</ul>

	</figure>
	<div class="profile-section">
		<div class="row">
			<div class="col-lg-2 col-md-3">
				<!-- <div class="profile-author">
					<div class="profile-author-thumb">
						<c:if test="${USER.id == USER_PROFILE.id && empty USER.avatar_url }">
							<img alt="author" src="<c:url value=" /layouts/web/images/avatar_macdinh.jpg" />">
						</c:if>
						<c:if test="${USER.id == USER_PROFILE.id && not empty USER.avatar_url }">
							<img alt="author" src="${USER.avatar_url }" />
						</c:if>
						<c:if test="${USER.id != USER_PROFILE.id && empty USER_PROFILE.avatar_url }">
							<img alt="author" src="<c:url value=" /layouts/web/images/avatar_macdinh.jpg" />">
						</c:if>
						<c:if test="${USER.id != USER_PROFILE.id && not empty USER_PROFILE.avatar_url }">
							<img alt="author" src="${USER_PROFILE.avatar_url }" />
						</c:if>
						<c:if test="${not empty USER }">
							<div class="edit-dp">
								<label class="fileContainer" data-toggle="modal" data-target="#myModal"><i
										class="fa fa-camera"></i></label>
							</div>
						</c:if>
					</div>
				
					<div class="author-content">
						<a class="h4 author-name" href="about">
							${USER_PROFILE.full_name }</a>
						<div class="country">Ontario, CA</div>
					</div>
				</div> -->

				<div class="profile-author">
					<div class="dropdown dropend">
						<div class="profile-author-thumb" type="button"
							id="dropdownMenuAvatar" data-bs-toggle="dropdown"
							aria-expanded="false">
							<c:if
								test="${USER.id == USER_PROFILE.id && empty USER.avatar_url }">
								<img alt="author"
									src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />">
							</c:if>
							<c:if
								test="${USER.id == USER_PROFILE.id && not empty USER.avatar_url }">
								<img alt="author" src="${USER.avatar_url }" />
							</c:if>
							<c:if
								test="${USER.id != USER_PROFILE.id && empty USER_PROFILE.avatar_url }">
								<img alt="author"
									src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />">
							</c:if>
							<c:if
								test="${USER.id != USER_PROFILE.id && not empty USER_PROFILE.avatar_url }">
								<img alt="author" src="${USER_PROFILE.avatar_url }" />
							</c:if>
							<c:if test="${not empty USER }">
								<div class="edit-dp">
									<label class="fileContainer" data-toggle="modal"
										data-target="#myModal"><i class="fa fa-camera"></i></label>
								</div>
							</c:if>
						</div>

						<ul class="dropdown-menu" aria-labelledby="dropdownMenuAvatar"
							style="padding: 10px; box-shadow: 1px 2px 10px 1px rgba(0, 0, 0, .2);">

							<c:if test="${empty USER.avatar_url }">
								<li><a class="dropdown-item" href="#"
									style="color: black !important" id="" data-toggle="modal"
									data-target="#myModal"><i class="fa fa-images"></i>Chọn ảnh
										đại diện</a></li>
								<li><a class="dropdown-item" href="#"
									style="color: black !important" id=""><i
										class="fa fa-image"></i>Ảnh đại diện đề xuất</a></li>
							</c:if>
							<c:if test="${not empty USER.avatar_url }">
								<li><a class="dropdown-item" href="#"
									style="color: black !important" data-toggle="modal"
									data-target="#img-avatar">Xem ảnh đại diện</a></li>
								<li><a class="dropdown-item" href="#"
									style="color: black !important" id="submit_delete_upload">Gỡ
										ảnh</a></li>
							</c:if>
						</ul>
					</div>


					<div class="author-content">
						<a class="h4 author-name" href="about">
							${USER_PROFILE.full_name }</a>
						<div class="country">Ontario, CA</div>
					</div>
				</div>

			</div>
			<div class="col-lg-10 col-md-9">
				<ul class="profile-menu">
					<li><a class="" href="#" id="timeline">Bài viết</a></li>
					<li><a class="" href="#" id="about">Giới thiệu</a></li>
					<li><a class="" href="#" id="friends">Bạn bè</a></li>
					<li><a class="" href="#" id="photos">Ảnh</a></li>
					<li><a class="" href="#" id="videos">Videos</a></li>
					<li>
						<div class="more">
							<i class="fa fa-ellipsis-h"></i>
							<ul class="more-dropdown">
								<li><a href="timeline-groups">Profile Groups</a></li>
								<li><a href="statistics">Profile Analytics</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ol class="folw-detail">
					<li><span>Posts</span> <ins>101</ins></li>
					<li><span>Followers</span> <ins>1.3K</ins></li>
					<li><span>Following</span> <ins>22</ins></li>
				</ol>
			</div>
		</div>
	</div>
</div>
<!-- Modal up load avatar -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Chọn ảnh đại diện</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<form method="post" enctype="multipart/form-data"
					id="form_upload_avatar">
					<c:if test="${empty USER.avatar_url }">
						<div class="form-group" style="margin: 0 0 1rem 0">
							<label for="avatar">Chọn ảnh: </label> <input type="file"
								name="avatar" id="avatarInput" accept="image/*">
						</div>
						<div style="text-align: center" id="img_minhoa_avatar"></div>
					</c:if>
					<input name="id_user" id="id_user" hidden="true"
						value="${USER.getId() }" /> <input name="category_img"
						id="category_img" hidden="true" value="avatar_img" />
					<c:if test="${not empty USER.avatar_url }">
						<div style="text-align: center" id="img_minhoa_avatar">
							<img src="${USER.avatar_url }" style="width: 80%; height: auto" />
						</div>
					</c:if>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					style="border-radius: 3px; margin: 4px; font-size: 16px">Đóng</button>
				<c:if test="${empty USER.avatar_url }">

					<button type="button" class="btn btn-primary" id="submit_upload">Lưu</button>
				</c:if>
				<!--<c:if test="${not empty USER.avatar_url }">

					<button type="button" class="btn btn-primary"
						id="submit_delete_upload">Gõ ảnh</button>
				</c:if>-->
			</div>
		</div>

	</div>
</div>
<!-- Modal -->

<!-- Modal up load wall img -->
<div class="modal fade" id="myModalWallImg" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Chọn ảnh tường</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<form method="post" enctype="multipart/form-data"
					id="form_upload_wall_img">
					<c:if test="${empty USER.wall_img_url }">
						<div class="form-group" style="margin: 0 0 1rem 0">
							<label for="avatar">Chọn ảnh: </label> <input type="file"
								name="avatar" id="wallInput" accept="image/*">

						</div>
						<div style="text-align: center" id="img_minhoa_wall_img"></div>

					</c:if>

					<input name="id_user" id="id_user" hidden="true"
						value="${USER.getId() }" /> <input name="category_img"
						id="category_img" hidden="true" value="wall_img" />

					<c:if test="${not empty USER.wall_img_url }">
						<div style="text-align: center" id="img_minhoa_wall_img">
							<img src="${USER.wall_img_url }" style="width: 80%; height: auto" />
						</div>
					</c:if>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					style="border-radius: 3px; margin: 4px; font-size: 16px">Đóng</button>
				<c:if test="${empty USER.wall_img_url }">

					<button type="button" class="btn btn-primary"
						id="submit_upload_wall_img">Lưu</button>
				</c:if>
				<c:if test="${not empty USER.wall_img_url }">

					<button type="button" class="btn btn-primary"
						id="submit_delete_upload_wall_img">Gõ ảnh</button>
				</c:if>
			</div>
		</div>

	</div>
</div>
<!-- Modal -->

<!-- Modal img avatar -->
<div class="modal fade" id="img-avatar">
	<div class="modal-dialog modal-xl">
		<div class="modal-content" style="">

			<!-- Modal Header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="row">
					<div class="col-lg-8">
						<div class="pop-image">
							<div class="pop-item">

								<img src="images/resources/blog-detail.jpg" alt="">
								</figure>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="user">
							<figure>
								<img src="images/resources/user1.jpg" alt=""
									style="width: 40px; height: 40px">
							</figure>
							<div class="user-information">
								<h4>
									<a href="#" title="">Danile Walker</a>
								</h4>
								<span>2 hours ago</span>
							</div>
							<a href="#" title="Follow" data-ripple="">Follow</a>
						</div>
						<div class="we-video-info">
							<ul>
								<li>
									<div title="Like/Dislike" class="likes heart">
										❤ <span>2K</span>
									</div>
								</li>
								<li><span title="Comments" class="comment"> <i
										class="fa fa-commenting"></i> <ins>52</ins>
								</span></li>

								<li><span> <a title="Share" href="#" class=""> <i
											class="fa fa-share-alt"></i>
									</a> <ins>20</ins>
								</span></li>
							</ul>
							<div class="users-thumb-list">
								<a href="#" title="" data-toggle="tooltip"
									data-original-title="Anderw"> <img
									src="images/resources/userlist-1.jpg" alt="">
								</a> <a href="#" title="" data-toggle="tooltip"
									data-original-title="frank"> <img
									src="images/resources/userlist-2.jpg" alt="">
								</a> <a href="#" title="" data-toggle="tooltip"
									data-original-title="Sara"> <img
									src="images/resources/userlist-3.jpg" alt="">
								</a> <a href="#" title="" data-toggle="tooltip"
									data-original-title="Amy"> <img
									src="images/resources/userlist-4.jpg" alt="">
								</a> <span><strong>You</strong>, <b>Sarah</b> and <a title=""
									href="#">24+ more</a> liked</span>
							</div>
						</div>
						<div style="display: block;" class="coment-area">
							<ul class="we-comet">
								<li>
									<div class="comet-avatar">
										<img alt="" src="images/resources/nearly3.jpg"
											style="width: 40px; height: 40px">
									</div>
									<div class="we-comment">
										<h5>
											<a title="" href="time-line.html">Jason borne</a>
										</h5>
										<p>we are working for the dance and sing songs. this video
											is very awesome for the youngster. please vote this video and
											like our channel</p>
										<div class="inline-itms">
											<span>1 year ago</span> <a title="Reply" href="#"
												class="we-reply"><i class="fa fa-reply"></i></a> <a title=""
												href="#"><i class="fa fa-heart"></i><span>20</span></a>
										</div>
									</div>

								</li>


								<li><a class="showmore underline" title="" href="#">more
										comments+</a></li>
								<li class="post-comment">
									<div class="comet-avatar">
										<img alt="" src="images/resources/nearly1.jpg"
											style="width: 40px; height: 40px">
									</div>
									<div class="post-comt-box">
										<form method="post">
											<textarea placeholder="Post your comment"></textarea>
											<div class="add-smiles">
												<div class="uploadimage">
													<i class="fa fa-image"></i> <label class="fileContainer">
														<input type="file">
													</label>
												</div>
												<span title="add icon" class="em em-expressionless"></span>
												<div class="smiles-bunch">
													<i class="em em---1"></i> <i class="em em-smiley"></i> <i
														class="em em-anguished"></i> <i class="em em-laughing"></i>
													<i class="em em-angry"></i> <i class="em em-astonished"></i>
													<i class="em em-blush"></i> <i class="em em-disappointed"></i>
													<i class="em em-worried"></i> <i
														class="em em-kissing_heart"></i> <i class="em em-rage"></i>
													<i class="em em-stuck_out_tongue"></i>
												</div>
											</div>

											<button type="submit"></button>
										</form>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>