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
		<li><a class="aa" href="admin_gongji_list">관리자 공지사항</a></li>
      	<li><a class="aa" href="admin_member_list">관리자 회원관리</a></li>
      	<li><a href="/admin_donation_list">기부자목록</a></li>
		<li><a class="aa" href="admin_index">관리자홈</a></li>
		<li>
			
			
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
						<a href="http://localhost:8051/pureplusmain"><h4>PurePlus+</h4></a>
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
									<form method="get" action="admin_gongji_list">
										<div id="bList_wrap">
											<h2 class="bList_title" style="color:#379bff;" align="center">관리자 공지목록</h2>
											<div class="bList_count">글개수: ${listcount} 개</div>
											<table id="bList_t" border="2px double" border-radius="50%">
												<tr>
													<th width="5%" height="26">번호</th>
													<th width="20%">제목</th>
													<th width="10%">작성자</th>
													<th width="12%">작성일</th>
													<th width="12%">조회수</th>
													<th width="13%">수정/삭제</th>
												</tr>
												<c:if test="${!empty glist}">
													<c:forEach var="g" items="${glist}">
														<tr>
															<td align="left">&nbsp;&nbsp;${g.gongji_no}</td>
															<td><a
																href="admin_gongji_cont?no=${g.gongji_no}&page=${page}&state=cont">
																	<c:if test="${fn:length(g.gongji_title)>50}">
																		<%-- 제목 문자열 길이가 16자를 초과하면 실행 --%>
 ${fn:substring(g.gongji_title,0,50)}...
 <%--제목을 16자까지만 출력하고 나머지는 ... 표시 --%>
																	</c:if> <c:if test="${fn:length(g.gongji_title)<50}">
${g.gongji_title}
</c:if>
															</a></td>
															<td align="left">${g.gongji_name}</td>
															<td align="left">${fn:substring(g.gongji_date,0,10)}</td>
															<td align="left">${g.gongji_hit}</td>
															<td align="left"><input type="button" style="border:none; border-radius:5px; margin:2; background: #11d99d; color:white; font-family:fantasy ; " value="수정"
																onclick="location=
'admin_gongji_cont?no=${g.gongji_no}&page=${page}&state=edit';" />
																<input type="button" style="border:none; border-radius:5px; background: #ea4335; color:white; font-family:fantasy ; " value="삭제"
																onclick="if(confirm('정말로 삭제할까요?') == true){
location=
'admin_gongji_del?no=${g.gongji_no}&page=${page}';	
}else{ return ;}" />
																<%-- confirm() 자바스크립트 함수(메서드)는 삭제 유무를 판단하는
확인/취소 버튼을 가진 경고창을 만들어 준다.확인을 클릭하면 true,
취소를 클릭하면 false를 반환 --%></td>
														</tr>
													</c:forEach>
												</c:if>
												<c:if test="${empty glist}" >
													<tr>
														<th colspan="5">목록이 없습니다!</th>
													</tr>
												</c:if>
											</table>

											<%--페이징 즉 쪽나누기 추가 --%>
											<div id="bList_paging" >
												<%-- 검색전 페이징 --%>
												<c:if test="${(empty find_field) && (empty find_name)}">
													<c:if test="${page<=1}">
     [이전]&nbsp;
    </c:if>
													<c:if test="${page>1}">
														<a href="admin_gongji_list?page=${page-1}" >[이전]</a>&nbsp;
    </c:if>

													<%--현재 쪽번호 출력--%>
													<c:forEach var="a" begin="${startpage}" end="${endpage}"
														step="1">
														<c:if test="${a == page}">
															<%--현재 페이지가 선택되었다면--%>
      <${a}>
     </c:if>
														<c:if test="${a != page}">
															<%--현재 페이지가 선택되지 않았
     다면 --%>
															<a href="admin_gongji_list?page=${a}">[${a}]</a>&nbsp;
     </c:if>
													</c:forEach>

													<c:if test="${page >= maxpage}">
    [다음]
    </c:if>
													<c:if test="${page<maxpage}">
														<a href="admin_gongji_list?page=${page+1}">[다음]</a>
													</c:if>
												</c:if>

												<%-- 검색후 페이징 --%>
												<c:if test="${(!empty find_field) || (!empty find_name)}">
													<c:if test="${page<=1}">
     [이전]&nbsp;
    </c:if>
													<c:if test="${page>1}">
														<a
															href="admin_gongji_list?page=${page-1}&find_field=${find_field}&find_name=${find_name}">[이전]</a>&nbsp;
    </c:if>

													<%--현재 쪽번호 출력--%>
													<c:forEach var="a" begin="${startpage}" end="${endpage}"
														step="1">
														<c:if test="${a == page}">
															<%--현재 페이지가 선택되었다면--%>
      <${a}>
     </c:if>
														<c:if test="${a != page}">
															<%--현재 페이지가 선택되지 않았
     다면 --%>
															<a
																href="admin_gongji_list?page=${a}&find_field=${find_field}&find_name=${find_name}">[${a}]</a>&nbsp;
     </c:if>
													</c:forEach>

													<c:if test="${page >= maxpage}">
    [다음]
    </c:if>
													<c:if test="${page<maxpage}">
														<a
															href="admin_gongji_list?page=${page+1}&find_field=${find_field}&find_name=${find_name}">[다음]</a>
													</c:if>
												</c:if>
											</div>

											<div id="bList_menu" >
												<input type="button" style="border:none; border-radius:5px; background: #f0bc11; color:white; font-family:fantasy ; "  value="글쓰기"
													onclick="location='admin_gongji_write?page=${page}';" />
												<c:if test="${(!empty find_field) && (!empty find_name)}">
													<input type="button" value="전체목록"
														onclick="location='admin_gongji_list?page=${page}';" />
												</c:if>
											</div>

											<%--검색 폼추가 --%>
											<div id="bFind_wrap">
												<select name="find_field"  style=" border-radius:5px; margin:2;">
													<option value="gongji_title"
														<c:if test="${find_field=='gongji_title'}">
   ${'selected'}</c:if>>제목</option>
													<option value="gongji_cont"
														<c:if test="${find_field=='gongji_cont'}">
   ${'selected'}</c:if>>내용</option>
												</select> <input name="find_name" id="find_name" size="14"  style=" border-radius:5px; margin:2;"
													value="${find_name}" /> <input type="submit"  style="border:none; border-radius:5px; margin:2; background: #caccca; color:white; font-family:fantasy ; " value="검색" />
											</div>
										</div>
									</form>
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