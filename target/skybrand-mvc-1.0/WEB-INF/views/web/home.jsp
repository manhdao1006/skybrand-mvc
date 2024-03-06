<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
</head>
<body>
	<div class="ad_main_body grid">
		<div class="wrapper grid">
			<div class="ad_navigation grid">
				<div class="ad_main_navigation grid wide">
					<ul class="row no-gutters">
						<li class="l-2-4"><a href="<c:url value='/skyshop'/>">Sky Shop</a></li>
						<li class="l-2-4"><a href="">Sky Review</a></li>
						<li class="l-2-4"><a href="">Sky Competition</a></li>
						<li class="l-2-4"><a href="">Sky Read</a></li>
						<li class="l-2-4"><a href="<c:url value='/skyradio'/>">Sky Radio</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="wrapper">
			<div class="ad_banner">
				<div class="ad_main_banner">
					<img src="<c:url value='/resources/img/brand.webp'/>" alt="Brand of Skybooks">
				</div>
			</div>
		</div>

		<div class="wrapper grid">
			<div class="ad_introduce grid">
				<div class="ad_header_introduce grid wide">Giới thiệu</div>
				<div class="ad_content_introduce grid wide">
					<div class="introduce_top row">
						<div class="introduce_items l-4">
							<div class="introduce_title">Sky Shop</div>
							<div class="introduce_content">Nơi Skybooks giúp độc giả có
								thể rinh những cuốn sách về giỏ hàng và hơn thế nữa là tận tay
								bạn</div>
						</div>
						<div class="introduce_items l-4">
							<div class="introduce_title">Sky Competition</div>
							<div class="introduce_content">Nơi mà bạn giao lưu với
								nhiều đọc giả khác nhau qua các cuộc thi mà Skybooks tổ chức</div>
						</div>
						<div class="introduce_items l-4">
							<div class="introduce_title">Sky Radio</div>
							<div class="introduce_content">Nơi bạn có thể thả hồn mình
								vào những thanh âm Radiobooks</div>
						</div>
					</div>
					<div class="introduce_bottom row">
						<div class="introduce_items l-3"></div>
						<div class="introduce_items l-3">
							<div class="introduce_title">Sky Review</div>
							<div class="introduce_content">Nơi mà bạn có thể viết ra
								những dòng suy nghĩ, cảm nhận của mình về những cuốn sách đã đọc
								qua từng dòng chữ</div>
						</div>
						<div class="introduce_items l-3">
							<div class="introduce_title">Sky Read</div>
							<div class="introduce_content">Nơi đọc giả có thể đọc những
								cuốn sách hay bằng các thiết bị điện tử thông minh</div>
						</div>
						<div class="introduce_items l-3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>