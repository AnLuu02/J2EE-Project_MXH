$(document).ready(function() {

	document.querySelectorAll(".setting-area li").forEach(elem => {
		elem.addEventListener('click', e => {
			if (elem.getAttribute("id") === "friend_request" && elem.querySelector(".dropdowns")) {
				elem.querySelector(".dropdowns").classList.toggle("active");
			} else if (elem.getAttribute("id") === "notifi_request" && elem.querySelector(".dropdowns")) {
				elem.querySelector(".dropdowns").classList.toggle("active");
			}
		})
	})
	document.addEventListener("click", function(event) {
		document.querySelectorAll(".setting-area li").forEach(elem => {
			if (!elem.contains(event.target)) {
				if (elem.querySelector(".dropdowns")) {
					// Clicked outside the dropdown, hide it
					elem.querySelector(".dropdowns").classList.remove("active");

				}
			}
		})
	});

	document.querySelectorAll('#friend_request .dropdowns li').forEach(li_elem => {
		li_elem.addEventListener('click', e => {
			e.stopPropagation();
		})
	})
	document.querySelectorAll('#notifi_request .dropdowns li').forEach(li_elem => {
		li_elem.addEventListener('click', e => {
			e.stopPropagation();
		})
	})

	// New submit post box
	$(".new-postbox").click(function() {
		$(".postoverlay").fadeIn(500);
	});
	$(".postoverlay").not(".new-postbox").click(function() {
		$(".postoverlay").fadeOut(500);
	});

	// top menu list	
	$('.main-menu > span').on('click', function() {
		$('.nav-list').slideToggle(300);

	});

	// show comments	
	$('.comment').on('click', function() {
		$(this).parents(".post-meta").siblings(".coment-area").slideToggle("slow");
	});

	// add / post location	
	$('.add-loc').on('click', function() {
		$('.add-location-post').slideToggle("slow");
	});

	// add popup upload from gallery	
	$('.from-gallery').on('click', function() {
		$('.already-gallery').addClass('active');

	});

	$('.canceld').on('click', function() {
		$('.already-gallery').removeClass('active');
	});

	// Stories slide show
	$('.story-box').on('click', function() {
		$('.stories-wraper').addClass('active');
	});
	$('.close-story').on('click', function() {
		$('.stories-wraper').removeClass('active');
	});

	// add popup upload photo
	$('.edit-prof').on('click', function() {
		$('.popup-wraper').addClass('active');
	});
	$('.popup-closed').on('click', function() {
		$('.popup-wraper, .popup-wraper1').removeClass('active');
	});

	// Create group friend
	$('.item-upload').on('click', function() {
		$('.popup-wraper4').addClass('active');
	});
	$('.popup-closed').on('click', function() {
		$('.popup-wraper4').removeClass('active');
	});

	// Create group friend
	$('.item-upload.album').on('click', function() {
		$('.popup-wraper5').addClass('active');
	});
	$('.popup-closed').on('click', function() {
		$('.popup-wraper5').removeClass('active');
	});

	// popup event
	$('.event-title h4').on('click', function() {
		$('.popup-wraper7').addClass('active');
	});
	$('.popup-closed').on('click', function() {
		$('.popup-wraper7').removeClass('active');
	});

	// chat messenger remove unread
	$('.msg-pepl-list .nav-item').on('click', function() {
		$(this).removeClass('unread');
	});

	// select gender on pitpoint page	
	$('.select-gender > li').click(function() {
		$(this).addClass('selected').siblings().removeClass('selected');
	});

	// select amount on donation page	
	$('.amount-select > li').click(function() {
		$(this).addClass('active').siblings().removeClass('active');
	});
	// select pay method on donation page	
	$('.pay-methods > li').click(function() {
		$(this).addClass('active').siblings().removeClass('active');
	});

	// popup add user
	$('.user-add').on('click', function() {
		$('.popup-wraper6').addClass('active');
	});
	$('.popup-closed').on('click', function() {
		$('.popup-wraper6').removeClass('active');
		return false;
	});

	// popup send message
	$('.send-mesg').on('click', function() {
		$('.popup-wraper1').addClass('active');
		return false;
	});

	// popup report post
	$('.bad-report').on('click', function() {
		$('.popup-wraper3').addClass('active');
		return false;
	});
	$('.popup-closed, .cancel').on('click', function() {
		$('.popup-wraper3').removeClass('active');
		return false;
	});

	// comments popup
	jQuery(window).on("load", function() {
		$('.show-comt').bind('click', function() {
			$('.pit-comet-wraper').addClass('active');
		});
	});
	// comments popup
	$('.add-pitrest > a, .pitred-links > .main-btn, .create-pst').on('click', function() {
		$('.popup-wraper').addClass('active');
		return false;
	});

	// share post popup	
	$('.share-pst').on('click', function() {
		$('.popup-wraper2').addClass('active');
		return false;
	});
	$('.popup-closed, .cancel').on('click', function() {
		$('.popup-wraper2').removeClass('active');
	});

	// messenger call popup
	$('.audio-call, .video-call').on('click', function() {
		$('.call-wraper').addClass('active');
	});
	$('.decline-call, .later-rmnd').on('click', function() {
		$('.call-wraper').removeClass('active');
	});


	// drag drop widget

	//$(init);
	//function init() {
	//$(".droppable-area1, .droppable-area2").sortable({
	//		connectWith: ".connected-sortable",
	//	stack: '.connected-sortable ul'
	//}).disableSelection();
	//	}

	//--- heart like and unlike 
	var counter = 0;
	var animated = false;
	$('.heart').click(function() {
		if (!animated) {
			$(this).addClass('happy').removeClass('broken');
			animated = true;
			counter++;
			$(this).children('span').text(counter);
		}
		else {
			$(this).removeClass('happy').addClass('broken');
			animated = false;
			counter--;
			$(this).children('span').text(counter);
		}
	});

	// search fadein out at navlist area	
	$('.search-data').on('click', function() {
		$(".searchees").fadeIn("slow", function() {
		});
		return false;
	});

	$('.cancel-search').on('click', function() {
		$(".searchees").fadeOut("slow", function() {
		});
		return false;
	});



	//--- user setting dropdown on topbar	
	$('.user-img').on('click', function() {
		$('.user-setting').toggleClass("active");
	});


	//--- side message box	
	$('.friendz-list > li, .chat-users > li, .drops-menu > li > a.show-mesg').on('click', function() {
		$('.chat-box').addClass("show");
		return false;
	});
	$('.close-mesage').on('click', function() {
		$('.chat-box').removeClass("show");
		return false;
	});

	//------ scrollbar plugin
	if ($.isFunction($.fn.perfectScrollbar)) {
		$('.dropdowns, .twiter-feed, .invition, .followers, .chatting-area, .peoples, #people-list, .chat-list > ul, .message-list, .chat-users, .left-menu, .sugestd-photo-caro, .popup.events, .related-tube-psts, .music-list, .more-songs, .media > ul, .conversations, .msg-pepl-list, .menu-slide, .frnds-stories, .modal-body .we-comet').perfectScrollbar();
	}

	/*--- left menu full ---*/
	$('.menu-small').on("click", function() {
		$(".fixed-sidebar.left").addClass("open");

	});
	$('.closd-f-menu').on("click", function() {
		$(".fixed-sidebar.left").removeClass("open");

	});

	/*--- emojies show on text area ---*/
	$('.add-smiles > span, .smile-it').on("click", function() {
		$(this).siblings(".smiles-bunch").toggleClass("active");
	});

	$('.smile-it').on("click", function() {
		$(this).children(".smiles-bunch").toggleClass("active");
	});

	//save post click	
	$('.save-post, .bane, .get-link').on("click", function() {
		$(this).toggleClass("save");
	});

	// delete notifications
	$('.notification-box > ul li > i.del').on("click", function() {
		$(this).parent().slideUp();
		return false;
	});

	/*--- socials menu scritp ---*/
	$('.f-page > figure i').on("click", function() {
		$(".drop").toggleClass("active");
	});


	//select photo in upload photo popup	
	$('.sugestd-photo-caro > li').on('click', function() {
		$(this).toggleClass('active');
		return false;
	});

	//--- pitred point adding
	$('.minus').click(function() {
		var $input = $(this).parent().find('input');

		$('.minus').on("click", function() {
			$(this).siblings('input').removeClass("active");
			$(this).siblings('.plus').removeClass("active");

		});

		var count = parseInt($input.val()) - 1;
		count = count < 1 ? 0 : count;
		$input.val(count);
		$input.change();
		return false;
	});

	$('.plus').click(function() {
		var $input = $(this).parent().find('input');

		$('.plus').on("click", function() {
			$(this).addClass("active");
			$(this).siblings('input').addClass("active");
		});
		$input.val(parseInt($input.val()) + 1);
		$input.change();
		return false;
	});

	//Link copied on click 	

	$(".get-link").click(function(event) {
		event.preventDefault();
		CopyToClipboard("This is some test value.", true, "Link copied");
	});

	function CopyToClipboard(value, showNotification, notificationText) {

		var $temp = $("<input>");
		$("body").append($temp);
		$temp.val(value).select();
		document.execCommand("copy");
		$temp.remove();

		if (typeof showNotification === 'undefined') {
			showNotification = true;
		}
		if (typeof notificationText === 'undefined') {
			notificationText = "Copied to clipboard";
		}

		var notificationTag = $("div.copy-notification");
		if (showNotification && notificationTag.length == 0) {
			notificationTag = $("<div/>", { "class": "copy-notification", text: notificationText });
			$("body").append(notificationTag);

			notificationTag.fadeIn("slow", function() {
				setTimeout(function() {
					notificationTag.fadeOut("slow", function() {
						notificationTag.remove();
					});
				}, 1000);
			});
		}
	}
	//profile menu
	let arrURL = window.location.pathname.split("/");
	let newURL, hrf, temp;
	if (arrURL[2] == "profile" && arrURL[3]) {
		temp = `/${arrURL[1]}/${arrURL[2]}/${arrURL[3]}/`;
		if (arrURL[4]) {
			if (document.querySelector(".profile-menu li a.active")) {
				document.querySelector(".profile-menu li a.active").classList.remove("active");
			}
			if (document.querySelector(`.profile-menu li a[id="${arrURL[4].trim()}"]`)) {
				document.querySelector(`.profile-menu li a[id="${arrURL[4].trim()}"]`).classList.add('active');
			}

		}
		else {
			if (document.querySelector(`.profile-menu li a[id="timeline"]`)) {
				document.querySelector(`.profile-menu li a[id="timeline"]`).classList.add("active");
			}
		}
		document.querySelectorAll(".profile-menu li a").forEach(elemA => {
			elemA.addEventListener("click", function(e) {
				e.preventDefault();
				if (current_session) {
					if (document.querySelector(".profile-menu li a.active")) {
						document.querySelector(".profile-menu li a.active").classList.remove("active");
					}
					this.classList.add("active");
					hrf = this.getAttribute("id");
					newURL = temp + hrf;
					window.location.href = newURL;
				}
				else {
					toast({
						title: "Cảnh báo",
						message: "Đăng nhập để tiếp tục.",
						type: "warning",
						duration: 1000
					});
				}
			});
		})
	}


	//===== Search Filter =====//
	// (function ($) {
	// 	// custom css expression for a case-insensitive contains()
	// 	jQuery.expr[':'].Contains = function (a, i, m) {
	// 		return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
	// 	};

	// 	function listFilter(searchDir, list) {
	// 		var form = $("<form>").attr({ "class": "filterform", "action": "#" }),
	// 			input = $("<input>").attr({ "class": "filterinput", "type": "text", "placeholder": "Search Contacts..." });
	// 		$(form).append(input).appendTo(searchDir);

	// 		$(input)
	// 			.change(function () {
	// 				var filter = $(this).val();
	// 				if (filter) {
	// 					$(list).find("li:not(:Contains(" + filter + "))").slideUp();
	// 					$(list).find("li:Contains(" + filter + ")").slideDown();
	// 				} else {
	// 					$(list).find("li").slideDown();
	// 				}
	// 				return false;
	// 			})
	// 			.keyup(function () {
	// 				$(this).change();
	// 			});
	// 	}

	// 	//search friends widget
	// 	$(function () {
	// 		listFilter($("#searchDir"), $("#people-list"));
	// 	});
	// }(jQuery));
	//--- bootstrap tooltip and popover	
	$(function() {
		$('[data-toggle="tooltip"]').tooltip();
		$('[data-toggle="popover"]').popover();
	});

	// Sticky Sidebar & header
	if ($(window).width() < 981) {
		$(".sidebar").children().removeClass("stick-widget");
	}

	if ($.isFunction($.fn.stick_in_parent)) {
		$('.stick-widget').stick_in_parent({
			parent: '#page-contents',
			offset_top: 60,
		});


		$('.stick').stick_in_parent({
			parent: 'body',
			offset_top: 0,
		});

	}

	/*--- topbar setting dropdown ---*/
	$(".we-page-setting").on("click", function() {
		$(".wesetting-dropdown").toggleClass("active");
	});

	/*--- topbar toogle setting dropdown ---*/
	$('#nightmode').on('change', function() {
		if ($(this).is(':checked')) {
			// Show popup window
			$(".theme-layout").addClass('black');
		}
		else {
			$(".theme-layout").removeClass("black");
		}
	});

	//chosen select plugin
	if ($.isFunction($.fn.chosen)) {
		$("select").chosen();
	}

	//----- add item plus minus button
	if ($.isFunction($.fn.userincr)) {
		$(".manual-adjust").userincr({
			buttonlabels: { 'dec': '-', 'inc': '+' },
		}).data({ 'min': 0, 'max': 20, 'step': 1 });
	}

	if ($.isFunction($.fn.loadMoreResults)) {
		$('.loadMore').loadMoreResults({
			displayedItems: 3,
			showItems: 1,
			button: {
				'class': 'btn-load-more',
				'text': 'Load More'
			}
		});

		$('.load-more').loadMoreResults({
			displayedItems: 8,
			showItems: 1,
			button: {
				'class': 'btn-load-more',
				'text': 'Load More'
			}
		});

		$('.load-more4').loadMoreResults({
			displayedItems: 8,
			showItems: 1,
			button: {
				'class': 'btn-load-more',
				'text': 'Load More'
			}
		});
	}
	//===== owl carousel  =====//
	if ($.isFunction($.fn.owlCarousel)) {

		/*--- timeline page ---*/
		$('.suggested-frnd-caro').owlCarousel({
			items: 4,
			loop: true,
			margin: 10,
			autoplay: false,
			autoplayTimeout: 1500,
			smartSpeed: 1000,
			autoplayHoverPause: true,
			nav: true,
			dots: false,
			responsiveClass: true,
			responsive: {
				0: {
					items: 1,
				},
				600: {
					items: 4,

				},
				1000: {
					items: 4,
				}
			}
		});

		$('.frndz-list').owlCarousel({
			items: 5,
			loop: true,
			margin: 10,
			autoplay: false,
			autoplayTimeout: 1500,
			smartSpeed: 1000,
			autoplayHoverPause: true,
			nav: true,
			dots: false,
			responsiveClass: true,
			responsive: {
				0: {
					items: 2,
				},
				600: {
					items: 3,

				},
				1000: {
					items: 5,
				}
			}
		});

		$('.photos-list').owlCarousel({
			items: 5,
			loop: true,
			margin: 10,
			autoplay: false,
			autoplayTimeout: 1500,
			smartSpeed: 1000,
			autoplayHoverPause: true,
			nav: true,
			dots: false,
			responsiveClass: true,
			responsive: {
				0: {
					items: 2,
				},
				600: {
					items: 3,

				},
				1000: {
					items: 5,
				}
			}
		});

		$('.videos-list').owlCarousel({
			items: 3,
			loop: true,
			margin: 30,
			autoplay: false,
			autoplayTimeout: 1500,
			smartSpeed: 1000,
			autoplayHoverPause: true,
			nav: true,
			dots: false,
			responsiveClass: true,
			responsive: {
				0: {
					items: 1,
				},
				600: {
					items: 2,

				},
				1000: {
					items: 3,
				}
			}
		});
		// Related groups on groups page
		$('.related-groups').owlCarousel({
			items: 6,
			loop: true,
			margin: 50,
			autoplay: false,
			autoplayTimeout: 1500,
			smartSpeed: 1000,
			autoplayHoverPause: true,
			nav: true,
			dots: false,
			center: false,
			responsiveClass: true,
			responsive: {
				0: {
					items: 2,
					margin: 10,
				},
				600: {
					items: 3,

				},
				1000: {
					items: 6,
				}
			}
		});


		//sponsors carousel	
		$('.sponsors').owlCarousel({
			loop: true,
			margin: 80,
			smartSpeed: 1000,
			responsiveClass: true,
			nav: true,
			dots: false,
			autoplay: true,
			responsive: {
				0: {
					items: 1,
					nav: false,
					dots: false
				},
				600: {
					items: 3,
					nav: false
				},
				1000: {
					items: 5,
					nav: false,
					dots: false
				}
			}
		});
	}

	//---- responsive header
	if ($.isFunction($.fn.mmenu)) {
		$(function() {

			//	create the menus
			$('#menu').mmenu();
			$('#shoppingbag').mmenu({
				navbar: {
					title: 'General Setting'
				},
				offCanvas: {
					position: 'right'
				}
			});

			//	fire the plugin
			$('.mh-head.first').mhead({
				scroll: {
					hide: 200
				}

			});
			$('.mh-head.second').mhead({
				scroll: false
			});
		});
	}

	//**** Slide Panel Toggle ***//
	$("span.main-menu").on("click", function() {
		$(".side-panel").toggleClass('active');
		$(".theme-layout").toggleClass('active');
		return false;
	});

	$('.theme-layout').on("click", function() {
		$(this).removeClass('active');
		$(".side-panel").removeClass('active');
	});


	// login & register form
	$('button.signup').on("click", function() {
		$('.login-reg-bg').addClass('show');
		return false;
	});

	/** Post a Comment **/
	jQuery(".post-comt-box textarea").on("keydown", function(event) {

		if (event.keyCode == 13) {
			var comment = jQuery(this).val();
			var parent = jQuery(".showmore").parent("li");
			var comment_HTML = '<li><div class="comet-avatar"><img alt="" src="images/resources/comet-2.jpg"></div><div class="we-comment"><h5><a title="" href="time-line.html">Sophia</a></h5><p>' + comment + '</p><div class="inline-itms"><span>1 minut ago</span><a title="Reply" href="#" class="we-reply"><i class="fa fa-reply"></i></a><a title="" href="#"><i class="fa fa-heart"></i></a></div></div></li>';
			$(comment_HTML).insertBefore(parent);
			jQuery(this).val('');
		}
	});

	// Responsive nav dropdowns
	$('li.menu-item-has-children > a').on('click', function() {
		$(this).parent().siblings().children('ul').slideUp();
		$(this).parent().siblings().removeClass('active');
		$(this).parent().children('ul').slideToggle();
		$(this).parent().toggleClass('active');
		return false;
	});



	// Toast function
	// Toast function
	function toast({ title = "", message = "", type = "info", duration = 3000 }) {
		const main = document.getElementById("toast");
		if (main) {
			const toast = document.createElement("div");

			// Auto remove toast
			const autoRemoveId = setTimeout(function() {
				main.removeChild(toast);
			}, duration + 1000);

			// Remove toast when clicked
			toast.onclick = function(e) {
				if (e.target.closest(".toast__close")) {
					main.removeChild(toast);
					clearTimeout(autoRemoveId);
				}
			};

			const icons = {
				success: "fas fa-check-circle",
				info: "fas fa-info-circle",
				warning: "fas fa-exclamation-circle",
				error: "fas fa-exclamation-circle"
			};
			const icon = icons[type];
			const delay = (duration / 1000).toFixed(2);

			toast.classList.add("toast", `toast--${type}`);
			toast.style.animation = `slideInLeft ease .3s forwards, fadeOut ease-in-out .5s ${delay}s forwards`;

			toast.innerHTML = `
					  <div class="toast__icon">
						  <i class="${icon}"></i>
					  </div>
					  <div class="toast__body">
						  <h3 class="toast__title">${title}</h3>
						  <p class="toast__msg">${message}</p>
					  </div>
					  <div class="toast__close">
						  <i class="fas fa-times"></i>
					  </div>
				  `;
			main.appendChild(toast);
		}
	}


	// xử lý login
	function checkEmail() {
		var pattern1 = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var email = $('#email_login');
		var validemail = pattern1.test(email.val());
		if (email.val() == "") {
			$('#email_err').html('Chưa nhập email đăng nhập kìa.');
			email.attr('class', "active");
			return false;
		} else if (!validemail) {
			$('#email_err').html('Email không hợp lệ (abc@xyz.com)');
			email.attr('class', "active");
			return false;
		} else {
			$('#email_err').html('');
			email.attr('class', "");
			return true;
		}
	}

	function checkPass() {
		var pass = $('#password_login');

		if (pass.val() == "") {
			$('#password_err').html('Không nhập mật khẩu à?');
			pass.attr('class', "active");
			return false;
		} else {
			$('#password_err').html("");
			pass.attr('class', "");
			return true;
		}
	}
	$('#form_login').submit(function(e) {
		e.preventDefault();
		var pass = $('#password_login');
		var email = $('#email_login');
		if (!checkEmail()) {
			email.attr('class', "active");
			if (!checkPass()) {
				pass.attr('class', "active");
			}
		} else if (!checkPass()) {
			pass.attr('class', "active");
		} else {
			var data = $(this).serialize();
			$.ajax({
				type: "POST",
				url: "dang-nhap",
				data: data,
				success: function(response) {
					if (response === "USER_SUCCESS_LOGIN") {
						$(location).attr('href', 'trang-chu');
					}
					else if (response === "ADMIN_SUCCESS_LOGIN") {
						$(location).attr('href', 'admin-home');
					}
					else if (response === "NOT_FOUND") {
						$(location).attr('href', 'dang-nhap?action=login&message=username_password_invalid&alert=danger');
					}
				},
			});
		}
	});



	//form register
	function checkFirstName(elemInput, elemError) {
		var pattern = /^[a-zA-Z-' ]+$/;
		var validuser = pattern.test(elemInput.val());
		if (elemInput.val() == "") {
			elemError.html('Tên không được để trống.');
			elemInput.addClass('error');
			return false;
		} else if (!validuser) {
			elemError.html('Tên chỉ chứa chữ cái thường và in hoa.');
			elemInput.addClass('error');
			return false;
		} else {
			elemError.html('');
			if (elemInput.hasClass('error')) {
				elemInput.removeClass('error');
			}
			elemInput.addClass('success');

			return true;
		}
	}
	function checkLastName() {
		var pattern = /^[a-zA-Z-' ]+$/;
		var last_name = $("#last_name");

		var validuser = pattern.test(last_name.val());
		if (last_name.val() == "") {
			$('#error_last_name').html('Tên không được để trống.');
			last_name.addClass('error');

			return false;
		} else if (!validuser) {
			$('#error_last_name').html('Tên chỉ chứa chữ cái thường và in hoa.');
			last_name.addClass('error');

			return false;
		} else {
			$('#error_last_name').html('');
			if (last_name.hasClass('error')) {
				last_name.removeClass('error');
			}
			last_name.addClass('success');
			return true;
		}
	}

	function checkEmailRegister(elemInput, elemError) {
		var pattern1 = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var validemail = pattern1.test(elemInput.val());
		if (elemInput.val() == "") {
			elemError.html('Email không được để trống.');
			elemInput.addClass('error');
			return false;
		} else if (!validemail) {
			elemError.html('Email không hợp lệ (abc@xyz.com)');
			elemInput.addClass('error');
			return false;
		} else {
			elemError.html('');
			if (elemInput.hasClass('error')) {
				elemInput.removeClass('error');
			}
			elemInput.addClass('success');
			return true;
		}
	}

	function checkPassRegister() {
		var pattern2 = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
		var pass = $('#password_register');
		var validpass = pattern2.test(pass.val());

		if (pass.val() == "") {
			$('#error_password').html('Mật khẩu không được để trống');
			pass.addClass('error');
			return false;
		} else if (!validpass) {
			$('#error_password').html(
				'Phải từ 5 đến 15 kí tự, có ít nhất một chữ cái thường, một chứ cái in hoa, một số và một kí tự đặc biệt.'
			);
			pass.addClass('error');

			return false;

		} else {
			$('#error_password').html("");
			if (pass.hasClass('error')) {
				pass.removeClass('error');
			}
			pass.addClass('success');

			return true;
		}
	}

	function checkConfirmPassRegister() {
		var pass = $('#password_register');
		var cpass = $('#confirm_password_register');
		if (cpass.val() == "") {
			$('#error_confirm_password').html('Xác nhận mật khẩu không được để trống.');
			cpass.addClass('error');
			return false;
		} else if (pass.val() !== cpass.val()) {
			$('#error_confirm_password').html('Không khớp với mật khẩu');
			cpass.addClass('error');

			return false;
		} else {
			$('#error_confirm_password').html('');
			if (cpass.hasClass('error')) {
				cpass.removeClass('error');
			}
			cpass.addClass('success');
			return true;
		}
	}




	function checkGender() {
		if (!$('input:radio[name="gender"]').is(':checked')) {
			$("#error_gender").html("Không được để trống giới tính.");
			$('#gender .form-select').each((index, item) => {
				item.classList.add('error');
			})
			return false;
		} else {
			$('#error_gender').html('');
			$('#gender .form-select').each((index, item) => {
				if (item.classList.contains('error')) {
					item.classList.remove('error');
					item.classList.add('success');

				}
			})
			if ($('input:radio[name="gender"]:checked').val() === "other") {

				if ($("#select_vocative").val() === "") {
					$("#error_sub_gender").html("Vui lòng chọn giúp chúng tôi.");
					return false;
				}
			}
			$("#error_sub_gender").html("");

			return true;
		}
	}
	function checkBirthDay() {
		let dateBirth = Number($("#date").val());
		let monthBirth = Number($("#month").val());
		let yearBirth = Number($("#year").val());
		let date = new Date();
		let isOldEnough = false;
		if (date.getFullYear() - yearBirth >= 16) {
			if (monthBirth - date.getMonth() <= 0) {
				if (dateBirth - date.getDate() <= 0) {
					isOldEnough = true;
				}
			}

		}
		if (!isOldEnough) {
			$('#error_year').html('Chưa đủ tuổi. Ững dụng yêu cầu 16+ trở lên.');
			return false;
		} else {
			$('#error_year').html('');
			return true;
		}
	}
	$('#form_register').submit(function(e) {
		let email = $('#email_register');
		let emailError = $("#error_email");

		let first_name = $("#first_name");
		let firt_name_error = $('#error_first_name');
		e.preventDefault();
		checkFirstName(first_name, firt_name_error);
		checkLastName();
		checkEmailRegister(email, emailError);
		checkGender();
		checkPassRegister();
		checkConfirmPassRegister();
		checkBirthDay();
		if (!checkFirstName(first_name, firt_name_error) ||
			!checkLastName() ||
			!checkEmailRegister(email, emailError) ||
			!checkGender() ||
			!checkPassRegister() ||
			!checkConfirmPassRegister() ||
			!checkBirthDay()) {
		}
		else {
			$("#message").html("");
			var data = $(this).serialize();
			$.ajax({
				type: "POST",
				url: "dang-nhap",
				data: data,
				success: function(response) {
					if (response === "success") {
						alert("dang ki thanh cong");
						$(location).attr('href', 'dang-nhap?action=login');
					}
				},
			});
		}
	});
	//handle add friend
	function setStateAccept(elem, state_accept) {
		let icon = document.getElementById("icon_add_fr");
		if (elem.closest(".profile-controls")) {
			if (state_accept === "waiting") {
				icon.setAttribute("class", "fa fa-user-slash");
				elem.setAttribute("data-bs-original-title", "Hủy yêu cầu");
			}
			else if (state_accept === "accepted") {
				icon.setAttribute("class", "fa fa-user-check");
				elem.setAttribute("data-bs-original-title", "Đồng ý");

			}
			else if (state_accept === "friend") {
				icon.setAttribute("class", "fa fa-user");
				elem.setAttribute("data-bs-original-title", "Bạn bè");
			}
			else {
				icon.setAttribute("class", "fa fa-user-plus");
				elem.setAttribute("data-bs-original-title", "Thêm bạn");

			}
		}
		else {
			if (state_accept === "waiting") {
				elem.innerText = "Hủy yêu cầu";
			}
			else if (state_accept === "accepted") {
				elem.innerText = "Đồng ý";
			}
			else if (state_accept === "friend") {
				elem.innerText = "Bạn bè";

			}
			else {
				elem.innerText = "Thêm bạn";
			}
		}
	}

	// URL WebSocket 
	var socket = new WebSocket("ws://localhost:8080/Project_MXH/friend");

	// Sự kiện khi kết nối WebSocket được mở
	socket.onopen = function(event) {
		event.data = null;
	};

	// ul chứa danh sách lời mời kết bạn
	let container_addfr = document.getElementById("add_friends");
	let container_notifi = document.getElementById("notification");
	let main_chat_users = document.getElementById("chat-users");

	// Sự kiện khi nhận tin nhắn từ server
	socket.onmessage = function(event) {
		var response = JSON.parse(event.data);
		console.log(response);
		if (response) {
			let id_user_send = "";
			let id_user_receive = "";
			console.log(document.querySelectorAll(".add_friend"));
			let isAddFriendProfile = false;
			let totalUser;
			if (document.querySelectorAll(".add_friend") && document.querySelectorAll(".add_friend").length > 1) {
				totalUser = document.querySelectorAll(".add_friend").length;
			}
			else {
				totalUser = 1;
			}
			document.querySelectorAll(".add_friend").forEach(elem => {
				id_user_send = elem.getAttribute('id_user');
				id_user_receive = document.getElementById("current_user")
					? document.getElementById("current_user").getAttribute("session_current_user")
					: "";
				if (totalUser > 1) {
					isAddFriendProfile = id_user_receive === response.user_receive && id_user_send === response.user_send;
				}
				else {
					isAddFriendProfile = id_user_receive === response.user_receive;
				}
				if (isAddFriendProfile) {

					if (elem.closest(".setting-area")) {

					}
					else {
						elem.setAttribute('state_add_fr', response.state_add_fr);
						setStateAccept(elem, response.state_add_fr);
					}
					$.ajax({
						type: "POST",
						url: handleUrlAjaxProfile("handle"),
						data: { "id_user": response.user_send, "action": "find_user" },
						success: function(rsp) {
							// Khi ấn thêm bạn
							if (rsp) {
								let data = JSON.parse(rsp);
								if (response.state_add_fr === "accepted") {
									let li_addfr = document.createElement("li");
									li_addfr.setAttribute("id_user_sended", data.id);
									li_addfr.innerHTML = `<div>
															<figure>
																<img src="/layouts/web/images/resources/thumb-2.jpg" alt="">
															</figure>
															<div class="mesg-meta">
																<h6><a href="#"
																		title="">${data.full_name}</a>
																</h6>
																<span><b>Amy</b> is mutule
																	friendsssssssssssss</span>
																<i>yesterday</i>
															</div>
															<div class="add-del-friends">
																<a href="#" title="" id="accepted_fr" id_user="${data.id}" class="add_friend" state_add_fr="accepted"><i class="fa fa-heart"></i></a> 
																<a href="#" title="" id="refuseded_fr" id_user="${data.id}" class="add_friend" state_add_fr="waiting"><i class="fa fa-close"></i></a>
															</div>
														</div>`;
									let prs = new Promise(resolve => {
										if (document.querySelector("#list_none")) {
											document.querySelector("#list_none").remove();
										}
										resolve(1);
									})

									prs.then(() => {
										container_addfr.appendChild(li_addfr);
										return 1;
									}).then(() => {
										if (document.querySelectorAll("#add_friends li")
											&& document.querySelectorAll("#add_friends li").length > 0
											&& document.getElementById("total_fr_request")) {
											document.getElementById("total_fr_request").style.display = "block";
											document.getElementById("total_fr_request").innerText = document.querySelectorAll("#add_friends li").length;

										}

										if (document.querySelectorAll(`#add_friends li[id_user_sended="${data.id}"] .add_friend`)) {
											handleClickAddFriends(document.querySelectorAll(`#add_friends li[id_user_sended="${data.id}"] .add_friend`));
										}
										document.querySelectorAll('#friend_request .dropdowns li').forEach(li_elem => {
											li_elem.addEventListener('click', e => {
												e.stopPropagation();
												if (e.target.closest("a#accepted_fr")) {
												}
												if (e.target.closest("a#refuseded_fr")) {
												}
											})
										})
										document.querySelectorAll('#notifi_request .dropdowns li').forEach(li_elem => {
											li_elem.addEventListener('click', e => {
												e.stopPropagation();

											})
										})
									})

								}
								// Khi ấn nút hủy lời mời
								else if (response.state_add_fr === "") {
									handleStateFriendMessage(response.user_send);
								}
								// Khi ấn nút đồng ý
								else if (response.state_add_fr === "friend") {
									console.log("Đã chấp nhận lời mời kết bạn");
									elem.setAttribute("id", "dropdownMenuLink");
									elem.setAttribute("data-bs-toggle", "dropdown");
									elem.setAttribute("aria-expanded", "false");
									$.ajax({
										type: "POST",
										url: handleUrlAjaxProfile("handle"),
										data: { "id_user": response.user_send, "action": "find_user" },
										success: function(rsp) {
											let data = JSON.parse(rsp);

											//render notifi
											let li_notifi = document.createElement("li");
											li_notifi.setAttribute("id_user_sended", data.id);
											li_notifi.innerHTML = `<a href="" title="">
																<figure>
																	<img
																		src="" alt="">
																	<span class="status f-online"></span>
																</figure>
																<div class="mesg-meta">
																	<h6>${data.full_name}</h6>
																	<span>Đã chấp nhận lời mời kết bạn.</span> <i>2 min
																		ago</i>
																</div>
														</a>`;


											//render list friend
											let li_friend = document.createElement("li");
											li_friend.setAttribute("id_user", data.id);
											li_friend.innerHTML = `<li>
												<div class="author-thmb">
														<img src="" alt="">
														<span class="status f-online"></span>
												</div>
												<div class="author-name">${data.full_name}</div>
											</li>`;

											let prs = new Promise(resolve => {
												if (document.querySelector("#list_none_notifi")) {
													document.querySelector("#list_none_notifi").remove();
												}
												main_chat_users.appendChild(li_friend);
												resolve(1);
											})
											prs.then(() => {
												container_notifi.appendChild(li_notifi);
												return 1;
											}).then(() => {
												if (document.querySelectorAll("#notification li")
													&& document.querySelectorAll("#notification li").length > 0
													&& document.getElementById("total_notifi_request")) {
													document.getElementById("total_notifi_request").style.display = "block";
													document.getElementById("total_notifi_request").innerText = document.querySelectorAll("#notification li").length;

												}
											})

										}

									})
								}
								// Khi ấn nút hủy kết bạn
								else if (response.state_add_fr === "deleted") {
									//document.querySelectorAll(".add_friend").forEach(elem => {
									//if (elem.getAttribute("id_user") === response.user_send) {
									//if (elem.closest(".setting-area")) {

									//} else {
									//	elem.setAttribute("state_add_fr", "");
									//	setStateAccept(elem, "");
									//}
									//}
									//})
									if (document.querySelector(`.add_friend[id_user="${response.user_send}"]`)) {
										let elem = document.querySelector(`.add_friend[id_user="${response.user_send}"]`);
										if (elem.closest(".setting-area")) {

										} else {
											elem.setAttribute("state_add_fr", "");
											setStateAccept(elem, "");
										}
									}


									if (document.querySelector(`#chat-users>li[id_user="${response.user_send}"]`)) {
										document.querySelector(`#chat-users>li[id_user="${response.user_send}"]`).remove();
									}
								}
							}
							else {
								alert(1);
							}
						},
					});
				}
			})
		}
	};

	// Sự kiện khi kết nối WebSocket bị đóng
	socket.onclose = function(event) {
		event.data = null;
	};

	// Sự kiện khi có lỗi trong kết nối WebSocket
	socket.onerror = function(error) {
		console.error("Lỗi kết nối WebSocket: " + error);
	};

	let state_accept = "";
	let current_session = document.getElementById("current_user") ? document.getElementById("current_user").getAttribute("session_current_user") : "";
	let main_elem = document.querySelectorAll(".add_friend");
	handleClickAddFriends(main_elem);
	function handleStateFriendMessage(id, state_accept) {
		if (document.querySelectorAll("#add_friends li")) {
			document.querySelectorAll("#add_friends li").forEach(elem1 => {
				if (elem1.getAttribute("id_user_sended") === id) {
					let prs = new Promise(resolve => {
						elem1.remove();
						resolve(1);
					})
					prs.then(() => {
						if (document.querySelectorAll("#add_friends li")
							&& document.querySelectorAll("#add_friends li").length > 0
							&& document.getElementById("total_fr_request")) {
							document.getElementById("total_fr_request").style.display = "block";
							document.getElementById("total_fr_request").innerText = document.querySelectorAll("#add_friends li").length;
						}
						else {
							let li_none = document.createElement("li");
							li_none.setAttribute("id", "list_none");
							li_none.innerHTML = `<div><h6><a href="#" title="">Hiện không có lời mời.</a></h6></div>`;
							container_addfr.appendChild(li_none);
							document.getElementById("total_fr_request").style.display = "none";
						}
						if (document.querySelector(`.add_friend[state_add_fr="accepted"][id_user="${id}"]`)) {
							setStateAccept(document.querySelector(`.add_friend[state_add_fr="accepted"][id_user="${id}"]`), state_accept);
							document.querySelector(`.add_friend[state_add_fr="accepted"][id_user="${id}"]`).setAttribute("state_add_fr", state_accept);
						}

					})
				}
			})
		}
	}

	function handleUrlAjaxProfile(action) {
		let hrf = window.location.href;
		if (hrf.lastIndexOf("Project_MXH") != -1) {
			return hrf.slice(0, hrf.lastIndexOf("Project_MXH")) + `Project_MXH/${action}`;
		}
		return hrf;
	}

	//xu li cac button them, huy, xoa, dong y ket ban
	function handleClickAddFriends(main_elem) {
		if (main_elem) {
			main_elem.forEach(elem => {
				if (elem.closest(".setting-area")) {

				} else {
					state_accept = elem.getAttribute('state_add_fr').toLowerCase().trim();
					setStateAccept(elem, state_accept);
				}
				let timerID;
				elem.addEventListener("click", e => {
					e.preventDefault();
					elem.classList.add("disabled");
					if (timerID) {
						clearTimeout(timerID);
					}
					timerID = setTimeout(() => {
						elem.classList.remove("disabled");
					}, 2000)
					let id_user = elem.getAttribute('id_user');

					// gửi lời mời kết bạn
					if (elem.getAttribute("state_add_fr") === "") {
						socket.send(JSON.stringify({ "state_add_fr": "accepted", "user_send": current_session, "user_receive": id_user }));
						$.ajax({
							type: "POST",
							url: handleUrlAjaxProfile("handle"),
							data: { "id_user": id_user, "action": "add" },
							success: function(response) {
								if (response === "success") {
									elem.setAttribute('state_add_fr', "waiting");
									state_accept = elem.getAttribute('state_add_fr').toLowerCase();
									setStateAccept(elem, state_accept);
								}
								else {
									toast({
										title: "Cảnh báo",
										message: "Đăng nhập để tiếp tục.",
										type: "warning",
										duration: 1000
									});
								}
							},
						});
					}
					// hủy lời mời kết bạn
					else if (elem.getAttribute("state_add_fr") === "waiting") {

						if (elem.closest(".setting-area")) { } else if (elem.closest(".profile-controls")) {
							elem.setAttribute('state_add_fr', "");
						} else {
							elem.setAttribute('state_add_fr', "");
							elem.innerHTML = elem.getAttribute('state_add_fr').toUpperCase();
						}
						socket.send(JSON.stringify({ "state_add_fr": "", "user_send": current_session, "user_receive": id_user }));
						$.ajax({
							type: "POST",
							url: handleUrlAjaxProfile("handle"),
							data: { "id_user": id_user, "action": "delete_invitation" },
							success: function(response) {
								if (response === "success") {
									if (elem.closest(".setting-area")) {
										handleStateFriendMessage(id_user, "");
									} else {
										elem.setAttribute('state_add_fr', "");
										state_accept = elem.getAttribute('state_add_fr').toLowerCase();
										setStateAccept(elem, state_accept);
									}
								}
								else {
									toast({
										title: "Cảnh báo",
										message: "Đăng nhập để tiếp tục.",
										type: "warning",
										duration: 1000
									});
								}
							},
						});
					}

					// đồng ý kết bạn
					else if (elem.getAttribute("state_add_fr") === "accepted") {
						elem.setAttribute("id", "dropdownMenuLink");
						elem.setAttribute("data-bs-toggle", "dropdown");
						elem.setAttribute("aria-expanded", "false");
						if (elem.closest(".setting-area")) { } else if (elem.closest(".profile-controls")) {
							elem.setAttribute('state_add_fr', "friend");
							elem.setAttribute('state_add_fr', "");
						} else {
							elem.setAttribute('state_add_fr', "friend");
							elem.innerHTML = elem.getAttribute('state_add_fr').toUpperCase();
						}
						socket.send(JSON.stringify({ "state_add_fr": "friend", "user_send": current_session, "user_receive": id_user }));
						$.ajax({
							type: "POST",
							url: handleUrlAjaxProfile("handle"),
							data: { "id_user": id_user, "action": "accepted" },
							success: function(response) {
								if (response === "success") {
									elem.setAttribute('state_add_fr', "friend");
									state_accept = elem.getAttribute('state_add_fr').toLowerCase();
									setStateAccept(elem, state_accept);

									handleStateFriendMessage(id_user, "friend");

									//render danh sacsh ban be
									renderListFriend(id_user);


								}
								else {
									toast({
										title: "Cảnh báo",
										message: "Đăng nhập để tiếp tục.",
										type: "warning",
										duration: 1000
									});
								}
							},
						});
					}
					// hủy bạn bè (demo khi nhắn vào nút Bạn bè)
					else if (elem.getAttribute("state_add_fr") === "friend") {
						//socket.send(JSON.stringify({ "state_add_fr": "deleted", "user_send": current_session, "user_receive": id_user }));
						//$.ajax({
						//type: "POST",
						//url: handleUrlAjaxProfile("handle"),
						//data: { "id_user": id_user, "action": "delete_friend" },
						//success: function(response) {
						//if (response === "success") {
						//elem.setAttribute('state_add_fr', "");
						//state_accept = elem.getAttribute('state_add_fr').toLowerCase();
						//setStateAccept(elem, state_accept);

						//if (document.querySelector(`#chat-users>li[id_user="${id_user}"]`)) {
						//document.querySelector(`#chat-users>li[id_user="${id_user}"]`).remove();
						//}
						//}
						//else {
						//alert("Đăng nhập");
						//}
						//},
						//});

						elem.classList.remove("disabled");
						if ($(".huyketban").length) {
							$(".huyketban").on("click", e => {
								socket.send(JSON.stringify({ "state_add_fr": "deleted", "user_send": current_session, "user_receive": id_user }));
								$.ajax({
									type: "POST",
									url: handleUrlAjaxProfile("handle"),
									data: { "id_user": id_user, "action": "delete_friend" },
									success: function(response) {
										if (response === "success") {
											elem.setAttribute('state_add_fr', "");
											state_accept = elem.getAttribute('state_add_fr').toLowerCase();
											setStateAccept(elem, state_accept);

											if (document.querySelector(`#chat-users>li[id_user="${id_user}"]`)) {
												document.querySelector(`#chat-users>li[id_user="${id_user}"]`).remove();
											}
										}
										else {
											toast({
												title: "Cảnh báo",
												message: "Đăng nhập để tiếp tục.",
												type: "warning",
												duration: 1000
											});
										}
									},
								});

							})
						}
					}
				})
			})
		}
	}

	// render danh sách bạn bè
	function renderListFriend(id) {
		$.ajax({
			type: "POST",
			url: handleUrlAjaxProfile("handle"),
			data: { "id_user": id, "action": "find_user" },
			success: function(rsp) {
				// Khi ấn thêm bạn
				if (rsp) {
					let data = JSON.parse(rsp);
					let li_friend = document.createElement("li");
					li_friend.setAttribute("id_user", data.id);
					li_friend.innerHTML = `<li>
												<div class="author-thmb">
														<img src="" alt="">
														<span class="status f-online"></span>
												</div>
												<div class="author-name">${data.full_name}</div>
											</li>`;
					let prs = new Promise(resolve => {
						main_chat_users.appendChild(li_friend);
						resolve(1);
					})
					prs.then(() => {

					})

				}
			}
		});
	}


	//handle upload img
	if (document.getElementById('avatarInput')) {
		var fileInput = document.getElementById('avatarInput');

		fileInput.addEventListener('change', function(event) {
			if (event.target.files.length > 0) {
				if (document.querySelector("#img_minhoa_avatar img")) {
					document.querySelector("#img_minhoa_avatar img").remove();
				}
				var file = event.target.files[0];

				try {
					var url = URL.createObjectURL(file);
					var img = document.createElement('img');
					img.style = "width:80%;height:auto";
					img.src = url;
					document.getElementById("img_minhoa_avatar").appendChild(img);

				} catch (error) {
					console.error("Error creating object URL:", error);
				}
			}
		});
	}

	//upload avatar
	if ($("#submit_upload").length) {
		$("#submit_upload").on("click", function() {
			let formData = new FormData(document.getElementById("form_upload_avatar"));
			let myModal = $('#myModal')
			let imageInput = document.getElementById('avatarInput');

			if (imageInput.files.length > 0) {
				var file = imageInput.files[0];

				// Kiểm tra đuôi mở rộng hoặc kiểu MIME của tệp tin
				if (file.type.startsWith('image/')) {
					$.ajax({
						type: "POST",
						url: handleUrlAjaxProfile("upload-avatar"),
						data: formData,
						processData: false,
						contentType: false,
						success: function(response) {
							let rsp = JSON.parse(response);
							if (!rsp.error) {
								let prs = new Promise(resolve => {
									$("#submit_upload").attr("class", "btn btn-primary disabled");
									toast({
										title: "Thành công!",
										message: "Lưu thành công.",
										type: "success",
										duration: 1000
									});
									resolve(1);
								})
								prs.then(() => {
									setTimeout(() => {
										$(".user-img>img").attr("src", rsp.url_img);
										$(".profile-author-thumb>img").attr("src", rsp.url_img);
										myModal.hide();
										location.reload();
									}, 2000)
								})
							}
						},
						error: function(xhr, status, error) {
							console.error("Error during AJAX request:", xhr.responseText);
						}
					});

					// Thêm dữ liệu vào FormData để gửi đi (ví dụ: formData.append('image', file);)
				} else {
					imageInput.value = '';
					toast({
						title: "Thất bại!",
						message: "Vui lòng chọn một tệp hình ảnh.",
						type: "error",
						duration: 2000
					})
				}
			}
			else {
				toast({
					title: "Thất bại!",
					message: "Vui lòng chọn ảnh.",
					type: "error",
					duration: 2000
				});
			}
		});
	}
	//gỡ avatar
	if ($("#submit_delete_upload").length) {
		$("#submit_delete_upload").on("click", function() {
			let src;
			let file_name;
			if (document.querySelector(".profile-author-thumb img")) {
				src = document.querySelector(".profile-author-thumb img").getAttribute("src").split("/");
				file_name = src[src.length - 1];
			}
			$.ajax({
				type: "POST",
				url: handleUrlAjaxProfile("handle"),
				data: { "id_user": current_session, "action": "delete_avatar", "file_name": file_name },
				success: function(response) {
					if (response === "success") {
						let prs = new Promise(resolve => {
							toast({
								title: "Thành công!",
								message: "Ảnh đã được gỡ.",
								type: "success",
								duration: 1000
							});
							resolve(1);
						})
						prs.then(() => {
							setTimeout(() => {
								location.reload();
							}, 500)
						})
					}
					else {
						alert("Co loi~")
					}
				},
				error: function(xhr, status, error) {
					console.error("Error during AJAX request:", xhr.responseText);
				}
			});
		});
	}
	//handle upload wall img
	if (document.getElementById('wallInput')) {
		var fileInput = document.getElementById('wallInput');

		fileInput.addEventListener('change', function(event) {
			if (event.target.files.length > 0) {
				if (document.querySelector("#img_minhoa_wall_img img")) {
					document.querySelector("#img_minhoa_wall_img img").remove();
				}
				var file = event.target.files[0];

				try {
					var url = URL.createObjectURL(file);
					var img = document.createElement('img');
					img.style = "width:80%;height:auto";
					img.src = url;
					document.getElementById("img_minhoa_wall_img").appendChild(img);
					if ($("#dropdownMenuWallImg").length) {
						$("#dropdownMenuWallImg").attr("src", url);
					}
				} catch (error) {
					console.error("Error creating object URL:", error);
				}
			}
		});
	}

	//upload ảnh bìa
	if ($("#submit_upload_wall_img").length) {
		$("#submit_upload_wall_img").on("click", function() {
			let formData = new FormData(document.getElementById("form_upload_wall_img"));
			let myModal = $('#myModalWallImg');

			$.ajax({
				type: "POST",
				url: handleUrlAjaxProfile("upload-avatar"),
				data: formData,
				processData: false,
				contentType: false,
				success: function(response) {
					let rsp = JSON.parse(response);
					if (!rsp.error) {
						if ($("#dropdownMenuWallImg").length) {
							$("#dropdownMenuWallImg").attr("src", rsp.url_img);
						}
						toast({
							title: "Thành công!",
							message: "Ảnh bìa đã được lưu.",
							type: "success",
							duration: 1000
						});
						myModal.hide();
						location.reload();
					}
				},
				error: function(xhr, status, error) {
					console.error("Error during AJAX request:", xhr.responseText);
				}
			});
		});
	}
	//delete ảnh bìa
	if ($("#submit_delete_upload_wall_img").length) {
		$("#submit_delete_upload_wall_img").on("click", function() {
			let src;
			let file_name;
			if (document.querySelector(".user-profile>figure img")) {
				src = document.querySelector(".user-profile>figure img").getAttribute("src").split("/");
				file_name = src[src.length - 1];
			}
			$.ajax({
				type: "POST",
				url: handleUrlAjaxProfile("handle"),
				data: { "id_user": current_session, "action": "delete_wall_img", "file_name": file_name },
				success: function(response) {
					if (response === "success") {
						location.reload();
					}
					else {
						alert("Co loi~")
					}
				},
				error: function(xhr, status, error) {
					console.error("Error during AJAX request:", xhr.responseText);
				}
			});
		});
	}


	//edit profile
	if ($("#save_edit_profile").length) {
		$("#save_edit_profile").on("click", function() {
			let formData = new FormData(document.getElementById("form_edit_profile"));
			let hobbies = formData.getAll("hobbies");
			formData.set("hobbies", JSON.stringify(hobbies));
			alert("gui ajax");
			$.ajax({
				type: "POST",
				url: handleUrlAjaxProfile("handle"),
				data: formData,
				processData: false,
				contentType: 'application/json; charset=utf-8',
				success: function(response) {
					let rsp = JSON.parse(response);
					if (!rsp.error) {
						location.reload();
					}
				},
				error: function(xhr, status, error) {
					console.error("Error during AJAX request:", xhr.responseText);
				}
			});
		})
	}
});//end
