<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<div class="content-right-user">
							<div class="top-right-user">
								Danh sách thông báo
								<div class="right-search-user">
									<input class="form-control" type="text"
										id="formGroupInputSmall" placeholder="Tìm kiếm"> <a
										class="btn-searh-message" href="#"></a>
								</div>
							</div>
							<div class="rightcate2">
								<div class="main-ballet-user"></div>
								<div class="his-ballet-user">
									<div class="top-his-ballet">
										<div class="his-ballet2">
											<div class="left-ballet2">
												<div class="dropdown fil-hisballet">
													<label>Trạng thái:</label>
													<button class="btn btn-default dropdown-toggle"
														type="button" id="dropdownMenu1" data-toggle="dropdown"
														aria-haspopup="true" aria-expanded="true">
														Tất cả <span class="caret"></span>
													</button>
													<ul class="dropdown-menu " aria-labelledby="dropdownMenu1">
														<li><a href="/user/notification">Tất cả</a></li>
														<li><a href="/user/notification?status=1">Chưa
																đọc</a></li>
														<li><a href="/user/notification?status=2">Đã đọc</a></li>
													</ul>
												</div>
											</div>
											<div class="left-ballet2">
												<div class="dropdown fil-hisballet">
													<label> Sắp xếp:</label>
													<button class="btn btn-default dropdown-toggle"
														type="button" id="dropdownMenu1" data-toggle="dropdown"
														aria-haspopup="true" aria-expanded="true">
														Mới nhất <span class="caret"></span>
													</button>
													<ul class="dropdown-menu " aria-labelledby="dropdownMenu1">
														<li><a href="/user/notification?order=desc">Mới
																nhất</a></li>
														<li><a href="/user/notification?order=asc">Cũ
																nhất</a></li>
													</ul>
												</div>
											</div>
											<div class="right-ballet2">
												<div class="dropdown viewlistcate itemperpage">
													<button class="btn btn-default dropdown-toggle"
														type="button" id="dropdownMenu1" data-toggle="dropdown"
														aria-haspopup="true" aria-expanded="true">
														20 <span class="caret"></span>
													</button>
													<ul class="dropdown-menu dropdown-menu-right"
														aria-labelledby="dropdownMenu1">
														<li><a href="/user/notification?size=20">20</a></li>
														<li><a href="/user/notification?size=40">40</a></li>
														<li><a href="/user/notification?size=60">60</a></li>
													</ul>
												</div>
											</div>
										</div>
										<!-- his-ballet2 -->
									</div>
									<!--top-his-ballet-->
									<div class="list-notification">
										<ul>
										</ul>
									</div>
									<!--list-notification-->
									<div class="page-cate">
										<nav> <span>Rất tiếc, nội dung bạn chọn không có
											bản ghi nào, vui lòng chọn mục khác.</span> </nav>
										<div class="dropdown viewlistcate itemperpage">
											<label>Số đơn hàng trên trang:</label>
											<button class="btn btn-default dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="true">
												20 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-menu-right"
												aria-labelledby="dropdownMenu1">
												<li><a href="/user/notification?size=20">20</a></li>
												<li><a href="/user/notification?size=40">40</a></li>
												<li><a href="/user/notification?size=60">60</a></li>
											</ul>
										</div>
									</div>
								</div>
								<!--his-ballet-user-->
							</div>
							<!--rightcate2-->
						</div>
					
	
</body>
</html>