<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="postoverlay"></div>
<div class="responsive-header">
	<div class="mh-head first Sticky">
		<span class="mh-btns-left"> <a class="" href="#menu"><i
				class="fa fa-align-justify"></i></a>
		</span> <span class="mh-text"> <a href="trang-chu" title=""><img
				src="<c:url value="/layouts/web/images/logo2.png" />" alt=""></a>
		</span> <span class="mh-btns-right"> <a class="fa fa-sliders"
			href="#shoppingbag"></a>
		</span>
	</div>
	<div class="mh-head second">
		<form class="mh-form">
			<input placeholder="search" /> <a href="#/" class="fa fa-search"></a>
		</form>
	</div>
	<nav id="menu" class="res-menu">
		<ul>
			<li><span>Home Pages</span>
				<ul>
					<li><a href="index.html" title="">Pitnik Default</a></li>
					<li><a href="company-landing.html" title="">Company
							Landing</a></li>
					<li><a href="pitrest.html" title="">Pitrest</a></li>
					<li><a href="redpit.html" title="">Redpit</a></li>
					<li><a href="redpit-category.html" title="">Redpit
							Category</a></li>
					<li><a href="soundnik.html" title="">Soundnik</a></li>
					<li><a href="soundnik-detail.html" title="">Soundnik
							Single</a></li>
					<li><a href="career.html" title="">Pitjob</a></li>
					<li><a href="shop.html" title="">Shop</a></li>
					<li><a href="classified.html" title="">Classified</a></li>
					<li><a href="pitpoint.html" title="">PitPoint</a></li>
					<li><a href="pittube.html" title="">Pittube</a></li>
					<li><a href="chat-messenger.html" title="">Messenger</a></li>
				</ul></li>
			<li><span>Pittube</span>
				<ul>
					<li><a href="pittube.html" title="">Pittube</a></li>
					<li><a href="pittube-detail.html" title="">Pittube single</a></li>
					<li><a href="pittube-category.html" title="">Pittube
							Category</a></li>
					<li><a href="pittube-channel.html" title="">Pittube
							Channel</a></li>
					<li><a href="pittube-search-result.html" title="">Pittube
							Search Result</a></li>
				</ul></li>
			<li><span>PitPoint</span>
				<ul>
					<li><a href="pitpoint.html" title="">PitPoint</a></li>
					<li><a href="pitpoint-detail.html" title="">Pitpoint
							Detail</a></li>
					<li><a href="pitpoint-list.html" title="">Pitpoint List
							style</a></li>
					<li><a href="pitpoint-without-baner.html" title="">Pitpoint
							without Banner</a></li>
					<li><a href="pitpoint-search-result.html" title="">Pitpoint
							Search</a></li>
				</ul></li>
			<li><span>Pitjob</span>
				<ul>
					<li><a href="career.html" title="">Pitjob</a></li>
					<li><a href="career-detail.html" title="">Pitjob Detail</a></li>
					<li><a href="career-search-result.html" title="">Job seach
							page</a></li>
					<li><a href="social-post-detail.html" title="">Social Post
							Detail</a></li>
				</ul></li>
			<li><span>Timeline</span>
				<ul>
					<li><a href="timeline.html" title="">Timeline</a></li>
					<li><a href="timeline-photos.html" title="">Timeline
							Photos</a></li>
					<li><a href="timeline-videos.html" title="">Timeline
							Videos</a></li>
					<li><a href="timeline-groups.html" title="">Timeline
							Groups</a></li>
					<li><a
						href="/Project_MXH/profile/${ USER.getEmail().split('@')[0]}/friends"
						title="">Timeline Friends-2</a></li>
					<li><a href="about.html" title="">Timeline About</a></li>
					<li><a href="blog-posts.html" title="">Timeline Blog</a></li>
					<li><a href="friends-birthday.html" title="">Friends'
							Birthday</a></li>
					<li><a href="trang-chu" title="">Newsfeed</a></li>
					<li><a href="search-result.html" title="">Search Result</a></li>
				</ul></li>
			<li><span>Favourit Page</span>
				<ul>
					<li><a href="fav-page.html" title="">Favourit Page</a></li>
					<li><a href="fav-favers.html" title="">Fav Page Likers</a></li>
					<li><a href="fav-events.html" title="">Fav Events</a></li>
					<li><a href="fav-event-invitations.html" title="">Fav
							Event Invitations</a></li>
					<li><a href="event-calendar.html" title="">Event Calendar</a></li>
					<li><a href="fav-page-create.html" title="">Create New
							Page</a></li>
					<li><a href="price-plans.html" title="">Price Plan</a></li>
				</ul></li>
			<li><span>Forum</span>
				<ul>
					<li><a href="forum.html" title="">Forum</a></li>
					<li><a href="forum-create-topic.html" title="">Forum
							Create Topic</a></li>
					<li><a href="forum-open-topic.html" title="">Forum Open
							Topic</a></li>
					<li><a href="forums-category.html" title="">Forum Category</a></li>
				</ul></li>
			<li><span>Featured</span>
				<ul>
					<li><a href="chat-messenger.html" title="">Messenger
							(Chatting)</a></li>
					<li><a href="notifications.html" title="">Notifications</a></li>
					<li><a href="badges.html" title="">Badges</a></li>
					<li><a href="faq.html" title="">Faq's</a></li>
					<li><a href="contribution.html" title="">Contriburion Page</a></li>
					<li><a href="manage-page.html" title="">Manage Page</a></li>
					<li><a href="weather-forecast.html" title="">weather-forecast</a></li>
					<li><a href="statistics.html" title="">Statics/Analytics</a></li>
					<li><a href="shop-cart.html" title="">Shop Cart</a></li>
				</ul></li>
			<li><span>Account Setting</span>
				<ul>
					<li><a href="setting.html" title="">Setting</a></li>
					<li><a href="privacy.html" title="">Privacy</a></li>
					<li><a href="support-and-help.html" title="">Support &
							Help</a></li>
					<li><a href="support-and-help-detail.html" title="">Support
							Detail</a></li>
					<li><a href="support-and-help-search-result.html" title="">Support
							Search</a></li>
				</ul></li>
			<li><span>Authentication</span>
				<ul>
					<li><a href="login.html" title="">Login Page</a></li>
					<li><a href="register.html" title="">Register Page</a></li>
					<li><a href="login.html" title="">Logout Page</a></li>
					<li><a href="coming-soon.html" title="">Coming Soon</a></li>
					<li><a href="error-404.html" title="">Error 404</a></li>
					<li><a href="error-404-2.html" title="">Error 404-2</a></li>
					<li><a href="error-500.html" title="">Error 500</a></li>
				</ul></li>
			<li><span>Tools</span>
				<ul>
					<li><a href="typography.html" title="">Typography</a></li>
					<li><a href="popup-modals.html" title="">Popups/Modals</a></li>
					<li><a href="post-versions.html" title="">Post Versions</a></li>
					<li><a href="sliders.html" title="">Sliders / Carousel</a></li>
					<li><a href="google-map.html" title="">Google Maps</a></li>
					<li><a href="widgets.html" title="">Widgets</a></li>
				</ul></li>
		</ul>
	</nav>
	<nav id="shoppingbag">
		<div>
			<div class="">
				<form method="post">
					<div class="setting-row">
						<span>use night mode</span> <input type="checkbox" id="nightmode" />
						<label for="nightmode" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>Notifications</span> <input type="checkbox" id="switch2" />
						<label for="switch2" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>Notification sound</span> <input type="checkbox"
							id="switch3" /> <label for="switch3" data-on-label="ON"
							data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>My profile</span> <input type="checkbox" id="switch4" /> <label
							for="switch4" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>Show profile</span> <input type="checkbox" id="switch5" />
						<label for="switch5" data-on-label="ON" data-off-label="OFF"></label>
					</div>
				</form>
				<h4 class="panel-title">Account Setting</h4>
				<form method="post">
					<div class="setting-row">
						<span>Sub users</span> <input type="checkbox" id="switch6" /> <label
							for="switch6" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>personal account</span> <input type="checkbox" id="switch7" />
						<label for="switch7" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>Business account</span> <input type="checkbox" id="switch8" />
						<label for="switch8" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>Show me online</span> <input type="checkbox" id="switch9" />
						<label for="switch9" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>Delete history</span> <input type="checkbox" id="switch10" />
						<label for="switch10" data-on-label="ON" data-off-label="OFF"></label>
					</div>
					<div class="setting-row">
						<span>Expose author name</span> <input type="checkbox"
							id="switch11" /> <label for="switch11" data-on-label="ON"
							data-off-label="OFF"></label>
					</div>
				</form>
			</div>
		</div>
	</nav>
