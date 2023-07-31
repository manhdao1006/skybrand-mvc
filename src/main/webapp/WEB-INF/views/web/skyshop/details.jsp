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
	<c:if test="${model != null }">

		<div class="content grid">
			<div class="content_details grid wide row">

				<div class="content_details-left no-gutters l-5 m-12 c-12">
					<div class="content_main-left">
						<img src="<c:url value='/resources/img/books/${model.thumbnail}'/>" alt="${model.name}"
							title="${model.name}" />
					</div>
				</div>

				<div class="content_details-right no-gutters l-7 m-12 c-12">
					<div class="content_main-right">

						<div class="bookname">${model.name}</div>
						<div class="author">
							Tác giả: <a href="#">${model.author}</a>
						</div>
						<div class="infor_books">
							<div class="quality">
								<a href="#"> <m>5</m> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
								</a>
							</div>

							<div class="review">
								<a href="#"> <m>5</m> <m>Đánh Giá</m>
								</a>
							</div>

							<div class="sold">
								<a href="#"> <m>5</m> <m>Đã Bán</m>
								</a>
							</div>

						</div>

						<div class="price">
							<td><fmt:formatNumber type="number" pattern="#,###"
									value="${book.price}" /> VNĐ</td>
						</div>

						<div class="address">Giao đến:</div>

						<div class="quantity">
							Số lượng:
							<button>
								<a href="#">-</a>
							</button>
							<input clas="num" type="text" name="num" value="1"
								aria-valuenow="" role="spinbutton" />
							<button>
								<a href="#">+</a>
							</button>
							<i style="font-size: 14px; color: gray">${model.quantity} sản
								phẩm còn trong kho</i>
						</div>

						<form class="block_cart" action="" method="">
							<input class="add_cart" type="button" onclick=""
								value="Thêm vào giỏ hàng" />
						</form>

						<form class="block_buy" action="" method="">
							<input class="buy" type="button" onclick="" value="Mua ngay" />
						</form>
					</div>
				</div>

			</div>


			<div class="content_describe_top grid wide row">
				<div class="content_main_top-left no-gutters l-5 m-12 c-12">
					<div class="content_describe_main-left">
						<div class="bookname">Chi tiết sản phẩm</div>
						<table>
							<tr>
								<th>Tác giả</th>
								<td>${model.author}</td>
							</tr>
							<tr>
								<th>Năm XB</th>
								<td>${model.publishingYear}</td>
							</tr>
							<tr>
								<th>Ngôn ngữ</th>
								<td>${model.language}</td>
							</tr>
							<tr>
								<th>Trọng lượng (gr)</th>
								<td>${model.weight}</td>
							</tr>
							<tr>
								<th>Số trang</th>
								<td>${model.numberPage}</td>
							</tr>
							<tr>
								<th>Hình thức</th>
								<td>${model.form}</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="content_main_top-right no-gutters l-7 m-12 c-12">

				</div>

				<hr>

			</div>


			<div class="content_describe_bottom grid wide">
				<div class="describe_title">Mô Tả Sản Phẩm</div>
				<p class="describe_content">${model.description}</p>
			</div>
		</div>
	</c:if>
</body>
</html>