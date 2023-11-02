<%@ page contentType="text/html;charset=UTF-8"%>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인화면</title>
<link rel="stylesheet" type="text/css" href="./css/admin.css" />
<div class="navbar"><!-- 상단바 -->
<a href="http://localhost:8051/pureplusseb">
        <img src="../images/images/로고001.jpg" href="http://localhost:8051/pureplusseb"  width="0" height="10"alt="로고">
        </a>
        <ul>
            <li><form method="post" action="admin_logout">
					<h3 class="aRight_title">
						${admin_name}님 로그인을 환영합니다. <input type="submit" value="로그아웃" />
					</h3>
				</form></li>
			<li><a href="/admin_donation_list">기부자목록</a></li>
            <li><a href="admin_member_list">회원관리</a></li>
            <li><a href="admin_gongji_list">공지사항</a></li>
            <li>
          <div class="container h-100">
      <div class="d-flex justify-content-center h-100">
             
  
      </div>
    </div>      
    </div><!-- 상단바 종료-->
</head>
<body>
	<img src="../../images/images/pureplusadmin.png" width="100%;">
</body>
   <footer><%-- footer 태그는 html5에서 추가된 것으로 하단영역을 지정할 때 사용 --%>
   <hr>
   <img src="../images/images/로고0.png"class="a"style="float: left; bottom:0px; width:150px; height:80px;" alt="pure plus logo0">
   <span>
    상호명 : Pure Plus    대표자 : 2조    개인정보보호책임자 : 2조<br>
    사업자등록번호 : 2023-05-11 통신판매번호 : 서울종로-405호<br>
    대표번호 : 2023-0511 ⓒ KG ITBANK.<br></span>
   
   <div id="copy">

   </div>   
   
   <div id="social">
   <img src="../images/images/로고1.png" width="40" height="35" alt="pure plus logo1">
   <img src="../images/images/로고2.png" width="40" height="35" alt="pure plus logo2">
   
   </div>
</footer>
</html>
