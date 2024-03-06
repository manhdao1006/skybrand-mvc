<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper grid">
		<div class="home-banner grid wide">
			<div class="home-header-banner row">
				<div class="home-header-banner-left l-4">
					<a href="<c:url value='/skyshop'/>"><img class="logo" src="<c:url value='/resources/img/logo.png'/>"></a>
				</div>

				<div class="home-header-banner-center l-4">
					<div class="home-header-banner-center-search">
						<button class="submit" type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
						<input type="text" class="search" placeholder="Tìm kiếm... ">
					</div>
				</div>

				<div class="home-header-banner-right l-4">
					<c:if test="${sessionScope.account==null}">
						<div class="home-header-banner-right-login">
							<a class="login" href="<c:url value='/dang-nhap'/>"><i class="fa fa-sign-in"
								aria-hidden="true"></i> <span>Đăng nhập</span></a>
						</div>
						<div class="home-header-banner-right-signin">
							<a class="signin" href="<c:url value='/dang-ky'/>"><i
								class="fa fa-pencil-square-o" aria-hidden="true"></i> <span>Đăng ký</span></a>
						</div>
						<div class="home-header-banner-right-like">
							<a class="like" href="#"><i class="fa fa-heart-o"
								aria-hidden="true"></i></a>
						</div>
						<div class="home-header-banner-right-cart">
							<a class="cart" href="#"><i class="fa fa-shopping-bag"
								aria-hidden="true"></i></a>
						</div>
					</c:if>
					<c:if test="${sessionScope.account!=null}">
						<div class="home-header-banner-right-account">
							<a class="account" href="infor"><i class="fa fa-user"
								aria-hidden="true"></i> <span>${sessionScope.account.username}</span></a>
						</div>
						<div class="home-header-banner-right-logout l-3">
							<a class="logout" href="logout"><i class="fa fa-sign-in"
								aria-hidden="true"></i> <span>Đăng xuất</span></a>
						</div>
						<div class="home-header-banner-right-like l-3">
							<a class="like" href="#"><i class="fa fa-heart-o"
								aria-hidden="true"></i></a>
						</div>
						<div class="home-header-banner-right-cart l-3">
							<a class="cart" href="#"><i class="fa fa-shopping-bag"
								aria-hidden="true"></i></a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!-- end home-banner -->
</body>
</html>