</div>
<!-- responsive header -->

<div class="topbar stick">
	<div class="logo">
		<a title="" href="trang-chu"><img
			src="<c:url value="/layouts/web/images/logoX.png" />" alt=""></a>
	</div>

	<c:if test="${empty USER}">
		<div class="top-area"
			style="display: flex; justify-content: end; align-items: center;">

			<form class="row" style="width: 45%;">
				<input type="email" class="form-control col mr-1"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Email"> <input type="password"
					class="form-control col mr-1" id="exampleInputPassword1"
					placeholder="Mật khẩu">

				<button type="submit" class="btn-primary"
					style="all: unset; background-color: #fa6342; color: white; padding: 0 10px; border-radius: 4px;">Đăng
					nhập</button>
				<div class="col ml-3"
					style="all: unset; color: #fa6342; display: flex; align-items: center;">
					<a href="">Bạn quên mật khẩu?</a>
				</div>
			</form>

		</div>
	</c:if>

	<c:if test="${not empty USER}">
		<div class="top-area">
			<!-- <div class="main-menu">
					<span>
						<i class="fa fa-braille"></i	
					</span>
				</div> -->
			<div class="top-search">
				<form method="post" class="">
					<button data-ripple>
						<i class="ti-search"></i>
					</button>
					<input type="text" placeholder="Search People, Pages, Groups etc">
					<div class="list-search">
						<ul>
							<li>Bạn cần tìm gì?</li>
							<!-- <li>
									<i class="ti-search"></i>
									<div class="content-search">
										sadasdasd1
									</div>
									<i class="ti-close"></i>
								</li> -->

						</ul>
					</div>
				</form>
			</div>
			<div class="page-name">
				<span>HOME</span>
			</div>
			<ul class="setting-area">
				<li><a href="/Project_MXH/trang-chu" title="Home"
					data-ripple=""><i class="fa fa-home"></i></a></li>
				<li id="friend_request"><a href="#" title="Friend Requests"
					data-ripple=""> <i class="fa fa-user"></i> <c:if
							test="${not empty WAITING_ACCEPT_FRIEND }">
							<em class="bg-red" id="total_fr_request" style="display: block">
								${WAITING_ACCEPT_FRIEND.size() }</em>
						</c:if> <c:if test="${empty WAITING_ACCEPT_FRIEND }">
							<em class="bg-red" id="total_fr_request"></em>
						</c:if>
				</a>
					<div class="dropdowns" id="add_friend_mesg">
						<span>5 New Requests <a href="#" title="">View all
								Requests</a></span>
						<ul class="drops-menu" id="add_friends">
							<c:if test="${empty WAITING_ACCEPT_FRIEND }">
								<li id="list_none">
									<div>
										<h6>
											<a href="#" title="">Hiện không có lời mời.</a>
										</h6>
									</div>
								</li>
							</c:if>

							<c:if test="${not empty WAITING_ACCEPT_FRIEND }">
								<c:forEach var="user" items="${WAITING_ACCEPT_FRIEND }">
									<c:if
										test="${user.getId() != USER.getId() && user.getFriend().getState_accept() != 'friend' }">

										<li id_user_sended="${ user.getId()}">
											<div>
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
												<div class="mesg-meta">
													<h6>
														<a href="#" title=""> ${user.full_name }</a>
													</h6>
													<span><b>Amy</b> is mutule friend</span> <i>yesterday</i>
												</div>
												<div class="add-del-friends">
													<a href="#" title="" id="accepted_fr" id_user="${user.id }"
														class="add_friend" state_add_fr="accepted"><i
														class="fa fa-heart"></i></a> <a href="#" title=""
														id="refuseded_fr" id_user="${user.id }" class="add_friend"
														state_add_fr="waiting"><i class="fa fa-close"></i></a>
												</div>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</c:if>


						</ul>
						<c:if test="${empty WAITING_ACCEPT_FRIEND }">
							<a href="friend-requests.html" title="" class="more-mesg"
								id="them_ban_moi" style="display: block">Thêm bạn bè</a>
						</c:if>
						<c:if test="${not empty WAITING_ACCEPT_FRIEND }">
							<a href="friend-requests.html" title="" class="more-mesg"
								id="view_all_fr" style="display: block">View all</a>
						</c:if>
					</div></li>
				<li id="notifi_request"><a href="#" title="Notification"
					data-ripple=""> <i class="fa fa-bell"></i><em class="bg-purple"
						id="total_notifi_request">7</em>
				</a>
					<div class="dropdowns">
						<span>4 New Notifications <a href="#" title="">Mark all
								as read</a></span>
						<ul class="drops-menu" id="notification">
							<li id="list_none_notifi">
								<div>
									<h6>
										<a href="#" title="">Hiện không có thông báo.</a>
									</h6>
								</div>
							</li>
						</ul>
						<a href="notifications.html" title="" class="more-mesg">View
							All</a>
					</div></li>
				<li id="messenger_request"><a href="#" title="Messages"
					data-ripple=""><i class="fa fa-commenting"></i><em
						class="bg-blue">9</em></a></li>
				<li><a href="#" title="Languages" data-ripple=""><i
						class="fa fa-globe"></i><em>EN</em></a></li>
				<li><a href="#" title="Help" data-ripple=""><i
						class="fa fa-question-circle"></i></a></li>
			</ul>
			<div class="user-img">
				<h5 id="current_user" session_current_user="${USER.id}">${USER.full_name }</h5>

				<c:if test="${empty USER.avatar_url }">
					<img style="width: 44px; height: 44px"
						src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />"
						alt="">
				</c:if>
				<c:if test="${not empty USER.avatar_url }">
					<img style="width: 44px; height: 44px" src="${USER.avatar_url }"
						alt="">
				</c:if>
				<div class="user-setting">
					<span class="seting-title">Chat setting <a href="#" title="">see
							all</a></span>
					<ul class="chat-setting">
						<li><a href="#" title=""><span class="status f-online"></span>online</a></li>
						<li><a href="#" title=""><span class="status f-away"></span>away</a></li>
						<li><a href="#" title=""><span class="status f-off"></span>offline</a></li>
					</ul>
					<span class="seting-title">User setting <a href="#" title="">see
							all</a></span>
					<ul class="log-out">
						<li><a
							href="/Project_MXH/profile/${ USER.getEmail().split('@')[0]}"
							title=""><i class="ti-user"></i> view profile</a></li>
						<li><a
							href="/Project_MXH/profile/${ USER.getEmail().split('@')[0]}/settings"
							title=""><i class="ti-pencil-alt"></i>edit profile</a></li>
						<li><a href="#" title=""><i class="ti-target"></i>activity
								log</a></li>
						<li><a href="setting.html" title=""><i
								class="ti-settings"></i>account setting</a></li>
						<li><a href="<c:url value="/thoat?action=logout" />" title=""><i
								class="ti-power-off"></i>log out</a></li>
					</ul>
				</div>
			</div>
			<span class="ti-settings main-menu" data-ripple=""></span>
		</div>
	</c:if>
