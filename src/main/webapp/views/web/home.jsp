<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta http-equiv="Content-Type" content="text/html; charset="UTF-8"">

<title>Trang chủ</title>

</head>

<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="row merged20" id="page-contents">
				<div class="col-lg-3">
					<aside class="sidebar static left">
						<div class="widget stick-widget">
							<h4 class="widget-title">Who's follownig</h4>
							<ul class="followers">
								<c:if test="${not empty SUGGEST_FRIEND }">
									<c:forEach var="user" items="${SUGGEST_FRIEND }">
										<c:if
											test="${user.getId() != USER.getId() && user.getFriend().getState_accept() != 'friend' }">
											<li>
												<figure>
													<c:if test="${not empty user.avatar_url }">
														<img src="${user.avatar_url }" alt="">
													</c:if>
													<c:if test="${empty user.avatar_url }">
														<img style="width: 44px; height: 44px"
															src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />"
															alt="">
													</c:if>
												</figure>
												<div class="friend-meta">
													<h4>
														<a href="/Project_MXH/profile/${ user.getEmail().split('@')[0]}" title=""> ${user.full_name }</a>
													</h4>

													<div class="dropdown">
														<!-- id="dropdownMenuLink" data-bs-toggle="dropdown"
															aria-expanded="false" -->
														<a href="#" title="" class="underline add_friend"
															id_user="${user.id }"
															state_add_fr="${USER.getId() == user.getFriend().getUser_id()? user.getFriend().getState_accept() :(USER.getId() == user.getFriend().getFriend_id())?'accepted':''}">Add
															Friend</a>

														<ul class="dropdown-menu huyketban"
															aria-labelledby="dropdownMenuLink">
															<li><a class="dropdown-item" href="#" >Hủy bạn bè</a>
															</li>
															<li><a class="dropdown-item" href="/Project_MXH/profile/${ user.getEmail().split('@')[0]}">Xem trang cá nhân</a></li>
															<li><a class="dropdown-item" href="#">Something
																	else here</a></li>
														</ul>
													</div>

													<!-- <a href="#" title="" class="underline add_friend"
														id_user="${user.id }"
														state_add_fr="${USER.getId() == user.getFriend().getUser_id()? user.getFriend().getState_accept() :(USER.getId() == user.getFriend().getFriend_id())?'accepted':''}">Add
														Friend</a> -->
												</div>
											</li>
										</c:if>
									</c:forEach>
								</c:if>
							</ul>
						</div>
						<!-- who's following -->
						<div class="widget">
							<h4 class="widget-title">Shortcuts</h4>
							<ul class="naves">
								<li><i class="ti-clipboard"></i> <a href="trang-chu"
									title="">News feed</a></li>
								<li><i class="ti-mouse-alt"></i> <a href="inbox" title="">Inbox</a></li>
								<li><i class="ti-files"></i> <a href="fav-page" title="">My
										pages</a></li>
								<li><i class="ti-user"></i> <a href="timeline-friends"
									title="">friends</a></li>
								<li><i class="ti-image"></i> <a href="timeline-photos"
									title="">images</a></li>
								<li><i class="ti-video-camera"></i> <a
									href="timeline-videos" title="">videos</a></li>
								<li><i class="ti-comments-smiley"></i> <a href="messages"
									title="">Messages</a></li>
								<li><i class="ti-bell"></i> <a href="notifications"
									title="">Notifications</a></li>
								<li><i class="ti-share"></i> <a href="people-nearby"
									title="">People Nearby</a></li>
								<li><i class="fa fa-bar-chart-o"></i> <a href="insights"
									title="">insights</a></li>
								<li><i class="ti-power-off"></i> <a href="landing" title="">Logout</a></li>
							</ul>
						</div>
						<!-- Shortcuts -->
						<div class="widget">
							<h4 class="widget-title">Twitter feed</h4>
							<ul class="twiter-feed">
								<li><i class="fa fa-twitter"></i> <span> <i>jhon
											william</i> @jhonwilliam
								</span>
									<p>
										tomorrow with the company we were working and 5 child run away
										from the working place. <a href="#" title="">#daydream5k</a>
									</p> <em>2 hours ago</em></li>
								<li><i class="fa fa-twitter"></i> <span> <i>Kelly
											watson</i> @kelly
								</span>
									<p>
										tomorrow with the company we were working and 5 child run away
										from the working place. <a href="#" title="">#daydream5k</a>
									</p> <em>2 hours ago</em></li>
								<li><i class="fa fa-twitter"></i> <span> <i>Jony
											bravo</i> @jonibravo
								</span>
									<p>
										tomorrow with the company we were working and 5 child run away
										from the working place. <a href="#" title="">#daydream5k</a>
									</p> <em>2 hours ago</em></li>
							</ul>
						</div>
						<!-- twitter feed-->
						<div class="advertisment-box">
							<h4 class="">advertisment</h4>
							<figure>
								<a href="#" title="Advertisment"><img
									src="<c:url value="/layouts/web/images/resources/ad-widget.gif" />"
									alt=""></a>
							</figure>
						</div>
						<!-- advertisment box -->


						<div class="widget">
							<h4 class="widget-title">Recent Activity</h4>
							<ul class="activitiez">
								<li>
									<div class="activity-meta">
										<i>10 hours Ago</i> <span><a href="#" title="">Commented
												on Video posted </a></span>
										<h6>
											by <a href="time-line">black demon.</a>
										</h6>
									</div>
								</li>
								<li>
									<div class="activity-meta">
										<i>30 Days Ago</i> <span><a href="#" title="">Posted
												your status. “Hello guys, how are you?”</a></span>
									</div>
								</li>
								<li>
									<div class="activity-meta">
										<i>2 Years Ago</i> <span><a href="#" title="">Share
												a video on her timeline.</a></span>
										<h6>
											"<a href="#">you are so funny mr.been.</a>"
										</h6>
									</div>
								</li>
							</ul>
						</div>
						<!-- recent activites -->

					</aside>
				</div>
				<!-- sidebar -->
				<div class="col-lg-6">
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
							<div id="show_post">
								<div class="item">
									<img src="./images/ad-baner.jpg" alt=""> <span
										class="delete_img-show-post">Gỡ ảnh</span>
								</div>
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
										<label>Long :</label> <input type="text" class="" id="us3-lon" />
									</div>
								</div>
								<!-- map -->
								<div id="us3"></div>
							</div>
						</div>
					</div>
					<!-- add post new box -->

					<!-- add post new box -->
					<div class="central-meta">
						<span class="create-post">Recent Stories <a href="#"
							title="">See All</a></span>
						<div class="story-postbox">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="story-box">
										<figure>
											<img
												src="<c:url value="/layouts/web/images/resources/story-1.jpg" />"
												alt="">
											<span>Add Your Story</span>
										</figure>
										<div class="story-thumb" data-toggle="tooltip"
											title="Add Your Story">
											<i class="fa fa-plus"></i>
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="story-box">
										<figure>
											<img
												src="<c:url value="/layouts/web/images/resources/story-2.jpg"  />"
												alt="">
											<span>Adam James</span>
										</figure>
										<div class="story-thumb" data-toggle="tooltip"
											title="Adam James">
											<img
												src="<c:url value="/layouts/web/images/resources/thumb-2.jpg"  />"
												alt="">
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="story-box">
										<figure>
											<img
												src="<c:url value="/layouts/web/images/resources/story-3.jpg"  />"
												alt="">
											<span>Emily grey</span>
										</figure>
										<div class="story-thumb" data-toggle="tooltip"
											title="Emily grey">
											<img
												src="<c:url value="/layouts/web/images/resources/thumb-3.jpg" />"
												alt="">
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="story-box">
										<figure>
											<img
												src="<c:url value="/layouts/web/images/resources/story-4.jpg"  />"
												alt="">
											<span>Jhon Deo</span>
										</figure>
										<div class="story-thumb" data-toggle="tooltip"
											title="Jhon Deo">
											<img
												src="<c:url value="/layouts/web/images/resources/thumb-4.jpg"  />"
												alt="">
										</div>
									</div>
								</div>
							</div>
							<div class="stories-wraper">
								<div class="status-story">
									<span class="close-story"><i class="ti-close"></i></span>
									<div class="row">
										<div class="col-lg-4">
											<div class="stories-users">
												<h5>Stories</h5>
												<div class="my-status">
													<figure>
														<img
															src="<c:url value="/layouts/web/images/resources/friend-avatar10.jpg"  />"
															alt="">
													</figure>
													<a href="#" title="" class="main-btn">Add New</a>
													<div class="story-user">
														<span>My Story</span>
														<ins>No updates</ins>
													</div>
												</div>
												<ul class="frnds-stories">
													<li>
														<figure>
															<img
																src="<c:url value="/layouts/web/images/resources/friend-avatar11.jpg"  />"
																alt="">
														</figure>
														<div class="story-user">
															<span>Emily doll</span>
															<ins>yesterday</ins>
														</div>
													</li>
													<li>
														<figure>
															<img
																src="<c:url value="/layouts/web/images/resources/friend-avatar15.jpg" />"
																alt="">
														</figure>
														<div class="story-user">
															<span>Jhon Borny</span>
															<ins>3 days ago</ins>
														</div>
													</li>
													<li>
														<figure>
															<img
																src="<c:url value="/layouts/web/images/resources/friend-avatar12.jpg"  />"
																alt="">
														</figure>
														<div class="story-user">
															<span>Sarah Khan</span>
															<ins>2 days ago</ins>
														</div>
													</li>
													<li>
														<figure>
															<img
																src="<c:url value="/layouts/web/images/resources/friend-avatar13.jpg" />"
																alt="">
														</figure>
														<div class="story-user">
															<span>Zara Hayat</span>
															<ins>1 day ago</ins>
														</div>
													</li>
													<li>
														<figure>
															<img
																src="<c:url value="/layouts/web/images/resources/friend-avatar14.jpg" />"
																alt="">
														</figure>
														<div class="story-user">
															<span>Zing Jang</span>
															<ins>2 days ago</ins>
														</div>
													</li>

													<li>
														<figure>
															<img
																src="<c:url value="/layouts/web/images/resources/friend-avatar16.jpg"  />"
																alt="">
														</figure>
														<div class="story-user">
															<span>Emma watson</span>
															<ins>jan,12 2020</ins>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<div class="col-lg-8">
											<div id="btns-wrapper"></div>
											<div id="slideshow">
												<img class="slide"
													src="https://placehold.it/856x380/FF6347/FFFFFF&amp;text=1"
													alt="11" /> <img class="slide"
													src="https://placehold.it/856x380/6FC6F7/FFFFFF&amp;text=2"
													alt="2" /> <img class="slide"
													src="https://placehold.it/856x380/f3e686/FFFFFF&amp;text=3"
													alt="3" /> <img class="slide"
													src="https://placehold.it/856x380/71eea3/FFFFFF&amp;text=4"
													alt="4" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- top stories -->
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
															<a href="#" title="" data-toggle="modal"
																data-target="#img-comt"> <img
																src="<c:url value="/layouts/web/images/resources/album1.jpg" />"
																alt="">
															</a>
														</figure>
														<figure>
															<a href="#" title="" data-toggle="modal"
																data-target="#img-comt"> <img
																src="<c:url value="/layouts/web/images/resources/album2.jpg" />"
																alt="">
															</a>
														</figure>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<figure>
															<a href="#" title="" data-toggle="modal"
																data-target="#img-comt"> <img
																src="<c:url value="/layouts/web/images/resources/album6.jpg" />"
																alt="">
															</a>
														</figure>
														<figure>
															<a href="#" title="" data-toggle="modal"
																data-target="#img-comt"> <img
																src="<c:url value="/layouts/web/images/resources/album5.jpg" />"
																alt="">
															</a>
														</figure>
														<figure>
															<a href="#" title="" data-toggle="modal"
																data-target="#img-comt"> <img
																src="<c:url value="/layouts/web/images/resources/album4.jpg" />"
																alt="">
															</a>
															<div class="more-photos">
																<span>+15</span>
															</div>
														</figure>
													</div>
												</div>
												<!-- <div class="row">
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
																src="<c:url value="/layouts/web/images/resources/album4.jpg"  />"
																alt="">
															</a>
															<div class="more-photos">
																<span>+15</span>
															</div>
														</figure>
													</div>
												</div>-->
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
						<!-- album post -->
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
														src="<c:url value="/layouts/web/images/resources/nearly1.jpg"  />"
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
						<!-- love post -->
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
						<!-- without image -->
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
						<!-- map location post -->
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
											<a href="time-line" title="">Jack Carter</a> share <a
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
						<!-- video post -->
					</div>
				</div>
				<!-- centerl meta -->
				<div class="col-lg-3">
					<aside class="sidebar static right">
						<div class="widget">
							<h4 class="widget-title">Your page</h4>
							<div class="your-page">
								<figure>
									<a href="#" title=""><img
										src="<c:url value="/layouts/web/images/resources/friend-avatar9.jpg" />"
										alt=""></a>
								</figure>
								<div class="page-meta">
									<a href="#" title="" class="underline">My Creative Page</a> <span><i
										class="ti-comment"></i><a href="insight" title="">Messages
											<em>9</em>
									</a></span> <span><i class="ti-bell"></i><a href="insight" title="">Notifications
											<em>2</em>
									</a></span>
								</div>
								<ul class="page-publishes">
									<li><span><i class="ti-pencil-alt"></i>Publish</span></li>
									<li><span><i class="ti-camera"></i>Photo</span></li>
									<li><span><i class="ti-video-camera"></i>Live</span></li>
									<li><span><i class="fa fa-user-plus"></i>Invite</span></li>
								</ul>
								<div class="page-likes">
									<ul class="nav nav-tabs likes-btn">
										<li class="nav-item"><a class="active" href="#link1"
											data-toggle="tab" data-ripple="">likes</a></li>
										<li class="nav-item"><a class="" href="#link2"
											data-toggle="tab" data-ripple="">views</a></li>
									</ul>
									<!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane active fade show " id="link1">
											<span><i class="ti-heart"></i>884</span> <a href="#"
												title="weekly-likes">35 new likes this week</a>
											<div class="users-thumb-list">
												<a href="#" title="Anderw" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />"
													alt="">
												</a> <a href="#" title="frank" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />"
													alt="">
												</a> <a href="#" title="Sara" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />"
													alt="">
												</a> <a href="#" title="Amy" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />"
													alt="">
												</a> <a href="#" title="Ema" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />"
													alt="">
												</a> <a href="#" title="Sophie" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-6.jpg" />"
													alt="">
												</a> <a href="#" title="Maria" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-7.jpg" />"
													alt="">
												</a>
											</div>
										</div>
										<div class="tab-pane fade" id="link2">
											<span><i class="fa fa-eye"></i>440</span> <a href="#"
												title="weekly-likes">440 new views this week</a>
											<div class="users-thumb-list">
												<a href="#" title="Anderw" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-1.jpg" />"
													alt="">
												</a> <a href="#" title="frank" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-2.jpg" />"
													alt="">
												</a> <a href="#" title="Sara" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-3.jpg" />"
													alt="">
												</a> <a href="#" title="Amy" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-4.jpg" />"
													alt="">
												</a> <a href="#" title="Ema" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-5.jpg" />"
													alt="">
												</a> <a href="#" title="Sophie" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-6.jpg" />"
													alt="">
												</a> <a href="#" title="Maria" data-toggle="tooltip"> <img
													src="<c:url value="/layouts/web/images/resources/userlist-7.jpg" />"
													alt="">
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- page like widget -->
						<div class="widget">
							<h4 class="widget-title">
								Explor Events <a title="" href="#" class="see-all">See All</a>
							</h4>
							<div class="rec-events bg-purple">
								<i class="ti-gift"></i>
								<h6>
									<a href="#" title="">Ocean Motel good night event in
										columbia</a>
								</h6>
								<img src="<c:url value="/layouts/web/images/clock.png" />"
									alt="">
							</div>
							<div class="rec-events bg-blue">
								<i class="ti-microphone"></i>
								<h6>
									<a href="#" title="">2016 The 3rd International Conference</a>
								</h6>
								<img src="<c:url value="/layouts/web/images/clock.png" />"
									alt="">
							</div>
						</div>
						<!-- explore events -->
						<div class="widget">
							<h4 class="widget-title">Profile intro</h4>
							<ul class="short-profile">
								<li><span>about</span>
									<p>Hi, i am jhon kates, i am 32 years old and worked as a
										web developer in microsoft</p></li>
								<li><span>fav tv show</span>
									<p>Sacred Games, Spartcus Blood, Games of Theron</p></li>
								<li><span>favourit music</span>
									<p>Justin Biber, Shakira, Nati Natasah</p></li>
							</ul>
						</div>
						<!-- profile intro widget -->
						<div class="widget stick-widget">
							<h4 class="widget-title">
								Recent Links <a title="" href="#" class="see-all">See All</a>
							</h4>
							<ul class="recent-links">
								<li>
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/recentlink-1.jpg" />"
											alt="">
									</figure>
									<div class="re-links-meta">
										<h6>
											<a href="#" title="">moira's fade reaches much farther
												than you think.</a>
										</h6>
										<span>2 weeks ago </span>
									</div>
								</li>
								<li>
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/recentlink-2.jpg" />"
											alt="">
									</figure>
									<div class="re-links-meta">
										<h6>
											<a href="#" title="">daniel asks if we want him to do the
												voice of doomfist</a>
										</h6>
										<span>3 months ago </span>
									</div>
								</li>
								<li>
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/recentlink-3.jpg" />"
											alt="">
									</figure>
									<div class="re-links-meta">
										<h6>
											<a href="#" title="">the pitnik overwatch scandals.</a>
										</h6>
										<span>1 day before</span>
									</div>
								</li>
							</ul>
						</div>
						<!-- recent links -->
					</aside>
				</div>
				<!-- sidebar -->
			</div>
		</div>
	</div>


	<!-- modal fade -->
	<div class="modal fade" id="img-comt">
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

									<li><span> <a title="Share" href="#" class="">
												<i class="fa fa-share-alt"></i>
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
									</a> <span><strong>You</strong>, <b>Sarah</b> and <a
										title="" href="#">24+ more</a> liked</span>
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
											<p>we are working for the dance and sing songs. this
												video is very awesome for the youngster. please vote this
												video and like our channel</p>
											<div class="inline-itms">
												<span>1 year ago</span> <a title="Reply" href="#"
													class="we-reply"><i class="fa fa-reply"></i></a> <a
													title="" href="#"><i class="fa fa-heart"></i><span>20</span></a>
											</div>
										</div>

									</li>
									<li>
										<div class="comet-avatar">
											<img alt="" src="images/resources/comet-4.jpg"
												style="width: 40px; height: 40px">
										</div>
										<div class="we-comment">
											<h5>
												<a title="" href="time-line.html">Sophia</a>
											</h5>
											<p>
												we are working for the dance and sing songs. this video is
												very awesome for the youngster. <i class="em em-smiley"></i>
											</p>
											<div class="inline-itms">
												<span>1 year ago</span> <a title="Reply" href="#"
													class="we-reply"><i class="fa fa-reply"></i></a> <a
													title="" href="#"><i class="fa fa-heart"></i><span>20</span></a>
											</div>
										</div>
									</li>
									<li>
										<div class="comet-avatar">
											<img alt="" src="images/resources/comet-4.jpg"
												style="width: 40px; height: 40px">
										</div>
										<div class="we-comment">
											<h5>
												<a title="" href="time-line.html">Sophia</a>
											</h5>
											<p>
												we are working for the dance and sing songs. this video is
												very awesome for the youngster. <i class="em em-smiley"></i>
											</p>
											<div class="inline-itms">
												<span>1 year ago</span> <a title="Reply" href="#"
													class="we-reply"><i class="fa fa-reply"></i></a> <a
													title="" href="#"><i class="fa fa-heart"></i><span>20</span></a>
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
	<!-- The Scrolling Modal image with comment -->
</body>

</html>