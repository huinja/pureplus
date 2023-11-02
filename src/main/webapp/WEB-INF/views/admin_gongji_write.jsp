<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css"
	href="../../css/pureplusmoney.css">
<script src="../../js/pureplusadminboards.js"></script>
<!--  -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" />
<!--  -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<div class="navbar">
	<!-- 상단바 -->
	<a href="http://localhost:8051/pureplusmain"> <img
		src="../images/images/로고001.jpg" alt="로고">
	</a>

	<ul>
		<li><a class="aa" href="admin_logout">로그아웃</a></li>
		<li><a class="aa" href="admin_gongji_list">Admin공지</a></li>
		<li><a class="aa" href="#">Common공지</a></li>
		<li><a class="aa" href="admin_index">관리자홈</a></li>
		<li>
			<div class="container h-100">
				<div class="d-flex justify-content-center h-100">
					<div class="searchbar">
						<input class="search_input" type="text" name=""
							placeholder="Search..."> <a href="#" class="search_icon"><i
							class="fas fa-search"></i></a>
					</div>
				</div>
			</div>
		</li>
	</ul>
</div>
<!-- 상단바 종료-->
</head>
<body>
	<div class="container bootstrap snippets bootdey">
		<div cla`ss="row">
			<div class="col-sm-10"></div>
			<div class="col-sm-2">
				<a
					href="https://blog.kakaocdn.net/dn/YyT0k/btqCOyTUoXX/kcqwOZ7Sbgbw5zzvVxFWY0/img.jpg"
					class="pull-right"><img title="profile image"
					class="img-circle img-responsive" src="../images/images/admin.png"></a>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<!--left col-->

				<ul class="list-group">
					<li class="list-group-item text-muted">공지사항</li>


				</ul>

				<div class="panel panel-default">
					<div class="panel-heading">
						Website <i class="fa fa-link fa-1x"></i>
					</div>
					<div class="panel-body">
						<a href="http://localhost:8051/pureplusmain"><h6>PurePlus+</h6></a>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						PurePuls+ management <i class="fa fa-link fa-1x"></i>
					</div>
					<li class="list-group-item text-right"><span class="pull-left"><strong>member</strong></span>
						Ok Seunghyun</li>
					<li class="list-group-item text-right"><span class="pull-left"><strong>member</strong></span>Kim
						Hoon</li>
					<li class="list-group-item text-right"><span class="pull-left"><strong>member</strong></span>Kim
						In-ho</li>
					<li class="list-group-item text-right"><span class="pull-left"><strong>member</strong></span>Yoo
						Dogon</li>
				</div>

				<div class="panel panel-default">

					<div class="panel-heading">
						Social <i class="fa fa-link fa-1x"></i>
					</div>
					<div class="panel-body">
						<div>
							<a href="https://www.facebook.com/"> <img
								src="../images/images/facebook.png" width="40" height="35"
								alt="페이스북">
							</a> <a href="https://www.instagram.com/"> <img
								src="../images/images/instagram.png" width="40" height="35"
								alt="인스타">
							</a> <a href="https://twitter.com/"> <img
								src="../images/images/트위터.png" width="40" height="35" alt="트위터">
							</a> <a href="https://www.naver.com/"> <img
								src="../images/images/네이버.png" width="40" height="35" alt="네이버">
							</a> <a href="https://www.kakaocorp.com/page/"> <img
								src="../images/images/카카오.png" width="40" height="35" alt="카카오">
							</a>

						</div>
						<!-- ===============================Business Logo start=============================== -->

						<section class="business-logo">
							<div class="container">
								<div class="autoplay">
									<div class="b-logo"></div>
								</div>
						</section>

						<!-- ===============================Business Logo End=============================== -->


						<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i>
						<i class="fa fa-twitter fa-2x"></i> <i
							class="fa fa-pinterest fa-2x"></i> <i
							class="fa fa-google-plus fa-2x"></i>
					</div>
				</div>

			</div>
			<!--/col-3-->
			<div class="col-sm-9">

				<ul class="nav nav-tabs" id="myTab">
					<li class="active"><a href="#home" data-toggle="tab">Admin공지</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>

								</thead>
								<!-- 본문 내용 -->
								<div id="aMain_cont">
	<div id="aBw_wrap">
		<h2 class="aBw_title" style="color:#379bff;" align="center">관리자 공지 작성</h2>
		<form method="post" action="admin_gongji_write_ok"
			onsubmit="return gw_check();">
			<table id="aBw_t">
				<tr>
					<th>이름</th>
					<td><input name="gongji_name" id="gongji_name" size="14" /></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input name="gongji_title" id="gongji_title" size="35" />
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="gongji_pwd" id="gongji_pwd"
						size="14" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="gongji_cont" id="gongji_cont" rows="9"
							cols="36"></textarea></td>
				</tr>
			</table>
			<div id="aBw_menu">
				<input type="submit"style="border:none; border-radius:5px; margin:2; background: #11d99d; color:white; font-family:fantasy ; " value="작성" /> <input type="reset" style="border:none; border-radius:5px; background: #ea4335; color:white; font-family:fantasy ; " value="취소"
					onclick="$('#gongji_name').focus();" /> <input type="button"
					style="border:none; border-radius:5px; background: #f0bc11; color:white; font-family:fantasy ; " value="목록" onclick="location='admin_gongji_list?page=${page}';" />
			</div>
		</form>
	</div>
</div>
								<!--본문내용끝  -->
							</table>
						</div>
					</div>
				</div>
</body>
<footer>
	<%-- footer 태그는 html5에서 추가된 것으로 하단영역을 지정할 때 사용 --%>
	<hr style="border-width: 1px 0 0 0;">
	<a href="http://localhost:7992/Html_Css/project/projectcloths.jsp">
		<img src="../images/images/로고0.png"
		style="float: left; bottom: 0px; width: 150px; height: 80px;"
		alt="pure plus logo0">
	</a> <span> 상호명 : Pure Plus 대표자 : 2조 개인정보보호책임자 : 2조<br> 사업자등록번호
		: 2023-05-11 통신판매번호 : 서울종로-405호<br> 대표번호 : 2023-0511 ⓒ KG ITBANK.<br></span>
	<div id="copy"></div>

	<div id="social">
		<img src="../images/images/로고1.png" width="40" height="35"
			alt="pure plus logo1"> <img src="../images/images/로고2.png"
			width="40" height="35" alt="pure plus logo2">

	</div>
</footer>
</html>