</div>
<!-- topbar -->

<c:if test="${not empty USER }">
	<div class="fixed-sidebar right">
		<div class="chat-friendz">
			<h3 class="title">Bạn bè</h3>
			<ul class="chat-users" id="chat-users">
				<c:if test="${not empty FRIENDS}">
					<c:forEach var="friend" items="${FRIENDS }">
						<li id_user="${friend.getId() }">
							<div class="author-thmb">
								<c:if test="${not empty friend.getAvatar_url() }">
									<img src="${friend.getAvatar_url() }" alt="">
									<span class="status f-online"></span>
								</c:if>
								<c:if test="${empty friend.getAvatar_url() }">
									<img
										src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />"
										alt="">
									<span class="status f-online"></span>
								</c:if>
							</div>
							<div class="author-name">${friend.getFull_name() }</div>
						</li>
					</c:forEach>

				</c:if>

			</ul>

		</div>
	</div>
</c:if>
<!-- right sidebar user chat -->
<div class="chat-box">
	<div class="chat-head">
		<span class="status f-online"></span>
		<h6>Bucky Barnes</h6>
		<div class="more">
			<div class="more-optns">
				<i class="ti-more-alt"></i>
				<ul>
					<li>block chat</li>
					<li>unblock chat</li>
					<li>conversation</li>
				</ul>
			</div>
			<span class="close-mesage"><i class="ti-close"></i></span>
		</div>
	</div>
	<div class="chat-list">
		<ul>
			<li class="me">
				<div class="chat-thumb">
					<img
						src="<c:url value="/layouts/web/images/resources/chatlist1.jpg" />"
						alt="">
				</div>
				<div class="notification-event">
					<span class="chat-message-item"> HI, Jack i have faced a
						problem with your software. are you available now, when i install
						this i have to received an error. </span> <span class="notification-date"><time
							datetime="2004-07-24T18:18" class="entry-date updated">Today
							at 2:12pm</time></span>
				</div>
			</li>
			<li class="you">
				<div class="chat-thumb">
					<img
						src="<c:url value="/layouts/web/images/resources/chatlist2.jpg" />"
						alt="">
				</div>
				<div class="notification-event">
					<span class="chat-message-item"> Hi tina, Please let me know
						your purchase code, and show me the screnshot of error. </span> <span
						class="notification-date"><time datetime="2004-07-24T18:18"
							class="entry-date updated">Today at 2:14pm</time></span>
				</div>
			</li>
			<li class="me">
				<div class="chat-thumb">
					<img
						src="<c:url value="/layouts/web/images/resources/chatlist1.jpg" />"
						alt="">
				</div>
				<div class="notification-event">
					<span class="chat-message-item"> Yes, sure please wait a
						while, i ll show you the complete error list. Thank you. </span> <span
						class="notification-date"><time datetime="2004-07-24T18:18"
							class="entry-date updated">Today at 2:15pm</time></span>
				</div>
			</li>
		</ul>
		<form class="text-box">
			<textarea placeholder="Post enter to post..."></textarea>
			<div class="add-smiles">
				<span title="add icon" class="em em-expressionless"></span>
				<div class="smiles-bunch">
					<i class="em em---1"></i> <i class="em em-smiley"></i> <i
						class="em em-anguished"></i> <i class="em em-laughing"></i> <i
						class="em em-angry"></i> <i class="em em-astonished"></i> <i
						class="em em-blush"></i> <i class="em em-disappointed"></i> <i
						class="em em-worried"></i> <i class="em em-kissing_heart"></i> <i
						class="em em-rage"></i> <i class="em em-stuck_out_tongue"></i>
				</div>
			</div>

			<button type="submit"></button>
		</form>
	</div>
