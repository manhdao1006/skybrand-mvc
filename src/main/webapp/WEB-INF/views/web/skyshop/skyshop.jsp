<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyShop</title>
</head>
<body>
	<div class="wrapper grid">
		<div class="home-slide-block grid">
			<div class="home-slider">
				<div id="ss" class="carousel slide myslide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#ss" data-slide-to="0" class="active"></li>
						<li data-target="#ss" data-slide-to="1"></li>
						<li data-target="#ss" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img src="<c:url value='/resources/img/brand_2.jpg'/>"
								alt="image1">
						</div>
						<div class="carousel-item">
							<img src="<c:url value='/resources/img/slider_3.webp'/>"
								alt="image2">
						</div>
						<div class="carousel-item">
							<img src="<c:url value='/resources/img/brand_3.png'/>"
								alt="image3">
						</div>
					</div>
					<a class="carousel-control-prev" href="#ss" role="button"
						data-slide="prev"> <span
						class="carousel-control-prev-icon control" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#ss" role="button"
						data-slide="next"> <span
						class="carousel-control-next-icon control" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- end home-slider -->

	<div class="wrapper grid">
		<div class="home-main-block_container grid wide">
			<div class="img-container"></div>
			<a href="#" title="CHÚNG TA RỒI SẼ ỔN" class="title-container">Chúng
				ta rồi sẽ ổn thôi</a>
		</div>
	</div>
	<!-- end home-main-block_container -->

	<div class="home-main-block-content grid">
		<div class="home-main-content grid wide row">
			<div class="home-main-content-left l-2 c-0">
				<div class="home-main-block_category">
					<div class="block_category">Danh mục sách</div>
					<c:set value="${categories}" var="item" />
					<div class="block_menu">
						<ul class="block_menu_list">
							<c:forEach items="${item}" var="c">
								<li><c:url var="listBookURL" value="/skyshop/danh-sach">
										<c:param name="cid" value="${c.id}" />
										<c:param name="page" value="${1}" />
										<c:param name="limit" value="${12}" />
									</c:url> <a href="${listBookURL}"> <i class="fa fa-angle-right"
										aria-hidden="true"></i> <span>${c.name}</span>
								</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- end home-main-block_category -->
				<div class="home-main-content_quote">
					<div class="block_quote_title">
						<a href="#">Trích dẫn</a>
					</div>
					<div class="block_quote_hot">
						<div class="block_quote_hot_content">
							<a href="#" title="MỘC DIỆP TỬ">
								<p>“Cuộc đời sẽ luôn có người vì bạn mà chọn giành mọi thứ,
									cũng có người vì bạn mà từ bỏ mọi thứ, người chọn tiến lên,
									người chọn lùi về, bạn buộc phải bỏ lỡ một người mới có thể gặp
									được người tiếp theo....</p> <strong>MỘC DIỆP TỬ</strong>
							</a>
						</div>
						<div class="block_quote_hot_image">
							<a href="#"><img
								src="<c:url value='/resources/img/MOC_DIEP_TU.jfif'/>"
								alt="MỘC DIỆP TỬ" title="MỘC DIỆP TỬ"></a>
						</div>
					</div>
					<!-- end block_quote_hote -->
					<div class="block_quote_items">
						<a href="#" title="MỘC DIỆP TỬ">
							<p>Có ai đó đã nói, trong tình yêu, đừng đem hết ruột gan của
								mình ra bày tỏ cho đối phương, bởi khi lớp vỏ cuối cùng bóc
								xong, người cay mắt nhất sẽ là bạn.</p> <strong>Mộc Diệp Tử</strong>
						</a>
					</div>

					<div class="block_quote_items">
						<a href="#" title="MỘC DIỆP TỬ">
							<p>Không phải người nào làm ta đau cũng là kẻ thù, nhưng chưa
								chắc người đáng cho mình trả giá đã là người để mình gắn bó yêu
								thương cả đời.</p> <strong>Mộc Diệp Tử</strong>
						</a>
					</div>

					<div class="block_quote_items">
						<a href="#" title="Kulzsc">
							<p>Đôi lúc muốn được ôm ai đó thật lâu, chẳng cần phải là
								người mình có tình cảm, bất kỳ ai cũng được, vì có những lúc
								thật sự cảm thấy thiếu kết nối, thiếu yêu thương, thiếu ấm áp.</p> <strong>Kulzsc</strong>
						</a>
					</div>

					<div class="block_quote_items">
						<a href="#" title="Xin chào tình yêu - Hiên">
							<p>“Anh đừng là ánh trăng Cũng đừng là Mặt Trời Hãy chỉ là
								cuộc đời Của một người, là em”...</p> <strong>Xin chào tình
								yêu - Hiên</strong>
						</a>
					</div>
				</div>
			</div>
			<!-- end home-main-content_quote -->
			<div class="home-main-content-right l-9 c-12">
				<div class="home-main-content-right-top">
					<div class="block_heading-books">
						<a href="#">Sách sắp phát hành</a>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<!--<c:url var="listBookURL" value="/skyshop/danh-sach">
							<c:param name="cid" value="1" />
						</c:url>-->
						<a href="${listBookURL}">Skybooks</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skb}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=2'/>">Skynovel</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skn}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=3'/>">Skycomics</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skc}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=4'/>">Skymommy</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skm}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=5'/>">Sky
							Special</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${sks}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=6'/>">Tủ sách
							Chữa lành</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skh}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=7'/>">Tủ sách
							Quý cô</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skw}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=8'/>">Tủ sách
							Sống khác</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skk}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="<c:url value='skyshop/danh-sach?cid=9'/>">Deepbooks</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skd}" var="book">
								<li title="${book.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_image">
											<a href="#"><img
												src="<c:url value='/resources/img/books/${book.thumbnail}'/>"
												alt="${book.name}"></a>
										</div>
										<div class="block-skybooks_information">
											<div class="block-skybooks_information_content">
												<h3>
													<a href="#">${book.name}</a>
												</h3>
												<table>
													<tbody>
														<tr>
															<td>Tác giả</td>
															<td>${book.author}</td>
														</tr>

														<tr>
															<td>Năm xuất bản</td>
															<td>${book.publishingYear}</td>
														</tr>
														<tr>
															<td>Số trang</td>
															<td>${book.numberPage}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>


			</div>
			<!--end-home-main-content-right-->
		</div>
	</div>
	<!-- end home -->
</body>
</html>