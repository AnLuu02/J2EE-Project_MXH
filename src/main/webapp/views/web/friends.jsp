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
				<%@ include file="/common/web/profile/header.jsp"%>
				<!-- user profile banner  -->
				<div class="col-lg-12">
					<div class="central-meta">
						<div class="title-block">
							<div class="row">
								<div class="col-lg-6">
									<div class="align-left">
										<c:if test="${not empty FRIENDS }">
											<h5>
												Friends / Followers <span> ${FRIENDS.size() }</span>
											</h5>
										</c:if>
										<c:if test="${empty FRIENDS }">
											<h5>
												Friends / Followers <span> 0</span>
											</h5>
										</c:if>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="row merged20">
										<div class="col-lg-7 col-lg-7 col-sm-7">
											<form method="post">
												<input type="text" placeholder="Search Friend">
												<button type="submit">
													<i class="fa fa-search"></i>
												</button>
											</form>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4">
											<div class="select-options">
												<select class="select">
													<option>Sort by</option>
													<option>A to Z</option>
													<option>See All</option>
													<option>Newest</option>
													<option>oldest</option>
												</select>
											</div>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1">
											<div class="option-list">
												<i class="fa fa-ellipsis-v"></i>
												<ul>
													<li><a title="" href="#">Show Friends Public</a></li>
													<li><a title="" href="#">Show Friends Private</a></li>
													<li><a title="" href="#">Mute Notifications</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- title block -->
					<div class="central-meta padding30">
						<div class="row">
							<c:if test="${not empty FRIENDS }">
								<c:forEach var="friend" items="${FRIENDS }">
									<div class="col-lg-3 col-md-6 col-sm-6">
										<div class="friend-box">
											<figure>
												<c:if test="${not empty friend.wall_img_url }">
													<img src=" ${friend.wall_img_url }" alt="">
												</c:if>
												<span>Followers: 120</span>
											</figure>
											<div class="frnd-meta">
												<c:if test="${not empty friend.avatar_url }">
													<img src=" ${friend.avatar_url }" alt="">
												</c:if>
												<c:if test="${empty friend.avatar_url }">
													<img
														src="<c:url value="/layouts/web/images/avatar_macdinh.jpg" />"
														alt="">
												</c:if>
												<div class="frnd-name">
													<a href="#" title=""> ${friend.full_name }</a> <span> ${friend.getCountry() }</span>
												</div>
												<ul class="frnd-info">
													<li><span>Friends:</span> 223 (2 mutule friends)</li>
													<li><span>Videos:</span> 240</li>
													<li><span>Photos:</span> 144</li>
													<li><span>Post:</span> 250</li>
													<li><span>Since:</span> December, 2014</li>
												</ul>
												<a class="send-mesg" href="#" title="">Message</a>
												<div class="more-opotnz">
													<i class="fa fa-ellipsis-h"></i>
													<ul>
														<li><a href="#" title="">Block</a></li>
														<li><a href="#" title="">UnBlock</a></li>
														<li><a href="#" title="">Mute Notifications</a></li>
														<li><a href="#" title="">hide from friend list</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
						<div class="lodmore">
							<span>Viewing 1-8 of 44 friends</span>
							<button class="btn-view btn-load-more"></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>