</div>

<c:if test="${not empty USER }">
	<div class="fixed-sidebar left">
		<div class="menu-left">
			<ul class="left-menu">
				<li><a href="/Project_MXH/trang-chu" title="Trang chủ"
					data-toggle="tooltip" data-placement="right"> <i
						class="ti-home"></i>
				</a></li>

				<li><a
					href="/Project_MXH/profile/${ USER.getEmail().split('@')[0]}/friends"
					title="Friends" data-toggle="tooltip" data-placement="right"> <i
						class="ti-user"></i>
				</a></li>
				<li><a href="fav-page.html" title="Favourit page"
					data-toggle="tooltip" data-placement="right"> <i
						class="fa fa-star-o"></i>
				</a></li>
				<li><a href="chat-messenger.html" title="Messages"
					data-toggle="tooltip" data-placement="right"> <i
						class="ti-comment-alt"></i>
				</a></li>
				<li><a href="notifications.html" title="Notification"
					data-toggle="tooltip" data-placement="right"> <i
						class="fa fa-bell-o"></i>
				</a></li>

				<li><a href="statistics.html" title="Account Stats"
					data-toggle="tooltip" data-placement="right"> <i
						class="ti-stats-up"></i>
				</a></li>

				<li><a href="support-and-help.html" title="Help"
					data-toggle="tooltip" data-placement="right"> <i
						class="fa fa-question-circle-o"> </i>
				</a></li>
				<li><a href="faq.html" title="Faq's" data-toggle="tooltip"
					data-placement="right"> <i class="ti-light-bulb"></i>
				</a></li>
			</ul>
		</div>

	</div>
</c:if>
<!-- left sidebar menu -->
