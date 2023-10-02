<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>
<script src='https://www.google.com/recaptcha/api.js?hl=vi'></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/style.css">

<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!-- Website CSS style -->
<style>
body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-color: #d3d3d3;
	font-family: 'Oxygen', sans-serif;
}

.main {
	margin-top: 70px;
}

h1.title {
	font-size: 50px;
	font-family: 'Passion One', cursive;
	font-weight: 400;
}

hr {
	width: 10%;
	color: #fff;
}

.form-group {
	margin-bottom: 15px;
}

label {
	margin-bottom: 15px;
}

input, input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 330px;
	padding: 40px 40px;
}

.login-button {
	margin-top: 5px;
}

.login-register {
	font-size: 11px;
	text-align: center;
}
</style>
<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
</head>
<body>

	<c:choose>
		<c:when test="${tb_Register_User!=null }">
			<script>
				alert("Nhập đầy đủ thông tin đăng ký.");
			</script>
		</c:when>
	</c:choose>

	<section class="text-center">
		<!-- Background image -->
		<div class="p-5 bg-image"
			style="background-image: url('https://mdbootstrap.com/img/new/textures/full/171.jpg'); height: 300px;"></div>
		<!-- Background image -->

		<div class="card mx-4 mx-md-5 shadow-5-strong"
			style="margin-top: -100px; background: hsla(0, 0%, 100%, 0.8); backdrop-filter: blur(30px);">
			<div class="card-body py-5 px-md-5">

				<div class="row d-flex justify-content-center">
					<div class="col-lg-8">
						<h2 class="fw-bold mb-5">Đăng ký tài khoản</h2>
						<form method="post" action="DangKy">
							<!-- 2 column grid layout with text inputs for the first and last names -->
							<div class="row">
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="text" class="form-control" name="name_user"
											placeholder="Họ và tên" />

									</div>
								</div>
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="text" class="form-control" name="tk_user"
											placeholder="Tài Khoản" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="text" class="form-control" name="dc_user"
											placeholder="Địa chỉ" />

									</div>
								</div>
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="text" class="form-control" name="sdt_user"
											placeholder="Số điện thoại" />
									</div>
								</div>
							</div>

							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="email" class="form-control" name="email_user"
									placeholder="Email" />
							</div>

							<div class="row">
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="password" class="form-control" name="pass_user1"
											placeholder="Mật khẩu" />

									</div>
								</div>
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="password" class="form-control" name="pass_user2"
											placeholder="Nhập lại mật khẩu" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="g-recaptcha"
									data-sitekey="6LdoYbcdAAAAAM9Q9kcfyfd1K3inzzXG_krKatqZ"></div>
							</div>
							<!-- Submit button -->
							<div class="form-group d-flex justify-content-center">
								<button type="submit"
									class="btn btn-outline-info btn-lg mb-4 col-sm-5">
									Đăng Ký</button>
							</div>


						</form>

						<div class="flex justify-content-center">
							<p>hoặc đăng nhập:</p>
							<a href="DangNhap"
								class="btn btn-outline-success btn-lg mb-4 col-sm-2"> Đăng
								nhập </a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>
</html>