<%@page import="org.o7planning.websalephones.model.bean.KhachhangBean"%>
<%@page import="org.o7planning.websalephones.model.bean.LoaiBean"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="navbar_user.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
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

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-8">
				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100 "
								src="<c:url value='resources/img/slide1.png'/>" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="<c:url value='resources/img/slide3.png'/>"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="<c:url value='resources/img/slide2.png'/>"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<br> <a href="Menu"><button
						type="button" name="nut1" class="btn btn-warning">
						Tất Cả</button></a>
				<c:forEach var="i" begin="0" end="${dsMau.size()-2}">
					<a href="Menu?mlnut=${dsLoai.get(i).getMaLoai() }"><button
							type="button" name="nut1" class=<c:url value='"${dsMau[i] }"'/>>
							${dsLoai.get(i).getTenLoai() }</button></a>
				</c:forEach>
			</div>
			<div class="col-sm-4">
				<img src="<c:url value='resources/img/1.jpg'/>">
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<h3>Điện Thoại</h3>
			<h7>${tbdt }</h7>
			<br>
			<c:forEach items="${dsDT }" var="i">
				<div class="col-md-3">
					<br>
					<div class="card">
						<a href="ChiTietDT?maDTT=${i.getMaDT() }"><img class="card-img-top" src="<c:url value='resources/img/${i.getAnh()}'/>"
							alt="Card image"></a>
						<div class="card-body">
							<h4 class="card-title text-truncate">${i.getTenDT() }</h4>
							<p class="card-text">$ ${i.getGia() }</p>
							<form method="post"
								action="Menu?ms=${i.getMaDT()}&&ts=${i.getTenDT()}&&ml=${i.getMaLoai()}&&ah=${i.getAnh()}&&gia=${i.getGia()}">
								<button type="submit" class="btn btn-info">Mua</button>
							</form>

						</div>
					</div>
				</div>
			</c:forEach>
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
