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
	<div class="clr"></div>
	<div class="grid">
		<form
			action="<c:url value='/skyshop/danh-sach'/>"
			id="formSubmit" method="get">
			<div class="grid wide row">
				<c:forEach var="item" items="${categories}">
					<c:if test="${item.id==model.cid}">
						<div class="grid title_category">
							<h2 class="">${item.name}</h2>
						</div>
					</c:if>
				</c:forEach>
				<div class="list-items">
					<ul class="row no-gutters">
						<c:forEach items="${model.listResult}" var="item">
							<li class="no-gutters row l-3 c-6"><a
								href="<c:url value='/skyshop/danh-sach/chi-tiet?code=${item.code}'/>">
									<div class="infor_category_book">
										<div class="anh">
											<img
												src="<c:url value='/resources/img/books/${item.thumbnail}'/>"
												alt="${item.name}" title="${item.name}" />
										</div>
										<p class="category_bookName">${item.name}</p>
										<!--<p class="category_price"><fmt:formatNumber type="number" pattern="#,###" value="${skb.price}"/> VNĐ</p>-->
									</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>

				<div>
					<ul class="pagination" id="pagination"></ul>
					<input type="hidden" value="${model.cid}" id="cid" name="cid" />
					<input type="hidden" value="" id="page" name="page" /> <input
						type="hidden" value="" id="limit" name="limit" />
				</div>

			</div>
		</form>
	</div>
	<script type="text/javascript">
		var totalPages = ${model.totalPage};
		var currentPage = ${model.page};
		console.log(totalPages);
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 3,
				startPage: currentPage, <!-- mac dinh trang load dau tien la currentPage -->
				onPageClick : function(event, page) {
					if(currentPage != page){
						$('#limit').val(12);
						$('#page').val(page);
						$('#formSubmit').submit();
					}
				}
			});
		});
	</script>
</body>
</html>