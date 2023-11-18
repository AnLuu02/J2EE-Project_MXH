<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	
<div class="side-panel">
	<h4 class="panel-title">General Setting</h4>
	<form method="post">
		<div class="setting-row">
			<span>use night mode</span> <input type="checkbox" id="nightmode1" />
			<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>Notifications</span> <input type="checkbox" id="switch22" /> <label
				for="switch22" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>Notification sound</span> <input type="checkbox" id="switch33" />
			<label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>My profile</span> <input type="checkbox" id="switch44" /> <label
				for="switch44" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>Show profile</span> <input type="checkbox" id="switch55" /> <label
				for="switch55" data-on-label="ON" data-off-label="OFF"></label>
		</div>
	</form>
	<h4 class="panel-title">Account Setting</h4>
	<form method="post">
		<div class="setting-row">
			<span>Sub users</span> <input type="checkbox" id="switch66" /> <label
				for="switch66" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>personal account</span> <input type="checkbox" id="switch77" />
			<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>Business account</span> <input type="checkbox" id="switch88" />
			<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>Show me online</span> <input type="checkbox" id="switch99" />
			<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>Delete history</span> <input type="checkbox" id="switch101" />
			<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
		</div>
		<div class="setting-row">
			<span>Expose author name</span> <input type="checkbox" id="switch111" />
			<label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
		</div>
	</form>
</div>
<!-- side panel -->

<!-- share popup -->
<div class="popup-wraper2">
	<div class="popup post-sharing">
		<span class="popup-closed"><i class="ti-close"></i></span>
		<div class="popup-meta">
			<div class="popup-head">
				<select data-placeholder="Share to friends..." multiple
					class="chosen-select multi">
					<option>Share in your feed</option>
					<option>Share in friend feed</option>
					<option>Share in a page</option>
					<option>Share in a group</option>
					<option>Share in message</option>
				</select>
				<div class="post-status">
					<span><i class="fa fa-globe"></i></span>
					<ul>
						<li><a href="#" title=""><i class="fa fa-globe"></i> Post
								Globaly</a></li>
						<li><a href="#" title=""><i class="fa fa-user"></i> Post
								Private</a></li>
						<li><a href="#" title=""><i class="fa fa-user-plus"></i>
								Post Friends</a></li>
					</ul>
				</div>
			</div>
			<div class="postbox">
				<div class="post-comt-box">
					<form method="post">
						<input type="text"
							placeholder="Search Friends, Pages, Groups, etc....">
						<textarea placeholder="Say something about this..."></textarea>
						<div class="add-smiles">
							<span title="add icon" class="em em-expressionless"></span>
							<div class="smiles-bunch">
								<i class="em em---1"></i> <i class="em em-smiley"></i> <i
									class="em em-anguished"></i> <i class="em em-laughing"></i> <i
									class="em em-angry"></i> <i class="em em-astonished"></i> <i
									class="em em-blush"></i> <i class="em em-disappointed"></i> <i
									class="em em-worried"></i> <i class="em em-kissing_heart"></i>
								<i class="em em-rage"></i> <i class="em em-stuck_out_tongue"></i>
							</div>
						</div>

						<button type="submit"></button>
					</form>
				</div>
				<figure>
					<img src="images/resources/share-post.jpg" alt="">
				</figure>
				<div class="friend-info">
					<figure>
						<img alt="" src="images/resources/admin.jpg">
					</figure>
					<div class="friend-name">
						<ins>
							<a title="" href="time-line.html">Jack Carter</a> share <a
								title="" href="#">link</a>
						</ins>
						<span>Yesterday with @Jack Piller and @Emily Stone at the
							concert of # Rock'n'Rolla in Ontario.</span>
					</div>
				</div>
				<div class="share-to-other">
					<span>Share to other socials</span>
					<ul>
						<li><a class="facebook-color" href="#" title=""><i
								class="fa fa-facebook-square"></i></a></li>
						<li><a class="twitter-color" href="#" title=""><i
								class="fa fa-twitter-square"></i></a></li>
						<li><a class="dribble-color" href="#" title=""><i
								class="fa fa-dribbble"></i></a></li>
						<li><a class="instagram-color" href="#" title=""><i
								class="fa fa-instagram"></i></a></li>
						<li><a class="pinterest-color" href="#" title=""><i
								class="fa fa-pinterest-square"></i></a></li>
					</ul>
				</div>
				<div class="copy-email">
					<span>Copy & Email</span>
					<ul>
						<li><a href="#" title="Copy Post Link"><i
								class="fa fa-link"></i></a></li>
						<li><a href="#" title="Email this Post"><i
								class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				<div class="we-video-info">
					<ul>
						<li><span title="" data-toggle="tooltip" class="views"
							data-original-title="views"> <i class="fa fa-eye"></i> <ins>1.2k</ins>
						</span></li>
						<li><span title="" data-toggle="tooltip" class="views"
							data-original-title="views"> <i class="fa fa-share-alt"></i>
								<ins>20k</ins>
						</span></li>
					</ul>
					<button class="main-btn color" data-ripple="">Submit</button>
					<button class="main-btn cancel" data-ripple="">Cancel</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- share popup -->

<!-- report popup -->
<div class="popup-wraper3">
	<div class="popup">
		<span class="popup-closed"><i class="ti-close"></i></span>
		<div class="popup-meta">
			<div class="popup-head">
				<h5>Report Post</h5>
			</div>
			<div class="Rpt-meta">
				<span>We're sorry something's wrong. How can we help?</span>
				<form method="post" class="c-form">
					<div class="form-radio">
						<div class="radio">
							<label> <input type="radio" name="radio"
								checked="checked"><i class="check-box"></i>It's spam or
								abuse
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="radio"><i
								class="check-box"></i>It breaks r/technology's rules
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="radio"><i
								class="check-box"></i>Not Related
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="radio"><i
								class="check-box"></i>Other issues
							</label>
						</div>
					</div>
					<div>
						<label>Write about Report</label>
						<textarea placeholder="write someting about Post" rows="2"></textarea>
					</div>
					<div>
						<button data-ripple="" type="submit" class="main-btn">Submit</button>
						<a href="#" data-ripple="" class="main-btn3 cancel">Close</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- report popup -->

<!-- send message popup -->
<div class="popup-wraper1">
	<div class="popup direct-mesg">
		<span class="popup-closed"><i class="ti-close"></i></span>
		<div class="popup-meta">
			<div class="popup-head">
				<h5>Send Message</h5>
			</div>
			<div class="send-message">
				<form method="post" class="c-form">
					<input type="text" placeholder="Sophia">
					<textarea placeholder="Write Message"></textarea>
					<button type="submit" class="main-btn">Send</button>
				</form>
				<div class="add-smiles">
					<div class="uploadimage">
						<i class="fa fa-image"></i> <label class="fileContainer">
							<input type="file">
						</label>
					</div>
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

			</div>
		</div>
	</div>
</div>
<!-- send message popup -->