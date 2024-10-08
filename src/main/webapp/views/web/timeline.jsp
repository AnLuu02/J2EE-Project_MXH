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
			<div class="row merged20" id="page-contents">
				<!-- user profile banner  -->
				<%@ include file="/common/web/profile/header.jsp"%>

				<div class="col-lg-4 col-md-4">
					<aside class="sidebar">
						<div class="central-meta stick-widget">
							<span class="create-post">Thông tin</span>
							<div class="personal-head">
								<c:if test="${ not empty USER_PROFILE.getAbout() }">
									<span class="f-title"><i class="fa fa-user"></i> Giới
										thiệu:</span>
									<p>${USER_FROFILE.getAbout() }</p>
								</c:if>
								<c:if test="${ not empty USER_PROFILE.getDate_of_birth() }">
									<span class="f-title"><i class="fa fa-birthday-cake"></i>
										Ngày sinh:</span>
									<fmt:formatDate value="${USER_PROFILE.getDate_of_birth()}" pattern="dd-MM-yyyy"
										var="formattedDate" />

									<p>${formattedDate}</p>
								</c:if>

								<c:if test="${ not empty USER_PROFILE.getPhone_number() }">
									<span class="f-title"><i class="fa fa-phone"></i> Số
										điện thoại:</span>
									<p>${USER_PROFILE.getPhone_number() }</p>
								</c:if>


								<c:if test="${ not empty USER_PROFILE.getGender() }">
									<span class="f-title"><i class="fa fa-male"></i> Giới
										tính:</span>
									<p>${USER_PROFILE.getGender() eq 'male' ? 'Nam':'Nữ' }</p>
								</c:if>


								<c:if test="${ not empty USER_PROFILE.getCountry() }">
									<span class="f-title"><i class="fa fa-globe"></i> Quê
										quán:</span>
									<p>${USER_PROFILE.getCountry() }</p>
								</c:if>

								<c:if test="${ not empty USER_PROFILE.getOccupation() }">
									<span class="f-title"><i class="fa fa-briefcase"></i>
										Nghề nghiệp:</span>
									<p>${USER_PROFILE.getOccupation() }</p>
								</c:if>

								<c:if test="${ not empty USER_PROFILE.getCreatedDate() }">
									<span class="f-title"><i class="fa fa-handshake-o"></i>
										Tham gia:</span>
									<p>${ USER_PROFILE.getCreatedDate()}</p>
								</c:if>

								<c:if test="${ not empty USER_PROFILE.getEmail() }">
									<span class="f-title"><i class="fa fa-envelope"></i>
										Email & Website:</span>
									<p>
										<a href="wpkixx.html" title="">${USER_PROFILE.getEmail() }</a>
										<!-- <a href="http://wpkixx.com/cdn-cgi/l/email-protection"
											class="__cf_email__"
											data-cfemail="ebbb829f858280ab92849e99868a8287c5888486">[email&#160;protected]</a> -->
									</p>
								</c:if>

							</div>
						</div>
					</aside>
				</div>
				<!-- sidebar -->
				<div class="col-lg-8">
					<c:if test="${not empty USER }">
						<div class="central-meta postbox">
							<span class="create-post">Create post</span>
							<div class="new-postbox">
								<figure>
									<c:if test="${not empty USER.avatar_url }">
										<img src="${USER.avatar_url }" alt="">
									</c:if>
									<c:if test="${empty USER.avatar_url }">
										<img style="width: 44px; height: 44px"
											src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />"
											alt="">
									</c:if>
								</figure>
								<div class="newpst-input">
									<form method="post">
										<textarea rows="2"
											placeholder="Share some what you are thinking?"></textarea>
									</form>
								</div>
								<div class="attachments">
									<ul>
										<li><span class="add-loc"> <i
												class="fa fa-map-marker"></i>
										</span></li>
										<li><i class="fa fa-music"></i> <label
											class="fileContainer"> <input type="file">
										</label></li>
										<li><i class="fa fa-image"></i> <label
											class="fileContainer"> <input type="file">
										</label></li>
										<li><i class="fa fa-video-camera"></i> <label
											class="fileContainer"> <input type="file">
										</label></li>
										<li><i class="fa fa-camera"></i> <label
											class="fileContainer"> <input type="file">
										</label></li>
										<li class="preview-btn">
											<button class="post-btn-preview" type="submit" data-ripple="">Preview</button>
										</li>
									</ul>
									<button class="post-btn" type="submit" data-ripple="">Post</button>
								</div>
								<div class="add-location-post">
									<span>Drag map point to selected area</span>
									<div class="row">

										<div class="col-lg-6">
											<label class="control-label">Lat :</label> <input type="text"
												class="" id="us3-lat" />
										</div>
										<div class="col-lg-6">
											<label>Long :</label> <input type="text" class=""
												id="us3-lon" />
										</div>
									</div>
									<!-- map -->
									<div id="us3"></div>
								</div>
							</div>

						</div>
						<!-- add post new box -->

						<div class="central-meta">
							<span class="create-post">Suggested Friend's <a href="#"
								title="">See All</a></span>
							<ul class="suggested-frnd-caro">
								<li><img
									src="<c:url value="/layouts/web/images/resources/recent1.jpg" />"
									alt="">
									<div class="sugtd-frnd-meta">
										<a href="#" title="">Olivia</a> <span>1 mutual friend</span>
										<ul class="add-remove-frnd">
											<li class="add-tofrndlist"><a href="#"
												title="Add friend"><i class="fa fa-user-plus"></i></a></li>
											<li class="remove-frnd"><a href="#"
												title="remove friend"><i class="fa fa-user-times"></i></a></li>
										</ul>
									</div></li>
								<li><img
									src="<c:url value="/layouts/web/images/resources/recent2.jpg" />"
									alt="">
									<div class="sugtd-frnd-meta">
										<a href="#" title="">Emma watson</a> <span>2 mutual
											friend</span>
										<ul class="add-remove-frnd">
											<li class="add-tofrndlist"><a href="#"
												title="Add friend"><i class="fa fa-user-plus"></i></a></li>
											<li class="remove-frnd"><a href="#"
												title="remove friend"><i class="fa fa-user-times"></i></a></li>
										</ul>
									</div></li>
								<li><img
									src="<c:url value="/layouts/web/images/resources/recent3.jpg" />"
									alt="">
									<div class="sugtd-frnd-meta">
										<a href="#" title="">Isabella</a> <span><a href="#"
											title="">Emmy</a> is mutual friend</span>
										<ul class="add-remove-frnd">
											<li class="add-tofrndlist"><a href="#"
												title="Add friend"><i class="fa fa-user-plus"></i></a></li>
											<li class="remove-frnd"><a href="#"
												title="remove friend"><i class="fa fa-user-times"></i></a></li>
										</ul>
									</div></li>
								<li><img
									src="<c:url value="/layouts/web/images/resources/recent4.jpg" />"
									alt="">
									<div class="sugtd-frnd-meta">
										<a href="#" title="">Amelia</a> <span>5 mutual friend</span>
										<ul class="add-remove-frnd">
											<li class="add-tofrndlist"><a href="#"
												title="Add friend"><i class="fa fa-user-plus"></i></a></li>
											<li class="remove-frnd"><a href="#"
												title="remove friend"><i class="fa fa-user-times"></i></a></li>
										</ul>
									</div></li>
								<li><img
									src="<c:url value="/layouts/web/images/resources/recent5.jpg" />"
									alt="">
									<div class="sugtd-frnd-meta">
										<a href="#" title="">Sophia</a> <span>1 mutual friend</span>
										<ul class="add-remove-frnd">
											<li class="add-tofrndlist"><a href="#"
												title="Add friend"><i class="fa fa-user-plus"></i></a></li>
											<li class="remove-frnd"><a href="#"
												title="remove friend"><i class="fa fa-user-times"></i></a></li>
										</ul>
									</div></li>
								<li><img
									src="<c:url value="/layouts/web/images/resources/recent6.jpg" />"
									alt="">
									<div class="sugtd-frnd-meta">
										<a href="#" title="">Amelia</a> <span>3 mutual friend</span>
										<ul class="add-remove-frnd">
											<li class="add-tofrndlist"><a href="#"
												title="Add friend"><i class="fa fa-user-plus"></i></a></li>
											<li class="remove-frnd"><a href="#"
												title="remove friend"><i class="fa fa-user-times"></i></a></li>
										</ul>
									</div></li>
							</ul>
						</div>
						<!-- suggested friends -->
					</c:if>
					<div class="loadMore">
						<div class="central-meta item">
							<div class="user-post">
								<div class="friend-info">
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
											alt="">
									</figure>
									<div class="friend-name">
										<div class="more">
											<div class="more-post-optns">
												<i class="ti-more-alt"></i>
												<ul>
													<li><i class="fa fa-pencil-square-o"></i>Edit Post</li>
													<li><i class="fa fa-trash-o"></i>Delete Post</li>
													<li class="bad-report"><i class="fa fa-flag"></i>Report
														Post</li>
													<li><i class="fa fa-address-card-o"></i>Boost This
														Post</li>
													<li><i class="fa fa-clock-o"></i>Schedule Post</li>
													<li><i class="fa fa-wpexplorer"></i>Select as featured</li>
													<li><i class="fa fa-bell-slash-o"></i>Turn off
														Notifications</li>
												</ul>
											</div>
										</div>
										<ins>
											<a href="time-line" title=""> ${USER.full_name }</a> share <a
												href="#" title="">link</a>
										</ins>
										<span><i class="fa fa-globe"></i> published: january,5
											2010 19:PM </span>
									</div>
									<div class="post-meta">
										<figure>
											<a href="https://www.youtube.com/watch?v=fF382gwEnG8"
												title="" data-strip-group="mygroup" class="strip vdeo-link"
												data-strip-options="width: 700,height: 450,youtube: { autoplay: 1 }">
												<img
												src="<c:url value="/layouts/web/images/resources/user-post.jpg" />"
												alt=""> <i> <svg version="1.1" class="play"
														xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
														height="55px" width="55px" viewBox="0 0 100 100"
														enable-background="new 0 0 100 100" xml:space="preserve">
																		<path class="stroke-solid" fill="none" stroke=""
															d="M49.9,2.5C23.6,2.8,2.1,24.4,2.5,50.4C2.9,76.5,24.7,98,50.3,97.5c26.4-0.6,47.4-21.8,47.2-47.7
																	C97.3,23.7,75.7,2.3,49.9,2.5" />
																		<path class="icon" fill=""
															d="M38,69c-1,0.5-1.8,0-1.8-1.1V32.1c0-1.1,0.8-1.6,1.8-1.1l34,18c1,0.5,1,1.4,0,1.9L38,69z" />
																	</svg>
											</i>
												<h2>Canada tourist spots you must visit in 2020</h2>
											</a>
											<ul class="like-dislike">
												<li><a class="bg-purple" href="#"
													title="Save to Pin Post"><i class="fa fa-thumb-tack"></i></a></li>
												<li><a class="bg-blue" href="#" title="Like Post"><i
														class="ti-thumb-up"></i></a></li>
												<li><a class="bg-red" href="#" title="dislike Post"><i
														class="ti-thumb-down"></i></a></li>
											</ul>

										</figure>
										<div class="description">
											<p>Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus
												eget condimentum rhoncus, sem quam semper libero, sit amet
												adipiscing sem neque sed ipsum. Nam quam nunc.</p>
										</div>
										<div class="we-video-info">
											<ul>
												<li><span class="views" title="views"> <i
														class="fa fa-eye"></i> <ins>1.2k</ins>
												</span></li>
												<li>
													<div class="likes heart" title="Like/Dislike">
														❤ <span>2K</span>
													</div>
												</li>
												<li><span class="comment" title="Comments"> <i
														class="fa fa-commenting"></i> <ins>52</ins>
												</span></li>

												<li><span> <a class="share-pst" href="#"
														title="Share"> <i class="fa fa-share-alt"></i>
													</a> <ins>20</ins>
												</span></li>
											</ul>
											<div class="users-thumb-list">
												<a data-toggle="tooltip" title="Anderw" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />">
												</a> <a data-toggle="tooltip" title="frank" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />">
												</a> <a data-toggle="tooltip" title="Sara" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />">
												</a> <a data-toggle="tooltip" title="Amy" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />">
												</a> <a data-toggle="tooltip" title="Ema" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />">
												</a> <span><strong>You</strong>, <b>Sarah</b> and <a
													href="#" title="">24+ more</a> liked</span>
											</div>
										</div>
									</div>
									<div class="coment-area">
										<ul class="we-comet">
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly3.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Jason borne</a>
													</h5>
													<p>we are working for the dance and sing songs. this
														video is very awesome for the youngster. please vote this
														video and like our channel</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>

											</li>
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/comet-4.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Sophia</a>
													</h5>
													<p>
														we are working for the dance and sing songs. this video is
														very awesome for the youngster. <i class="em em-smiley"></i>
													</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>
											</li>
											<li><a href="#" title="" class="showmore underline">more
													comments+</a></li>
											<li class="post-comment">
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
														alt="">
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
															<span class="em em-expressionless" title="add icon"></span>
															<div class="smiles-bunch">
																<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																	class="em em-anguished"></i> <i class="em em-laughing"></i>
																<i class="em em-angry"></i> <i class="em em-astonished"></i>
																<i class="em em-blush"></i> <i
																	class="em em-disappointed"></i> <i
																	class="em em-worried"></i> <i
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
						<div class="central-meta item">
							<div class="user-post">
								<div class="friend-info">
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
											alt="">
									</figure>
									<div class="friend-name">
										<div class="more">
											<div class="more-post-optns">
												<i class="ti-more-alt"></i>
												<ul>
													<li><i class="fa fa-pencil-square-o"></i>Edit Post</li>
													<li><i class="fa fa-trash-o"></i>Delete Post</li>
													<li class="bad-report"><i class="fa fa-flag"></i>Report
														Post</li>
													<li><i class="fa fa-address-card-o"></i>Boost This
														Post</li>
													<li><i class="fa fa-clock-o"></i>Schedule Post</li>
													<li><i class="fa fa-wpexplorer"></i>Select as featured</li>
													<li><i class="fa fa-bell-slash-o"></i>Turn off
														Notifications</li>
												</ul>
											</div>
										</div>
										<ins>
											<a href="time-line" title="">Digital Market</a>
										</ins>
										<span>sponsored <i class="fa fa-globe"></i></span>

									</div>
									<div class="post-meta">
										<figure>
											<img src="<c:url value="/layouts/web/images/sponsors.gif" />"
												alt="">
											<ul class="like-dislike">
												<li><a class="bg-purple" href="#"
													title="Save to Pin Post"><i class="fa fa-thumb-tack"></i></a></li>
												<li><a class="bg-blue" href="#" title="Like Post"><i
														class="ti-thumb-up"></i></a></li>
												<li><a class="bg-red" href="#" title="dislike Post"><i
														class="ti-thumb-down"></i></a></li>
											</ul>
										</figure>
										<div class="description">
											<a href="#" class="learnmore" data-ripple="">Learn More</a>
											<p>Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus
												eget condimentum rhoncus, sem quam semper libero, sit amet
												adipiscing sem neque sed ipsum. Nam quam nunc.</p>
										</div>
										<div class="we-video-info">
											<ul>
												<li><span class="views" title="views"> <i
														class="fa fa-eye"></i> <ins>1.2k</ins>
												</span></li>
												<li>
													<div class="likes heart" title="Like/Dislike">
														❤ <span>2K</span>
													</div>
												</li>
												<li><span class="comment" title="Comments"> <i
														class="fa fa-commenting"></i> <ins>52</ins>
												</span></li>

												<li><span> <a class="share-pst" href="#"
														title="Share"> <i class="fa fa-share-alt"></i>
													</a> <ins>20</ins>
												</span></li>
											</ul>
											<div class="users-thumb-list">
												<a data-toggle="tooltip" title="Anderw" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />">
												</a> <a data-toggle="tooltip" title="frank" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />">
												</a> <a data-toggle="tooltip" title="Sara" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />">
												</a> <a data-toggle="tooltip" title="Amy" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />">
												</a> <a data-toggle="tooltip" title="Ema" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />">
												</a> <span><strong>You</strong>, <b>Sarah</b> and <a
													href="#" title="">24+ more</a> liked</span>
											</div>
										</div>
									</div>
									<div class="coment-area" style="display: block;">
										<ul class="we-comet">
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly3.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Jason borne</a>
													</h5>
													<p>we are working for the dance and sing songs. this
														video is very awesome for the youngster. please vote this
														video and like our channel</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>

											</li>
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/comet-4.jpg"  />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Sophia</a>
													</h5>
													<p>
														we are working for the dance and sing songs. this video is
														very awesome for the youngster. <i class="em em-smiley"></i>
													</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>
											</li>
											<li><a href="#" title="" class="showmore underline">more
													comments+</a></li>
											<li class="post-comment">
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
														alt="">
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
															<span class="em em-expressionless" title="add icon"></span>
															<div class="smiles-bunch">
																<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																	class="em em-anguished"></i> <i class="em em-laughing"></i>
																<i class="em em-angry"></i> <i class="em em-astonished"></i>
																<i class="em em-blush"></i> <i
																	class="em em-disappointed"></i> <i
																	class="em em-worried"></i> <i
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
						<!-- digital sponsors -->
						<div class="central-meta item">
							<div class="user-post">
								<div class="friend-info">
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/friend-avatar10.jpg" />"
											alt="">
									</figure>
									<div class="friend-name">
										<div class="more">
											<div class="more-post-optns">
												<i class="ti-more-alt"></i>
												<ul>
													<li><i class="fa fa-pencil-square-o"></i>Edit Post</li>
													<li><i class="fa fa-trash-o"></i>Delete Post</li>
													<li class="bad-report"><i class="fa fa-flag"></i>Report
														Post</li>
													<li><i class="fa fa-address-card-o"></i>Boost This
														Post</li>
													<li><i class="fa fa-clock-o"></i>Schedule Post</li>
													<li><i class="fa fa-wpexplorer"></i>Select as featured</li>
													<li><i class="fa fa-bell-slash-o"></i>Turn off
														Notifications</li>
												</ul>
											</div>
										</div>
										<ins>
											<a href="time-line" title="">Mathilda Brinker</a>
										</ins>
										<span>published: june,2 2020 19:PM</span>
									</div>
									<div class="post-meta">
										<div class="description">
											<p>
												World's most beautiful car in Curabitur <a href="#" title="">#test
													drive booking !</a> the most beatuiful car available in america
												and the saudia arabia, you can book your test drive by our
												official website
											</p>
										</div>

										<ul class="like-dislike">
											<li><a href="#" title="Save to Pin Post"><i
													class="fa fa-thumb-tack"></i></a></li>
											<li><a href="#" title="Like Post"><i
													class="ti-thumb-up"></i></a></li>
											<li><a href="#" title="dislike Post"><i
													class="ti-thumb-down"></i></a></li>
										</ul>
										<div class="we-video-info">
											<ul>
												<li><span class="views" title="views"> <i
														class="fa fa-eye"></i> <ins>1.2k</ins>
												</span></li>
												<li>
													<div class="likes heart" title="Like/Dislike">
														❤ <span>2K</span>
													</div>
												</li>
												<li><span class="comment" title="Comments"> <i
														class="fa fa-commenting"></i> <ins>52</ins>
												</span></li>

												<li><span> <a class="share-pst" href="#"
														title="Share"> <i class="fa fa-share-alt"></i>
													</a> <ins>20</ins>
												</span></li>
											</ul>
											<div class="users-thumb-list">
												<a data-toggle="tooltip" title="Anderw" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />">
												</a> <a data-toggle="tooltip" title="frank" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />">
												</a> <a data-toggle="tooltip" title="Sara" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />">
												</a> <a data-toggle="tooltip" title="Amy" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />">
												</a> <a data-toggle="tooltip" title="Ema" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />">
												</a> <span><strong>You</strong>, <b>Sarah</b> and <a
													href="#" title="">24+ more</a> liked</span>
											</div>
										</div>
									</div>
									<div class="coment-area">
										<ul class="we-comet">
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly3.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Jason borne</a>
													</h5>
													<p>we are working for the dance and sing songs. this
														video is very awesome for the youngster. please vote this
														video and like our channel</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>

											</li>
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/comet-4.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Sophia</a>
													</h5>
													<p>
														we are working for the dance and sing songs. this video is
														very awesome for the youngster. <i class="em em-smiley"></i>
													</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>
											</li>
											<li><a href="#" title="" class="showmore underline">more
													comments+</a></li>
											<li class="post-comment">
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
														alt="">
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
															<span class="em em-expressionless" title="add icon"></span>
															<div class="smiles-bunch">
																<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																	class="em em-anguished"></i> <i class="em em-laughing"></i>
																<i class="em em-angry"></i> <i class="em em-astonished"></i>
																<i class="em em-blush"></i> <i
																	class="em em-disappointed"></i> <i
																	class="em em-worried"></i> <i
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
						<div class="central-meta item">
							<div class="user-post">
								<div class="friend-info">
									<figure>
										<img alt=""
											src="<c:url value="/layouts/web/images/resources/friend-avatar10.jpg" />">
									</figure>
									<div class="friend-name">
										<div class="more">
											<div class="more-post-optns">
												<i class="ti-more-alt"></i>
												<ul>
													<li><i class="fa fa-pencil-square-o"></i>Edit Post</li>
													<li><i class="fa fa-trash-o"></i>Delete Post</li>
													<li class="bad-report"><i class="fa fa-flag"></i>Report
														Post</li>
													<li><i class="fa fa-address-card-o"></i>Boost This
														Post</li>
													<li><i class="fa fa-clock-o"></i>Schedule Post</li>
													<li><i class="fa fa-wpexplorer"></i>Select as featured</li>
													<li><i class="fa fa-bell-slash-o"></i>Turn off
														Notifications</li>
												</ul>
											</div>
										</div>
										<ins>
											<a title="" href="time-line">Janice Griffith</a>
										</ins>
										<span>published: june,2 2010 19:PM</span>
									</div>
									<div class="description">
										<p>
											Curabitur World's most beautiful car in <a title="" href="#">#test
												drive booking !</a> the most beatuiful car available in america
											and the saudia arabia, you can book your test drive by our
											official website
										</p>
									</div>
									<div class="post-meta">
										<div class="linked-image align-left">
											<a title="" href="#"><img alt=""
												src="<c:url value="/layouts/web/images/resources/page1.jpg" />"></a>
										</div>
										<div class="detail">
											<span>Love Maid - HighChill</span>
											<p>Lorem ipsum dolor sit amet, consectetur ipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua...</p>
											<a title="" href="#">www.sample.com</a>
										</div>

										<ul class="like-dislike">
											<li><a class="bg-purple" href="#"
												title="Save to Pin Post"><i class="fa fa-thumb-tack"></i></a></li>
											<li><a class="bg-blue" href="#" title="Like Post"><i
													class="ti-thumb-up"></i></a></li>
											<li><a class="bg-red" href="#" title="dislike Post"><i
													class="ti-thumb-down"></i></a></li>
										</ul>
										<div class="we-video-info">
											<ul>
												<li><span class="views" title="views"> <i
														class="fa fa-eye"></i> <ins>1.2k</ins>
												</span></li>
												<li>
													<div class="likes heart" title="Like/Dislike">
														❤ <span>2K</span>
													</div>
												</li>
												<li><span class="comment" title="Comments"> <i
														class="fa fa-commenting"></i> <ins>52</ins>
												</span></li>

												<li><span> <a class="share-pst" href="#"
														title="Share"> <i class="fa fa-share-alt"></i>
													</a> <ins>20</ins>
												</span></li>
											</ul>
											<div class="users-thumb-list">
												<a data-toggle="tooltip" title="Anderw" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />">
												</a> <a data-toggle="tooltip" title="frank" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />">
												</a> <a data-toggle="tooltip" title="Sara" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />">
												</a> <a data-toggle="tooltip" title="Amy" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />">
												</a> <a data-toggle="tooltip" title="Ema" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />">
												</a> <span><strong>You</strong>, <b>Sarah</b> and <a
													href="#" title="">24+ more</a> liked</span>
											</div>
										</div>
									</div>
									<div class="coment-area">
										<ul class="we-comet">
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly3.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Jason borne</a>
													</h5>
													<p>we are working for the dance and sing songs. this
														video is very awesome for the youngster. please vote this
														video and like our channel</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>

											</li>
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/comet-4.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Sophia</a>
													</h5>
													<p>
														we are working for the dance and sing songs. this video is
														very awesome for the youngster. <i class="em em-smiley"></i>
													</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>
											</li>
											<li><a href="#" title="" class="showmore underline">more
													comments+</a></li>
											<li class="post-comment">
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
														alt="">
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
															<span class="em em-expressionless" title="add icon"></span>
															<div class="smiles-bunch">
																<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																	class="em em-anguished"></i> <i class="em em-laughing"></i>
																<i class="em em-angry"></i> <i class="em em-astonished"></i>
																<i class="em em-blush"></i> <i
																	class="em em-disappointed"></i> <i
																	class="em em-worried"></i> <i
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
						<div class="central-meta item">
							<div class="user-post">
								<div class="friend-info">
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/nearly6.jpg" />"
											alt="">
									</figure>
									<div class="friend-name">
										<div class="more">
											<div class="more-post-optns">
												<i class="ti-more-alt"></i>
												<ul>
													<li><i class="fa fa-pencil-square-o"></i>Edit Post</li>
													<li><i class="fa fa-trash-o"></i>Delete Post</li>
													<li class="bad-report"><i class="fa fa-flag"></i>Report
														Post</li>
													<li><i class="fa fa-address-card-o"></i>Boost This
														Post</li>
													<li><i class="fa fa-clock-o"></i>Schedule Post</li>
													<li><i class="fa fa-wpexplorer"></i>Select as featured</li>
													<li><i class="fa fa-bell-slash-o"></i>Turn off
														Notifications</li>
												</ul>
											</div>
										</div>
										<ins>
											<a href="time-line" title="">Sophia</a> shared location
										</ins>
										<span><i class="fa fa-globe"></i> published: january,5
											2010 19:PM</span>
									</div>
									<div class="post-meta">
										<div class="post-map">
											<div class="nearby-map">
												<div id="map-canvas"></div>
											</div>
											<ul class="like-dislike">
												<li><a class="bg-purple" href="#"
													title="Save to Pin Post"><i class="fa fa-thumb-tack"></i></a></li>
												<li><a class="bg-blue" href="#" title="Like Post"><i
														class="ti-thumb-up"></i></a></li>
												<li><a class="bg-red" href="#" title="dislike Post"><i
														class="ti-thumb-down"></i></a></li>
											</ul>
										</div>
										<!-- near by map -->

										<div class="description">
											<p>
												Curabitur Lonely Cat Enjoying in Summer <a href="#" title="">#mypage</a>
												ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.
												Maecenas tempus, tellus eget condimentum rhoncus, sem quam
												semper libero, sit amet adipiscing sem neque sed ipsum. Nam
												quam nunc,
											</p>
										</div>
										<div class="we-video-info">
											<ul>
												<li><span class="views" title="views"> <i
														class="fa fa-eye"></i> <ins>1.2k</ins>
												</span></li>
												<li>
													<div class="likes heart" title="Like/Dislike">
														❤ <span>2K</span>
													</div>
												</li>
												<li><span class="comment" title="Comments"> <i
														class="fa fa-commenting"></i> <ins>52</ins>
												</span></li>

												<li><span> <a class="share-pst" href="#"
														title="Share"> <i class="fa fa-share-alt"></i>
													</a> <ins>20</ins>
												</span></li>
											</ul>
											<div class="users-thumb-list">
												<a data-toggle="tooltip" title="Anderw" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />">
												</a> <a data-toggle="tooltip" title="frank" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />">
												</a> <a data-toggle="tooltip" title="Sara" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />">
												</a> <a data-toggle="tooltip" title="Amy" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />">
												</a> <a data-toggle="tooltip" title="Ema" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />">
												</a> <span><strong>You</strong>, <b>Sarah</b> and <a
													href="#" title="">24+ more</a> liked</span>
											</div>
										</div>
									</div>
									<div class="coment-area">
										<ul class="we-comet">
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly3.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Jason borne</a>
													</h5>
													<p>we are working for the dance and sing songs. this
														video is very awesome for the youngster. please vote this
														video and like our channel</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>

											</li>
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/comet-4.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Sophia</a>
													</h5>
													<p>
														we are working for the dance and sing songs. this video is
														very awesome for the youngster. <i class="em em-smiley"></i>
													</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>
											</li>
											<li><a href="#" title="" class="showmore underline">more
													comments+</a></li>
											<li class="post-comment">
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
														alt="">
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
															<span class="em em-expressionless" title="add icon"></span>
															<div class="smiles-bunch">
																<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																	class="em em-anguished"></i> <i class="em em-laughing"></i>
																<i class="em em-angry"></i> <i class="em em-astonished"></i>
																<i class="em em-blush"></i> <i
																	class="em em-disappointed"></i> <i
																	class="em em-worried"></i> <i
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

						<div class="central-meta item">
							<div class="user-post">
								<div class="friend-info">
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
											alt="">
									</figure>
									<div class="friend-name">
										<div class="more">
											<div class="more-post-optns">
												<i class="ti-more-alt"></i>
												<ul>
													<li><i class="fa fa-pencil-square-o"></i>Edit Post</li>
													<li><i class="fa fa-trash-o"></i>Delete Post</li>
													<li class="bad-report"><i class="fa fa-flag"></i>Report
														Post</li>
													<li><i class="fa fa-address-card-o"></i>Boost This
														Post</li>
													<li><i class="fa fa-clock-o"></i>Schedule Post</li>
													<li><i class="fa fa-wpexplorer"></i>Select as featured</li>
													<li><i class="fa fa-bell-slash-o"></i>Turn off
														Notifications</li>
												</ul>
											</div>
										</div>
										<ins>
											<a href="time-line" title="">Jack Carter</a> Post Album
										</ins>
										<span><i class="fa fa-globe"></i> published:
											September,15 2020 19:PM </span>
									</div>
									<div class="post-meta">
										<p>Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus
											eget condimentum rhoncus, sem quam semper libero.</p>
										<figure>
											<div class="img-bunch">
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<figure>
															<a class="strip"
																href="<c:url value="/layouts/web/images/resources/album1.jpg" />"
																title="" data-strip-group="mygroup"
																data-strip-group-options="loop: false"> <img
																src="<c:url value="/layouts/web/images/resources/album1.jpg" />"
																alt="">
															</a>
														</figure>
														<figure>
															<a class="strip"
																href="<c:url value="/layouts/web/images/resources/album2.jpg" />"
																title="" data-strip-group="mygroup"
																data-strip-group-options="loop: false"> <img
																src="<c:url value="/layouts/web/images/resources/album2.jpg" />"
																alt="">
															</a>
														</figure>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<figure>
															<a class="strip"
																href="<c:url value="/layouts/web/images/resources/album6.jpg" />"
																title="" data-strip-group="mygroup"
																data-strip-group-options="loop: false"> <img
																src="<c:url value="/layouts/web/images/resources/album6.jpg" />"
																alt="">
															</a>
														</figure>
														<figure>
															<a class="strip"
																href="<c:url value="/layouts/web/images/resources/album5.jpg" />"
																title="" data-strip-group="mygroup"
																data-strip-group-options="loop: false"> <img
																src="<c:url value="/layouts/web/images/resources/album5.jpg" />"
																alt="">
															</a>
														</figure>
														<figure>
															<a class="strip"
																href="<c:url value="/layouts/web/images/resources/album4.jpg" />"
																title="" data-strip-group="mygroup"
																data-strip-group-options="loop: false"> <img
																src="<c:url value="/layouts/web/images/resources/album4.jpg" />"
																alt="">
															</a>
															<div class="more-photos">
																<span>+15</span>
															</div>
														</figure>
													</div>
												</div>
											</div>
											<ul class="like-dislike">
												<li><a class="bg-purple" href="#"
													title="Save to Pin Post"><i class="fa fa-thumb-tack"></i></a></li>
												<li><a class="bg-blue" href="#" title="Like Post"><i
														class="ti-thumb-up"></i></a></li>
												<li><a class="bg-red" href="#" title="dislike Post"><i
														class="ti-thumb-down"></i></a></li>
											</ul>
										</figure>
										<div class="we-video-info">
											<ul>
												<li><span class="views" title="views"> <i
														class="fa fa-eye"></i> <ins>1.2k</ins>
												</span></li>
												<li>
													<div class="likes heart" title="Like/Dislike">
														❤ <span>2K</span>
													</div>
												</li>
												<li><span class="comment" title="Comments"> <i
														class="fa fa-commenting"></i> <ins>52</ins>
												</span></li>

												<li><span> <a class="share-pst" href="#"
														title="Share"> <i class="fa fa-share-alt"></i>
													</a> <ins>20</ins>
												</span></li>
											</ul>
											<div class="users-thumb-list">
												<a data-toggle="tooltip" title="Anderw" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />">
												</a> <a data-toggle="tooltip" title="frank" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />">
												</a> <a data-toggle="tooltip" title="Sara" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />">
												</a> <a data-toggle="tooltip" title="Amy" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />">
												</a> <a data-toggle="tooltip" title="Ema" href="#"> <img
													alt=""
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />">
												</a> <span><strong>You</strong>, <b>Sarah</b> and <a
													href="#" title="">24+ more</a> liked</span>
											</div>
										</div>
									</div>
									<div class="coment-area">
										<ul class="we-comet">
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly3.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Jason borne</a>
													</h5>
													<p>we are working for the dance and sing songs. this
														video is very awesome for the youngster. please vote this
														video and like our channel</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>

											</li>
											<li>
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/comet-4.jpg" />"
														alt="">
												</div>
												<div class="we-comment">
													<h5>
														<a href="time-line" title="">Sophia</a>
													</h5>
													<p>
														we are working for the dance and sing songs. this video is
														very awesome for the youngster. <i class="em em-smiley"></i>
													</p>
													<div class="inline-itms">
														<span>1 year ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a> <a href="#"
															title=""><i class="fa fa-heart"></i><span>20</span></a>
													</div>
												</div>
											</li>
											<li><a href="#" title="" class="showmore underline">more
													comments+</a></li>
											<li class="post-comment">
												<div class="comet-avatar">
													<img
														src="<c:url value="/layouts/web/images/resources/nearly1.jpg" />"
														alt="">
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
															<span class="em em-expressionless" title="add icon"></span>
															<div class="smiles-bunch">
																<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																	class="em em-anguished"></i> <i class="em em-laughing"></i>
																<i class="em em-angry"></i> <i class="em em-astonished"></i>
																<i class="em em-blush"></i> <i
																	class="em em-disappointed"></i> <i
																	class="em em-worried"></i> <i
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
				<!-- centerl meta -->

			</div>
		</div>
	</div>
</body>
</html>