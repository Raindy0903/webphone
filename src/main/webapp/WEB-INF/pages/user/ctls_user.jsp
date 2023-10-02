<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="navbar_user.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chi tiết lịch sử</title>
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
	<div class="container mt-3">
		<h4>Thông tin của đơn hàng</h4>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Mã Đơn hàng</th>
					<th>Tên khách hàng</th>
					<th>Giá</th>
					<th>Ngày Mua</th>
					<th>Số Lượng</th>
					<th>Trạng Thái</th>
				</tr>
			</thead>
			<hr>
			<tbody>
				<tr>
					<td>${ctLS.getMaLSMH()}</td>
					<td>${ctLS.getTenKH()}</td>
					<td>$ ${ctLS.getGia() }</td>
					<td>${ctLS.getNgayMua() }</td>
					<td>${ctLS.getSoLuong() }</td>
					<td>${ctLS.getTrangThai() }</td>
				</tr>

			</tbody>
		</table>
		<!-- <input type="button" value="Về Trang lịch sử mua hàng."
			onclick="location.href='LichSuMuaHang'" class="btn btn-primary"> -->
	</div>

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