<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="navbar_admin.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

.main {
	padding: 40px 0;
}

.main input, .main input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 400px;
	padding: 10px 40px;
	background: #7895CB;
	color: #FFF;
	text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	-moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
}

span.input-group-addon i {
	color: #009edf;
	font-size: 17px;
}
</style>
</head>
<body>


	<div class="container" style="margin-top: 30px">
		<div class="row">

			<div class="col-sm-5">
				<div class="main">
					<div class="main-center">
						<h2>Nhập đơn hàng cần tìm kiếm</h2>
						<br>
						<form class="" method="post" action="lichSuAdmin">

							<div class="form-group">
								<label for="email">Nhập Mã đơn hàng.</label>
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="timkey"
										placeholder="Nhập Mã" />
								</div>
							</div>

							<br>
							<button type="submit" class="btn btn-light">Tìm Kiếm</button>

						</form>
					</div>
					<!--main-center"-->
				</div>
				<!--main-->

			</div>

			<div class="col-sm-7">
				<h2>danh sách</h2>
				<p>Danh sách lịch sử
				<hr>
				<ul class="nav nav-pills flex-column">
					<c:forEach items="${dsLS}" var="h">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td><li class="nav-item"><p class="nav-link">
												${h.getMaLSMH()}</p></li></td>
									<td><div class="alert alert-success">
											<strong>${h.getTenKH()}</strong> ---- $: ${h.getGia()}
											----${h.getNgayMua() }
										</div></td>
									<td><form class="" method="post" action="ChiTietLichSuMuaHangAdmin?ctls=${h.getMaLSMH() }">
											<button type="submit" class="btn btn-danger">xem chi
												tiết</button>
										</form></td>
								</tr>
							</tbody>
						</table>
					</c:forEach>
				</ul>

			</div>

		</div>
	</div>

	<!--container-->
	<div class="jumbotron text-center mt-1 p-3 bg-light" >
		<div class="container">
			<span>Bản quyền © bởi <a href="https://nentang.vn">Nền
					Tảng</a> - <script>
						document.write(new Date().getFullYear());
					</script>.
			</span> <span class="text-muted">Hành trang tới Tương lai</span>
		</div>
	</div>

	<!-- <div class="card-body">
									<h4 class="card-title">${h.getgetTenKH()}(${h.getMaKH()})</h4>
									
									<p class="card-text">$ ${h.getTenDN() }</p>
									<a href="AddThoaiAdmin?xoadt=${h.getMaKHT()}" class="btn btn-danger">Xóa DT</a>
								</div> -->
</body>
</html>

