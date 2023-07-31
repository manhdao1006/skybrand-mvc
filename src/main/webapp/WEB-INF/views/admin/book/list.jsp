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

	<!-- <div class="wrapper grid"> -->

	<div class="admin_center grid">
		<form
			action="<c:url value='/quan-tri/bai-viet/danh-sach?page=${model.page}&limit=${model.limit}'/>"
			id="formSubmit" method="get">
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

				<div class="admin_middle_right no-gutters l-9"></div>
			</div>
			<!--end-middle-->
			<div class="admin_middle_list grid wide">
				<!--<h3><a href="add">Add new</a></h3>-->
				<table>
					<tr>
						<th>Mã sách</th>
						<th>Tên sách</th>
						<th>Tác giả</th>
						<th>Giá cả</th>
						<th>Số lượng</th>
						<!--<th>Năm xuất bản</th>-->
						<!--<th>Nhà xuất bản</th>-->
						<!--<th>Ngôn ngữ</th>-->
						<!--<th>Hình thức</th>-->
						<!--<th>Số trang</th>-->
						<!--<th>Thể loại</th>-->
						<!--<th>Trọng lượng</th>-->
						<!--<th>Mô tả</th>-->
						<th>Hình ảnh</th>
						<th>ACTION</th>
					</tr>
					<tbody>
						<c:forEach items="${model.listResult}" var="item">
						<tr>
							<td>${item.code}</td>
							<td>${item.name}</td>
							<td>${item.author}</td>
							<td><fmt:formatNumber type="number" pattern="#,###"
									value="${item.price}" /> VNĐ</td>
							<td>${item.quantity}</td>
							<!--<td>${b.publishingYear}</td>
								<td>${b.pcompany.companyName}</td>
								<td>${b.language}</td>
								<td>${b.form}</td>
								<td>${b.numberPage}</td>
								<td>${b.category.categoryName}</td>
								<td>${b.weight}</td>
								<td>${b.bookDescribe}</td>-->
							<td><img
								src="<c:url value='/resources/img/books/${item.thumbnail}'/>"
								width="240px" height="240px" alt="${item.name}" /></td>
							<td>
								<c:url var="updateBookURL"
									value="/quan-tri/bai-viet/chinh-sua">
									<c:param name="code" value="${item.code}" />
								</c:url> 
								<a href="${updateBookURL}">UPDATE</a>
								<button value="${item.code}" id="btnDelete" type="button"
									onclick="warningBeforeDelete()"
									class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
									data-toggle="tooltip" title='Xóa bài viết'>
									DELETE
								</button>
							</td>
						</tr>
					</c:forEach>
					</tbody>
					
				</table>
				<div>
					<ul class="pagination" id="pagination"></ul>
					<input type="hidden" value="" id="page" name="page" /> <input
						type="hidden" value="" id="limit" name="limit" />
				</div>
			</div>
		</form>
	</div>

	<div></div>
	<!--end-bottom-->
	<!--</div>-->
	<script type="text/javascript">
		var totalPages = ${model.totalPage};
		var currentPage = ${model.page};
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 10,
				startPage: currentPage, <!-- mac dinh trang load dau tien la currentPage -->
				onPageClick : function(event, page) {
					if(currentPage != page){
						$('#limit').val(2);
						$('#page').val(page);
						$('#formSubmit').submit();
					}
				}
			});
		});
		
		function warningBeforeDelete(){
			swal({
				  title: "Xác nhận xóa?",
				  text: "Bạn có chắc chắn muốn xóa hay không?",
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonClass: "btn-success",
				  cancelButtonClass: "btn-danger",
				  confirmButtonText: "Xác nhận",
				  cancelButtonText: "Hủy bỏ",
				}).then(function(isConfirm) {//'isConfirm' có sẵn trong thư viện 'sweetalert.js'
				  if (isConfirm) {
					  //call api delete
					  //var data = {};
					  var id = $('#btnDelete').map(function () {
			          return $(this).val();
			        }).get();
					//data['ids'] = ids;
					//deleteNew(data);
					deleteBook(id);
				  }
				});
		};
		
		function deleteBook(data) {
	        $.ajax({
	            url: '${bookAPI}',
	            type: 'DELETE',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            success: function (result) {
					window.location.href = "${bookURL}?page=1&limit=2&message=delete_success";
	            },
	            error: function (error) {
					window.location.href = "${bookURL}?page=1&limit=2&message=error_system";
	            }
	        });
	    }
	</script>
</body>
</html>