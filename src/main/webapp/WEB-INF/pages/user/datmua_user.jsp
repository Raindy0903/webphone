<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="navbar_user.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Nền tảng - Kiến thức cơ bản về WEB | Bảng tin</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css"
	type="text/css">
<!-- Font awesome -->
<link rel="stylesheet"
	href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css">

<!-- Custom css - Các file css do chúng ta tự viết -->
<link rel="stylesheet" href="../assets/css/app.css" type="text/css">

<!--  -->
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
	<!-- header -->
	<!-- end header -->
	<c:choose>
		<c:when test="${gh == null || dsGH.size()==0}">
			<div style="align: center; margin: 50px 100px 0px 100px">
				<p class="lead">ĐẶT MUA ĐANG TRỐNG</p>
				<input type="button" value="Click Về Trang chủ."
					onclick="location.href='Menu'" class="btn btn-primary">
			</div>
		</c:when>
		<c:otherwise>
			<main role="main">
				<!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
				<div class="container mt-4">
					<form class="needs-validation" name="frmthanhtoan" method="post"
						action="DatMua">
						<input type="hidden" name="kh_tendangnhap" value="dnpcuong">

						<div class="py-5 text-center">
							<i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
							<h2>Thanh toán</h2>
							<p class="lead">Vui lòng kiểm tra thông tin Khách hàng, thông
								tin Giỏ hàng trước khi Thanh Toán.</p>
						</div>

						<div class="row">
							<div class="col-md-4 order-md-2 mb-4">
								<h4
									class="d-flex justify-content-between align-items-center mb-3">
									<span class="text-muted">Giỏ hàng</span> <span
										class="badge badge-secondary badge-pill">${gh.tongSachHC() }</span>
								</h4>
								<ul class="list-group mb-3">
									<c:forEach items="${dsGH }" var="i">
										<li
											class="list-group-item d-flex justify-content-between lh-condensed">
											<div>
												<h6 class="my-0">${i.getTenDT()}</h6>
												<small class="text-muted">${i.getGia()} x
													${i.getSlMua()}</small>
											</div> <span class="text-muted">${i.getThanhTien()}</span>
										</li>
									</c:forEach>
									<li class="list-group-item d-flex justify-content-between"><span>Tổng
											thành tiền</span> <strong>${gh.tongTien() }</strong></li>
								</ul>


								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Mã khuyến mãi">
									<div class="input-group-append">
										<button type="submit" class="btn btn-secondary">Xác
											nhận</button>
									</div>
								</div>

							</div>
							<div class="col-md-8 order-md-1">
								<h4 class="mb-3">Thông tin khách hàng</h4>

								<div class="row">
									<div class="col-md-12">
										<label for="kh_ten">Họ tên*</label> <input type="text"
											class="form-control" name="kh_ten" id="kh_ten"
											value="${khBean.getTenKH() }"
											placeholder="${khBean.getTenKH() }">
									</div>
									<div class="col-md-12">
										<label for="kh_diachi">Địa chỉ*</label> <input type="text"
											class="form-control" name="kh_diachi" id="kh_diachi"
											value="${khBean.getDiaChi() }"
											placeholder="${khBean.getDiaChi() }">
									</div>
									<div class="col-md-12">
										<label for="kh_dienthoai">Điện thoại*</label> <input
											type="text" class="form-control" name="kh_dienthoai"
											value="${khBean.getSdt() }" vid="kh_dc"
											placeholder="${khBean.getSdt() }">
									</div>
									<div class="col-md-12">
										<label for="kh_email">Email</label> <input type="email"
											class="form-control" name="kh_email" id="kh_email"
											value="${khBean.getEmail() }"
											placeholder="${khBean.getEmail() }">
									</div>
									<div class="col-md-12">
										<label for="kh_cmnd">Tên Đăng Nhập</label> <input type="text"
											class="form-control" name="kh_cmnd" id="kh_cmnd"
											value="${khBean.getTenDN() }"
											placeholder="${khBean.getTenDN() }">
									</div>
								</div>

								<h4 class="mb-3">Hình thức thanh toán</h4>

								<div class="d-block my-3">
									<div class="custom-control custom-radio">
										<input id="httt-1" name="httt_ma" type="radio"
											class="custom-control-input" required="" value="1"> <label
											class="custom-control-label" for="httt-1">Tiền mặt</label>
									</div>
									<div class="custom-control custom-radio">
										<input id="httt-2" name="httt_ma" type="radio"
											class="custom-control-input" required="" value="2"> <label
											class="custom-control-label" for="httt-2">Chuyển
											khoản</label>
									</div>
									<div class="custom-control custom-radio">
										<input id="httt-3" name="httt_ma" type="radio"
											class="custom-control-input" required="" value="3"> <label
											class="custom-control-label" for="httt-3">Ship COD</label>
									</div>
								</div>
								<hr class="mb-4">

								<button class="btn btn-primary btn-lg btn-block" type="submit"
									name="btnDatHang">Thanh Toán</button>
							</div>
						</div>
					</form>

				</div>
				<!-- End block content -->
			</main>

			<!-- footer -->
			<div class="jumbotron text-center mt-1 p-3 bg-light">
				<div class="container">
					<span>Bản quyền © bởi <a href="https://nentang.vn">Nền
							Tảng</a> - <script>
								document.write(new Date().getFullYear());
							</script>.
					</span> <span class="text-muted">Hành trang tới Tương lai</span>
				</div>
			</div>
			<!-- end footer -->
		</c:otherwise>
	</c:choose>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/popperjs/popper.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Custom script - Các file js do mình tự viết -->
	<script src="../assets/js/app.js"></script>
</body>
</html>