<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="navbar_admin.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ ADMIN</title>
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
	<div class="container-fluid" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-12">
				<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/07/banner/Znew-720-220-720x220.png" class="d-block w-100"   alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/07/banner/a78-720-220-720x220.png" class="d-block w-100"  alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/07/banner/SE-720-220-720x220.png" class="d-block w-100"  alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/07/banner/Lap-720-220-720x220-1.png" class="d-block w-100"  alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/07/banner/Redmi-Note-12-720-220-720x220-1.png" class="d-block w-100"  alt="...">
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
			</div>
		</div>
		<div class="row mt-2">
			<div class="col-sm-12">
				<h2>Điện Thoại</h2>
				<h5>${tbDT }</h5>
				<div class="row">
					<hr>
					<c:forEach var="h" items="${dsDT}">
						<div class="col-md-2">
							<br>
							<a href="thongSoDT?msdt=${h.getMaDT() }">
								<div class="card">
									<img class="card-img-top"
										src="<c:url value='resources/img/${h.getAnh()}'/>" alt="Card image">

									<div class="card-body">
										<h6 class="card-title text-truncate">${h.getTenDT()}(${h.getMaDT()})</h6>

										<p class="card-text">$ ${h.getGia() }</p>
										
									</div>
								</div>
							</a>
						</div>
					</c:forEach>

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
