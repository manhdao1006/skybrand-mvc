<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="bookURL" value="/quan-tri/bai-viet/danh-sach" />
<c:url var="editBookURL" value="/quan-tri/bai-viet/chinh-sua" />
<c:url var="bookAPI" value="/api/book" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>
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
				<c:if test="${not empty message}">
					<div class="alert alert-${alert}">${message}</div>
				</c:if>

				<form:form class="form_add" modelAttribute="model" role="form"
					enctype="multipart/form-data" id="formSubmit">
					<div class="form_content">
						<div class="items_infor">
							<label class="lbl">Mã sách:</label>
							<form:input path="code" cssClass="txt" id="code" type="text" />
						</div>

						<div class="items_infor">
							<label class="lbl">Tên sách:</label>
							<form:input path="name" cssClass="txt" id="name" type="text" />
						</div>

						<div class="items_infor">
							<label class="lbl">Tác giả:</label>
							<form:input path="author" cssClass="txt" type="text" id="author" />
						</div>

						<div class="items_infor">
							<label class="lbl">Thể loại:</label>
							<form:select path="cid" id="cid" cssClass="select">
								<form:option value="" label="-- Chọn thể loại --" />
								<form:options items="${categories}" />
							</form:select>
						</div>

						<div class="items_infor">
							<label class="lbl">Giá cả:</label>
							<form:input path="price" cssClass="txt" type="number" id="price" />
						</div>

						<div class="items_infor">
							<label class="lbl">Số lượng:</label>
							<form:input path="quantity" cssClass="txt" type="number"
								id="quantity" />
						</div>

						<div class="items_infor">
							<label class="lbl">Năm XB:</label>
							<form:input path="publishingYear" cssClass="txt" type="number"
								id="publishingYear" />
						</div>

						<div class="items_infor">
							<label class="lbl">Ngôn ngữ:</label>
							<form:input path="language" cssClass="txt" type="text"
								id="language" />
						</div>

						<div class="items_infor">
							<label class="lbl">Số trang:</label>
							<form:input path="numberPage" cssClass="txt" type="number"
								id="numberPage" />
						</div>

						<div class="items_infor">
							<label class="lbl">Hình thức:</label>
							<form:input path="form" cssClass="txt" type="text" id="form" />
						</div>

						<div class="items_infor">
							<label class="lbl">Trọng lượng:</label>
							<form:input path="weight" cssClass="txt" type="number"
								id="weight" />
						</div>

						<div class="items_infor">
							<label class="lbl">Hình ảnh:</label>
							<form:input path="thumbnail" cssClass="txt" type="file"
								id="thumbnail" />
						</div>

						<div class="items_infor">
							<label class="lbl">Mô tả:</label>
							<form:textarea path="description" cssClass="txt" type="text"
								id="description" rows="10" cols="50" />
						</div>

						<form:hidden path="code" id="bookId" />

						<div class="btn_add">
							<c:if test="${not empty model.code}">
								<button id="btnAddOrUpdateBook" class="btn" type="button">Update</button>
							</c:if>
							<c:if test="${empty model.code}">
								<button id="btnAddOrUpdateBook" class="btn" type="button">Add</button>
							</c:if>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<!--end-middle-->

	</div>

	<div></div>
	<!--end-bottom-->
	<script type="text/javascript">
		$('#btnAddOrUpdateBook').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			//put tat ca trong 'formData' vao mang data o tren
			console.log(data);
			var id = $('#bookId').val();
			if (id == "") {
				addBook(data);
			} else {
				updateBook(data);
			}
		});

		function addBook(data) {
			$
					.ajax({
						url : '${bookAPI}',
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${editBookURL}?id="
									+ result.code + "&message=insert_success";
						},
						error : function(error) {
							window.location.href = "${bookURL}?page=1&limit=2&message=error_system";
						}
					});
		}

		function updateBook(data) {
			$.ajax({
				url : '${bookAPI}',
				type : 'PUT',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					window.location.href = "${editBookURL}?id=" + result.code
							+ "&message=update_success";
				},
				error : function(error) {
					window.location.href = "${editBookURL}?id=" + result.code
							+ "&message=error_system";
				}
			});
		}
	</script>
</body>
</html>