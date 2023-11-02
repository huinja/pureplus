<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./css/style02.css" rel="stylesheet">
<title>Pure Plus+</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-dark">
		<div class="container">
			<a class="navbar-brand" href="http://localhost:8051/pureplusmain">
				<h3 class="my-heading ">
					Pure<span class="bg-main">Plus+</span>
				</h3>
			</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="fa fa-bars mfa-white"></span>
			</button>

			<div id="main">
				<a href="javascript:void(0)" class="openNav"><span
					class="fa fa-bars" onclick="openNav()"></span></a>
			</div>
 


			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
				<ul class="mob-ul">
					<li class="nav-item"><a class="nav-link" href="index02.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="index02.jsp">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">SubPage</a></li>
				</ul>
			</div>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<form class="form-inline my-2 my-lg-0 col-md-7">
				
					<button class="btn btn-light">
						<i class="fa fa-search"></i>
					</button>
				</form>
				<ul class="navbar-nav ml-auto">
				<c:if test="${empty id}">
					<li class="nav-link"><a
						class="btn btn-primary btn-block btn-login" href="http://localhost:8051/purepluslogin1">로그인</a></li>
					<li class="nav-link"><a
						class="btn btn-primary btn-block btn-register" href="http://localhost:8051/purepluslogin2">회원가입</a>
					</li>
				</c:if>
				<c:if test="${!empty id}">
				<form method="post" action="register_logout">
				<li class="nav-link">
					<input type="submit" class="btn btn-primary btn-block btn-register" value="로그아웃">
				</li>
				</form>
				<li class="nav-link">
					<input type="button" class="btn btn-primary btn-block btn-login" onclick="location='pureplusupdate'" value="회원수정">
				</li>
				</c:if>
					<li class="nav-link"><a
						class="btn btn-primary btn-block btn-register" href="http://localhost:8051/purepluspayment">Donate</a>
					</li>
					<li class="nav-link"><a
            class="btn btn-primary btn-block btn-login" href="http://localhost:8051/pureplusseb">SubPage</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<header class="masthead text-white ">
		<div class="overlay"></div>
		<div class="container slider-top-text">
			<div class="row">
				<div class="col-md-12 text-center">
					<h3 class="my-heading">
						Pure<span class="bg-main">Plus+</span>에 오신것을<br> <span class="bg-main">환영합니다!</span>
					</h3>
					<p class="myp-slider text-center">함께 나누고 연결되는 곳</p>
					<p class="myp text-center">기억을 공유하세요  |   다른 이들과 연결하세요   |   새로운 친구들을 사귀어보세요</p>
					<a class="btn btn-primary btn-join" href="http://localhost:8051/gongji_list">공지사항</a>

				</div>
				<div class="col-md-12 text-center mt-5">
					<div class="scroll-down">
						<a class="btn btn-default btn-scroll floating-arrow"
							href="#gobottom" id="bottom"><i class="fa fa-angle-down"></i></a>
					</div>
				</div>
			</div>
		</div>
	</header>

	<section class="testimonials" id="gobottom">
		<div class="container">
			<div class="row">
				<div class="col-md-4 mb-3 wow bounceInUp" data-wow-duration="1.4s">
					<div class="big-img">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQopXFGMGrBe3Q2Jm2eeU9LdE-kSqDvM_XCbA&usqp=CAU"
							class="img-fluid">
					</div>
				</div>
				<div class="col-md-8">
					<div class="inner-section wow fadeInUp">
						<h3>
							모두가 참여하는  <span class="bg-main"> 기부</span>
						</h3>
						<br>
						<p class="text-justify">
						  - 어린이를 위한 교육 지원<br>
						  - 환경 보호를 위한 노력<br>
						  - 국제적인 의료 지원 프로젝트
						</p>

						<div class="linear-grid">
							<div class="row">
								<div class="col-sm-6 col-md-3 mb-2 wow bounceInUp"
									data-wow-duration="1.4s">
									<img
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIqcpdXdZu5yjXTkbr35hW0Y0cLA6Q05UbFw&usqp=CAU"
										class="img-thumbnail">
								</div>
								<div class=" col-sm-6 col-md-3 mb-2 wow bounceInUp"
									data-wow-duration="1.4s">
									<img
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTf1f5dUHjBJIxPWjiJanlUXQsi6Z0GfjhA&usqp=CAU"
										class="img-thumbnail">
								</div>
								<div class="col-sm-6 col-md-3 mb-2 wow bounceInUp"
									data-wow-duration="1.4s">
									<img
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSu8c--WMamOrcqqdvq3CmOba21R_Z-sa8aQ&usqp=CAU"
										class="img-thumbnail">
								</div>
								<div class="col-sm-6 col-md-3 mb-2 wow bounceInUp"
									data-wow-duration="1.4s">
									<img
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlYMhEMNaMCbY-r_KgFyYfDXtvY-7qrPNTpA&usqp=CAU"
										class="img-thumbnail">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="testimonials text-center mybg-music">
		<div class="container">
			<div class="row">
				<div class="col-md-12 wow fadeInUp">
					<h3 class="title-heading text-center font-weight-bold">
					여러분의 기부로 인해 더 많은 사람들이 희망을 얻고<br>
					미래를 밝게 보게 됩니다.
					</h3>
					<p class="myp text-center">여러분의 작은 기부가 큰 변화를 만들어냅니다.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image04.jpg"
							class="fancybox" rel="ligthbox"> 
							<img class="img-fluid"
							src="./images/image04.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image05.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image05.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image06.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image06.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image07.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image07.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image08.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image08.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image09.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image09.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image10.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image10.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image11.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image11.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image12.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image12.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image13.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image13.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image14.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image14.jpg">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-2 mt-4 gal-item wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="music-gal item box">
						<a
							href="./images/image15.jpg"
							class="fancybox" rel="ligthbox"> <img class="img-fluid"
							src="./images/image15.jpg">
						</a>
					</div>
				</div>

			</div>
		</div>
	</section>

	<section class="testimonials bg-light" id="marketplace">
		<div class="container">
			<div class="row">
				<div class="col-md-8 mx-auto wow fadeInUp">
					<h3 class="text-center font-weight-bold">
						Pure<span class="bg-main">Plus+</span> Donation<br>
						기부로 지원되는 프로젝트 소개
					</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-4 mt-4 wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="card">
						<img class="card-img-top h-262"
							src="./images/image16.jpg">
						<div class="card-block">

							<h4 class="card-title">나눔의 옷장</h4>

							<div class="card-text">
								<p>
								많은 사람들이 옷, 특히 겨울철 옷을 부족하게 입고 있으며, 추위와 기타 건강 문제로 고통받고 있습니다. "나눔의 옷장" 프로젝트는 기부자들로부터 옷을 모으고 이를 가난한 지역의 사람들에게 제공하여, 따뜻하게 입을 옷을 제공하고 삶의 질을 향상시키는 것을 목표로 합니다.
                </p>
							</div>
						</div>
						<div class="card-footer">
							<small><!--가격입력 ex)$ 170  --></small> <a href="#" class="pull-right">더 보기</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4 mt-4 wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="card">
						<img class="card-img-top h-262"
							src="./images/image17.jpg">
						<div class="card-block">

							<h4 class="card-title">음식 나눔</h4>

							<div class="card-text">
								<p>
								        많은 사람들이 식량 부족 문제로 고통받고 있으며, 영양 부족으로 인한 건강 문제가 심각합니다. "음식 나눔" 프로젝트는 기부자들로부터 음식 및 식료품을 조달하고, 이를 가난한 지역의 사람들에게 제공하여 영양 공급과 식량 보안을 강화하는 것을 목표로 합니다.
                </p>
							</div>
						</div>
						<div class="card-footer">
							<small><!--가격입력 ex)$ 170  --></small> <a href="#" class="pull-right">더 보기</a>

						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-4 mt-4 wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="card">
						<img class="card-img-top h-262"
							src="./images/image18.jpg">
						<div class="card-block">

							<h4 class="card-title ">새로운 집, 더 나은 삶</h4>

							<div class="card-text ">
								<p>가난한 국가에서는 많은 가정들이 불안정한 주거 환경에서 살고 있으며, 
								풍수해와 자연 재해로부터 안전하지 못한 상황에 처해 있습니다
								. "새로운 집, 더 나은 삶" 프로젝트는 안전하고 내구성 있는 주거 공간을 건설하고,
								 주거 빈곤 문제를 해결하여 가정의 삶의 질을 향상시키는 것을 목표로 합니다.</p>
							</div>
						</div>
						<div class="card-footer">
							<small><!--가격입력 ex)$ 170  --></small> <a href="#" class="pull-right">더 보기</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="testimonials text-center ">
		<div class="container">
			<div class="row">
				<div class="col-md-8 mx-auto wow fadeInUp">
					<h3 class="text-center font-weight-bold">
						Pure<span class="bg-main">Plus+</span> 의 목표
					</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-6 mt-4 wow bounceInUp"
					data-wow-duration="1.4s">
					<div class="big-img-3">
						<img
							src="https://i.ebayimg.com/images/g/kUsAAOSwW4xkaWLs/s-l1200.jpg"
							class="img-fluid">
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-6 mt-4">
					<div class="my-right-text wow fadeInUp">

						<p class="text-justify font-italic">
						비영리 기관, 사회단체, 기업과 협력하여 기부 활동을 확장하고 사회에 긍정적인 영향을 더 크게 미치고자 합니다.<br>
						<br>
						<br>
						 목표는 기부를 넘어서 지속 가능한 파트너십을 구축하고 사회적 변화를 선도하는 것입니다.<br>
						 <br>
            <br>
						 이 협력을 통해 우리는 다양한 전문 지식과 자원을 공유하며 기부 활동을 더 다양한 분야로 확장하려 노력하겠습니다.<br>
						 <br>
            <br>
						 함께 노력하여 우리의 비전을 실현하고 더 나은 사회를 만들기 위해 힘을 모으겠습니다.</p>

						<a href="#" class="link-color">헤이하치</a>
						<p class="text-muted">미시마가의 수장이었자</p>
					</div>
				</div>

			</div>
		</div>
	</section>


	<footer class="footer bg-dark">
		<div class="container">
			<div class="row">

				<div class="col-lg-6 text-center text-lg-left my-auto  wow zoomIn">
					<ul class="list-inline mb-2">
						<li class="list-inline-item"><a href="#">About</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#">Contact</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
					</ul>
					<p class="text-muted small mb-4 mb-lg-0">© Kgit 2023. 05
						Rights Reserved.</p>
				</div>
				<div class="col-lg-6 text-center text-lg-right my-auto  wow zoomIn">
					<ul class="list-inline mb-0">
						<li class="list-inline-item mr-3"><a href="#"> <i
								class="fa fa-facebook fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item mr-3"><a href="#"> <i
								class="fa fa-twitter fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-instagram fa-2x fa-fw"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<script>
		$(window).scroll(function() {

			var topWindow = $(window).scrollTop();
			var topWindow = topWindow * 1.5;
			var windowHeight = $(window).height();
			var position = topWindow / windowHeight;
			position = 1 - position;

			$('#bottom').css('opacity', position);

		});

		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
			document.getElementById("main").style.display = "0";
			document.body.style.backgroundColor = "white";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("main").style.marginRight = "0";
			document.body.style.backgroundColor = "white";
		}

		$(window).on("scroll", function() {
			if ($(this).scrollTop() > 10) {
				$("nav.navbar").addClass("mybg-dark");
				$("nav.navbar").addClass("navbar-shrink");

			} else {
				$("nav.navbar").removeClass("mybg-dark");
				$("nav.navbar").removeClass("navbar-shrink");

			}

		});

		$(function() {
			$('#bottom')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										&& location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body').animate({
											scrollTop : target.offset().top
										}, 500);
										return false;
									}
								}
							});
		});
	</script>
	<script>
		$(document).ready(function() {
			$(".fancybox").fancybox({
				openEffect : "none",
				closeEffect : "none"
			});
		});
	</script>
</body>
</html>