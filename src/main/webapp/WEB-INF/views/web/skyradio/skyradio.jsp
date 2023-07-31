<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyRadio</title>
</head>
<body>
	<div class="wrapper">
		<div class="radio_banner">
			<div class="radio_main_banner">
				<img src="<c:url value='/resources/img/skybooks_radio_banner.png'/>"
					alt="SkybookRadio">
			</div>
		</div>
	</div>

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
								<li><a class="${(c.id==cid)?" active":""}" href=""><i
										class="fa fa-angle-right" aria-hidden="true"></i><span>${c.name}</span></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- end home-main-block_category -->
				<div class="home-main-content_quote">
					<div class="block_quote_title">
						<a href="">Trích dẫn</a>
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
				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Skybooks</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skb}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Skynovel</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skn}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Skycomics</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skc}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Skymommy</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skm}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Sky Special</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${sks}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Tủ sách chữa lành</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skh}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Tủ sách quý cô</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skw}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Tủ sách sống khác</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skk}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="home-main-content-right_first">
					<div class="block_heading-books">
						<a href="">Deepbooks</a>
					</div>
					<div class="block_content-skybooks">
						<ul class="skybooks">
							<c:forEach items="${skd}" var="radio">
								<li title="${radio.name}">
									<div class="block_content-skybooks_list">
										<div class="block-skybooks_information_content">
											<a href="${radio.source}" target="_blank">
												<div>
													<div>
														<img width="" height=""
															src="<c:url value='/resources/img/radio/${radio.thumbnail}'/>"
															alt="${radio.name}">
													</div>
													<i class="fa fa-youtube-play"></i>
												</div>
												<p>${radio.name}|SkybooksRadio</p>
											</a>
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
</body>
</html>