<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Fakebook Social Network</title>
<link rel="icon"
	href="<c:url value="/layouts/web/images/logofakebook.png" />"
	type="image/png" sizes="16x16">
<link rel="icon" href="./images/logofakebook.png" type="image/png"
	sizes="16x16">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/ef7e2b893b.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="<c:url value="/layouts/web/css/main.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/layouts/web/css/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/layouts/web/css/color.css"/>">
<link rel="stylesheet"
	href="<c:url value="/layouts/web/css/responsive.css"/>">

</head>
<body>
	<div class="www-layout">
    <div id="toast"></div>
    <div id="toast--left"></div>
		<section style="margin: 0;">
			<div class="gap no-gap signin whitish medium-opacity">
				<div class="bg-image"
					style="background-image: url(<c:url value="/layouts/web/images/bg_mxh.jpg" />)"></div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8">
							<div class="big-ad">
								<figure style="">
									<img src="<c:url value="/layouts/web/images/logoX.png" />"
										style="width: 100px;" alt="">
									<img src="<c:url value="/layouts/web/css/logo_fb.svg" />"
										alt="" style="margin: 0;">
								</figure>
								<h1>Welcome to the Fakebook</h1>
								<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
									Voluptatem esse assumenda doloremque autem natus iusto
									explicabo hic. Porro excepturi sunt illum dicta optio, beatae
									laborum autem ipsa eius sequi ad voluptatibus odit distinctio
									repellendus tenetur dolores inventore ea provident debitis quis
									enim nobis ex perspiciatis voluptatum. Similique minima
									repudiandae corporis.</p>

								<div class="barcode">
									<figure>
										<img
											src="<c:url value="/layouts/web/images/resources/Barcode.jpg" />"
											alt="">
									</figure>
									<div class="app-download">
										<span>Download Mobile App and Scan QR Code to login</span>
										<ul class="colla-apps">
											<li><a title=""
												href="https://play.google.com/store?hl=en"><img
													src="<c:url value="/layouts/web/images/android.png" />"
													alt="">android</a></li>
											<li><a title=""
												href="https://www.apple.com/lae/ios/app-store/"><img
													src="<c:url value="/layouts/web/images/apple.png" />"
													alt="">iPhone</a></li>
											<li><a title=""
												href="https://www.microsoft.com/store/apps"><img
													src="<c:url value="/layouts/web/images/windows.png"/>"
													alt="">Windows</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<dec:body />
						</div>

					</div>
				</div>
			</div>
		</section>

	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="exampleModalLabel">Đăng ký</h2>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="form_register" action="POST">
						<div class="row">
							<div class="mb-2 col">
								<input type="text" class="form-control" name="first_name"
									id="first_name" placeholder="Họ"> <span
									class="error_message" id="error_first_name"></span>
							</div>
							<div class="mb-2 col">
								<input type="text" class="form-control" name="last_name"
									id="last_name" placeholder="Tên"> <span
									class="error_message" id="error_last_name"></span>
							</div>
						</div>
						<div class="mb-2">
							<div class="input-group">
								<span class="input-group-text"> @ </span> <input type="email"
									class="form-control" id="email_register" name="email"
									placeholder="Email">

							</div>
							<span class="error_message" id="error_email"></span>
						</div>
						<div class="row mb-2">
							<div class="col">
								<div class="input-group">
									<input class="form-control" type="password"
										id="password_register" name="password"
										placeholder="Mật khẩu..." value=""> <span
										class="input-group-text"> <i class="fa fa-eye"
										id="togglePasswordRegister" style="cursor: pointer"></i>
									</span>
								</div>
								<span class="error_message" id="error_password"></span>

							</div>
							<div class="col">
								<div class="input-group">
									<input class="form-control" type="password"
										id="confirm_password_register" name="confirm_password"
										placeholder="Xác nhận mật khẩu..." value=""> <span
										class="input-group-text"> <i class="fa fa-eye"
										id="toggleConfirmPasswordRegister" style="cursor: pointer"></i>
									</span>
								</div>
								<span class="error_message" id="error_confirm_password"></span>

							</div>
						</div>

						<div class="mb-3 ">
							<div class="row">
								<span style="font-size: 11px; color: #777777;">Ngày sinh?</span>
								<div class=" col ">
									<select name="date_birth" class="form-select" id="date"
										aria-label="Default select example">
										<script>
                                            let date = new Date();
                                            document.write("<option value=" + date.getDate() + " selected>Ngày " + (date.getDate() > 9 ? date.getDate() : "0" + date.getDate()) + "</option>")
                                            for (let i = 1; i <= 31; i++) {
                                                document.write("<option value=" + i + ">" + (i > 9 ? i : "0" + i) + "</option>")
                                            }
                                        </script>
									</select>
								</div>
								<div class=" col">
									<select name="month_birth" class="form-select" id="month"
										aria-label="Default select example">
										<script>
                                            document.write("<option value=" + date.getMonth() + " selected>Tháng " + (date.getMonth() > 9 ? date.getMonth() : "0" + date.getMonth()) + "</option>")
                                            for (let i = 1; i <= 12; i++) {
                                                document.write("<option value=" + i + ">Tháng " + (i > 9 ? i : "0" + i) + "</option>")
                                            }
                                        </script>
									</select>
								</div>
								<div class=" col">
									<select name="year_birth" class="form-select" id="year">
										<script>
                                            document.write("<option value=" + date.getFullYear() + " selected>Năm " + date.getFullYear() + "</option>")

                                            for (let i = 1905; i <= new Date().getFullYear(); i++) {
                                                document.write("<option value=" + i + ">Năm " + i + "</option>")

                                            }
                                        </script>
									</select>
								</div>
							</div>
							<span style="display: block;" class="error_message"
								id="error_year"></span>
						</div>
						<div class="">
							<div class="row" id="gender">
								<span style="font-size: 11px; color: #777777;">Giới tính</span>
								<div class=" col ">
									<div class="form-select d-flex"
										style="padding: 0; position: relative;" multiple>
										<label class="form-check-label" for="male"
											style="width: 100%; height: 100%; padding: 5px 10px;">
											Nam </label> <input class="form-check-input" type="radio"
											name="gender" id="male" value="male"
											style="position: absolute; right: 10px; top: 50%; transform: translateY(-70%);">
									</div>
								</div>
								<div class="col ">

									<div class="form-select d-flex"
										style="padding: 0; position: relative;" multiple>
										<label class="form-check-label" for="female"
											style="width: 100%; height: 100%; padding: 5px 10px;">
											Nữ </label> <input class="form-check-input" type="radio"
											name="gender" id="female" value="female"
											style="position: absolute; right: 10px; top: 50%; transform: translateY(-70%);">
									</div>
								</div>
								<div class="col">

									<div class="form-select d-flex"
										style="padding: 0; position: relative;" multiple>
										<label class="form-check-label" for="other"
											style="width: 100%; height: 100%; padding: 5px 10px;">
											Tùy chỉnh </label> <input class="form-check-input" type="radio"
											name="gender" id="other" value="other"
											style="position: absolute; right: 10px; top: 50%; transform: translateY(-70%);">
									</div>
								</div>
							</div>
							<span class="error_message" id="error_gender"></span>
						</div>


						<div class="d-none choose-other" id="choose-other">
							<div class="mb-2 col">
								<select class="form-select" id="select_vocative"
									name="gender_name" aria-label="Default select example">
									<option value="" selected>Chọng danh xưng</option>
									<option value="her">Cô ấy: "Chúc cô ấy sinh nhật vui
										vẻ!"</option>
									<option value="him">Anh ấy: "Chúc anh ấy sinh nhật vui
										vẻ!"</option>
									<option value="them">Họ: "Chúc họ ấy sinh nhật vui
										vẻ!"</option>
								</select> <span class="error_message" id="error_sub_gender"></span>

							</div>
							<div class="mb-2 col">
								<input type="text" class="form-control" id="recipient-name"
									placeholder="Giới tính(không bắt buộc)">
							</div>
						</div>
						<p style="font-size: 11px; color: #777777;">
							Những người dùng dịch vụ của chúng tôi có thể đã tải thông tin
							liên hệ của bạn lên Facebook. <a href="">Tìm hiểu thêm.</a>
						</p>
						<p style="font-size: 11px; color: #777777;">
							Bằng cách nhấp vào Đăng ký, bạn đồng ý với Điều khoản,<a href="">
								Chính sách quyền riêng tư</a> và <a href="">Chính sách cookie</a>
							của chúng tôi. Bạn có thể nhận được thông báo của chúng tôi qua
							SMS và hủy nhận bất kỳ lúc nào.
						</p>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">Đăng ký</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
        document.querySelectorAll('input[type="radio"]').forEach(item => {
            item.addEventListener('click', () => {
                if (item.value == "other") {
                    document.querySelector('#choose-other').classList.remove('d-none');
					
                }
                else {
                    document.querySelector('#choose-other').classList.add('d-none');

                }
            })
        })
        const togglePassword = document.querySelector("#togglePasswordRegister");
        const password = document.querySelector("#password_register");

        togglePassword.addEventListener("click", function () {

            // toggle the type attribute
            const type = password.getAttribute("type") === "password" ? "text" : "password";
            password.setAttribute("type", type);
            // toggle the eye icon
            this.classList.toggle('fa-eye');
            this.classList.toggle('fa-eye-slash');
        });
        const toggleConfirmPasswordRegister = document.querySelector("#toggleConfirmPasswordRegister");
        const confirm_password_register = document.querySelector("#confirm_password_register");

        toggleConfirmPasswordRegister.addEventListener("click", function () {

            // toggle the type attribute
            const type = confirm_password_register.getAttribute("type") === "password" ? "text" : "password";
            confirm_password_register.setAttribute("type", type);
            // toggle the eye icon
            this.classList.toggle('fa-eye');
            this.classList.toggle('fa-eye-slash');
        });
    </script>
	<script src="<c:url value="/layouts/web/jquery/main.min.js"/>"></script>
	<script src="<c:url value="/layouts/web/jquery/script.js"/>"></script>
</body>
</html>