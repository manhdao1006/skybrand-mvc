<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>

	<!--<div class="wrapper grid">-->
		<div class="admin_center grid">
			<div class="admin_middle grid wide row">
				<div class="admin_middle_left no-gutters l-3">
					<div>ADMIN</div>
					<div class="home_page">
						<a href="home"><i class="fa fa-home" aria-hidden="true"></i> <span>Home</span></a>
					</div>
					<div class="block_management">
						<ul class="block_management_list">
							<li>
								<div class="block_management_list_items" id="management_books">
									<i class="fa fa-book" aria-hidden="true"></i> <span>Management
										Books</span> <i id="arrow" class="fa fa-chevron-down"
										aria-hidden="true"></i>
								</div>
								<div class="block_management_books" id="type_books">
									<ul id="management_books_clone">
										<c:forEach items="${cList}" var="item">
											<li><a href="#">${item.name}</a></li>
										</c:forEach>
									</ul>
								</div>
							</li>

							<li>
								<div class="block_management_list_items">
									<i class="fa fa-user" aria-hidden="true"></i> <span>Management
										Users</span> <i class="fa fa-chevron-down" aria-hidden="true"></i>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div class="admin_middle_right no-gutters l-9">
					<div><a href="<c:url value='/quan-tri/bai-viet/danh-sach?page=1&limit=2'/>">Danh sách Sách</a></div>
					<div><a href="<c:url value='/quan-tri/bai-viet/chinh-sua'/>">Thêm mới Sách</a></div>
				</div>
			</div>
			<!--end-middle-->

		</div>

		<div></div>
		<!--end-bottom-->
	</div>
	<!--</div>-->
</body>
</html>