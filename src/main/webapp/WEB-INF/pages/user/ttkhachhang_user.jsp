<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="navbar_user.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông Tin Khách Hàng</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>
</head>
<body>
	<section style="background-color: #eee;">
		<div class="container py-5">
			<div class="row">
				<div class="col-lg-4">
					<div class="card mb-4">
						<div class="card-body text-center">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
								alt="avatar" class="rounded-circle img-fluid"
								style="width: 150px;">
							<h5 class="my-3">${khBean.getTenKH() }</h5>
						</div>
					</div>

				</div>
				<div class="col-lg-8">
					<form action="ThongTinKH" method="post">
						<div class="card mb-4">

							<div class="card-body">
								<div class="row">
									<div class="col-sm-2">
										<p class="mb-0">Mã khách hàng</p>
									</div>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="kh_ma"
											id="kh_ma" value="${khBean.getMaKH()}"
											placeholder="${khBean.getMaKH()} ">
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-2">
										<p class="mb-0">Họ và tên</p>
									</div>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="kh_ten"
											id="kh_diachi" value="${khBean.getTenKH() }"
											placeholder="${khBean.getTenKH() }">
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-2">
										<p class="mb-0">Email</p>
									</div>
									<div class="col-sm-10">
										<input type="email" class="form-control" name="kh_email"
											id="kh_email" value="${khBean.getEmail() }"
											placeholder="${khBean.getEmail() }">
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-2">
										<p class="mb-0">Số điện thoai</p>
									</div>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="kh_sdt"
											value="${khBean.getSdt() }" 
											placeholder="${khBean.getSdt() }">
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-2">
										<p class="mb-0">Địa chỉ</p>
									</div>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="kh_dc"
											value="${khBean.getDiaChi() }"
											placeholder="${khBean.getDiaChi() }">
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-2">
										<p class="mb-0">Tên Đăng Nhập</p>
									</div>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="kh_tdn"
											id="kh_cmnd" value="${khBean.getTenDN() }"
											placeholder="${khBean.getTenDN() }">
									</div>
								</div>
							</div>


						</div>

						<div class="row d-flex justify-content-end">
							<div class="col-sm-2 ">
								<button class="btn btn-primary btn-block" type="submit"
									name="btnDatHang">Cập Nhật</button>
							</div>

						</div>
					</form>

				</div>
			</div>
		</div>

	</section>

	<footer class="footer py-3 position-absolute fixed-bottom bg-light">
		<div class="container">
			<span>Bản quyền © bởi <a href="https://nentang.vn">Nền
					Tảng</a> - <script>
						document.write(new Date().getFullYear());
					</script>.
			</span> <span class="text-muted">Hành trang tới Tương lai</span>
		</div>
	</footer>
</body>
</html>