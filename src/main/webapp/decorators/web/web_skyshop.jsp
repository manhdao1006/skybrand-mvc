<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyShop</title>
<link href="<c:url value='/templates/web/home/advert.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/templates/web/skyradio/skyradio.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/templates/grid.css'/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value='/templates/web/skyshop/skybooks.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/templates/web/skyshop/details_book.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/templates/web/skyshop/list_books.css'/>"
	rel="stylesheet" type="text/css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type='text/javascript'
	src='<c:url value="/templates/admin/js/jquery-2.2.3.min.js" />'></script>
<script
	src="<c:url value='/templates/admin/assets/js/jquery.2.1.1.min.js' />"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- sweetalert -->
<script
	src="<c:url value='/templates/admin/sweetalert/sweetalert2.min.js' />"></script>
<link rel="stylesheet"
	href="<c:url value='/templates/admin/sweetalert/sweetalert2.min.css' />" />
</head>
<body>
	<%@ include file="/common/web/skyshop/header.jsp"%>
	<%@ include file="/common/web/skyshop/banner.jsp"%>
	<%@ include file="/common/web/skyshop/navbar.jsp"%>
	<dec:body />
	<%@ include file="/common/web/footer.jsp"%>
	<script
		src="<c:url value='/templates/admin/paging/jquery.twbsPagination.js' />"></script>
	<script type="text/javascript"
		src='<c:url value="/templates/admin/js/admin.js" />'></script>
</body>
</html>