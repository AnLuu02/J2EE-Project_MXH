<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Fakebook</title>
<link rel="icon" href="images/logofakebook.png" type="image/png"
	sizes="16x16">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

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
	<div id="toast"></div>
	<!-- Header -->
	<%@ include file="/common/web/header.jsp"%>
	<!-- Header -->


	<div class="theme-layout">
		<div class="postoverlay"></div>
		<section>
			<div class="gap2 gray-bg">
				<div class="container">
					<dec:body />
				</div>
			</div>
		</section>

	</div>


	<!-- Header -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- Header -->
	<script src="<c:url value="/layouts/web/jquery/main.min.js"/>"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/layouts/web/jquery/script.js"/>"></script>
</body>


</html>