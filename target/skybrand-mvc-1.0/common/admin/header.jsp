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
	<div class="admin_header grid">
		<div class="admin_top grid wide row">
			<div class="admin_top_left l-6 m-6 c-6">
				<div class="logo">					
					<img src="<c:url value='/resources/img/logo.png'/>" alt="Skybooks Logo" />
				</div>
			</div>

			<div class="admin_top_right l-6 m-6 c-6">
				<div class="infor_account">
					<a class="account" href="infor"><i class="fa fa-user"
						aria-hidden="true"></i> <span>${sessionScope.admin.username}</span></a>
				</div>
				<div class="logout_account">
					<a class="logout" href="logout"><i class="fa fa-sign-in"
						aria-hidden="true"></i> <span>Đăng xuất</span></a>
				</div>
			</div>
		</div>
	</div>
	<!--end-header-top-->
</body>
</html>