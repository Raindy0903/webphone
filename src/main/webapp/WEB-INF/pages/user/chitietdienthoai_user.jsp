<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="navbar_user.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container-fluid p-5 bg-primary text-white text-center">
		<h1>${dtBean.getTenDT() }</h1>
		<p>sản phẩm hướng đến tương lai!</p>
	</div>

	<div class="container mt-5">
		<div class="row justify-content-evenly">
			<div class="col-sm-5">
				<div class="row">
					<div class="card">
						<img class="card-img-top"
							src="<c:url value='resources/img/${dtBean.getAnh()}'/>"
							alt="Card image">
						<div class="card-body">
							<h4 class="card-title">${dtBean.getTenDT() }</h4>
							<p class="card-text">$ ${dtBean.getGia() }</p>
							<form method="post"
								action="ChiTietDT?ms=${dtBean.getMaDT()}&&ts=${dtBean.getTenDT()}&&ml=${dtBean.getMaLoai()}&&ah=${dtBean.getAnh()}&&gia=${dtBean.getGia()}">
								<button type="submit" class="btn btn-warning">Mua</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="row">
					<h3>Thông Số kỹ thuật</h3>
					<div class="card">
						<div class="card-body">
							<p class="card-text shadow-none p-2 bg-light rounded">
								Mã thông số kỹ thuật: <span>${tsBean.getMaTS() }</span>
							</p>

							<p class="card-text p-2">
								Màng hình: <span>${tsBean.getMangHinh() }</span>
							</p>

							<p class="card-text shadow-none p-2 bg-light rounded">
								Camera sau: <span>${tsBean.getCameraSau() }</span>
							</p>

							<p class="card-text p-2">
								Camera trước: <span>${tsBean.getCameraTruoc() }</span>
							</p>

							<p class="card-text shadow-none p-2 bg-light rounded">
								CPU: <span>${tsBean.getCpu() }</span>
							</p>

							<p class="card-text p-2">
								Hệ điều hành: <span>${tsBean.getHeDieuHanh() }</span>
							</p>

							<p class="card-text shadow-none p-2 bg-light rounded">
								Bộ Nhớ và ram: <span>${tsBean.getBoNhoRam() }</span>
							</p>

							<p class="card-text p-2">
								Pin: <span>${tsBean.getPin() }</span>
							</p>

							<p class="card-text shadow-none p-2 bg-light rounded">
								KetNoi: <span>${tsBean.getKetNoi() }</span>
							</p>

							<p class="card-text p-2">
								Mã điện thoại: <span>${tsBean.getMaDT() }</span>
							</p>

						</div>
					</div>

				</div>

			</div>

		</div>
	</div>

	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-12">
				<div class="row">
					<h3>Quà tặng khi mua</h3>
					<hr>
					<p>* Giảm giá 1,000,000đ (Không áp dụng kèm Thu cũ đổi mới và
						giảm giá qua quà tặng Galaxy)</p>
					<p>* Tặng gói bảo hành mở rộng Samsung Care+ trị giá 5,699,000đ
						Xem chi tiết</p>
					<p>* Giảm giá 7,000,000đ cho khách hàng đang sở hữu Z Fold,
						Fold2 5G chính hãng (Không áp dụng kèm Thu cũ Đổi mới và các
						khuyến mãi Giảm giá khác) Xem chi tiết</p>
					<p>* Giảm giá 4,000,000đ cho khách hàng đang sở hữu S10, S20,
						S21, Note10, Note20 series chính hãng (Không áp dụng kèm Thu cũ
						Đổi mới và các khuyến mãi Giảm giá khác) Xem chi tiết</p>

				</div>
			</div>

		</div>
	</div>
	
	<div class="jumbotron text-center mt-1 p-3 bg-light" >
		<div class="container">
			<span>Bản quyền © bởi <a href="https://nentang.vn">Nền
					Tảng</a> - <script>
						document.write(new Date().getFullYear());
					</script>.
			</span> <span class="text-muted">Hành trang tới Tương lai</span>
		</div>
	</div>

	
</body>
</html>