<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" type="text/css" href="../../css/pureplusmoney.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    
    
    <script src="../../js/test01-3.js"></script>
    <script src="../../js/test01-2.js"></script>
<script src="../../js/test01.js"></script>



<!DOCTYPE html>
 
<html>
<meta charset="UTF-8">
<title></title>

<head>

<!-- <div class="navbar">상단바
<a href="http://localhost:8051/pureplusseb">
        <img src="../images/images/로고001.jpg" href="http://localhost:8051/pureplusseb"  width="0" height="10"alt="로고">
        </a>
        <ul>
            <li><a href="http://localhost:8051/purepluslogin1">로그인</a></li>
            <li><a href="http://localhost:8051/purepluslogin2">회원가입</a></li>
            <li><a href="http://localhost:8051/purepluspayment">후원/결제</a></li>
            <li>
          <div class="container h-100">
      <div class="d-flex justify-content-center h-100">
        <div class="searchbar">        
          <input class="search_input" type="text" name="" placeholder="Search...">          
          <a href="#" class="search_icon"><i class="fas fa-search"></i></a>   
        </div>
      </div>
    </div>      
    </div>상단바 종료 -->
    <%@ include file="./header.jsp"%>
    </head>
    <body>
<div class="container">
   <div class="row">
      <h2></h2>
   </div>
    
    <div class="row">
        <!-- The carousel -->
        <div id="transition-timer-carousel" class="carousel slide transition-timer-carousel" data-ride="carousel">
         <!-- Indicators -->
         <ol class="carousel-indicators">
            <li data-target="#transition-timer-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#transition-timer-carousel" data-slide-to="1"></li>
            <li data-target="#transition-timer-carousel" data-slide-to="2"></li>
         </ol>

         <!-- Wrapper for slides -->
         <div class="carousel-inner">
            <div class="item active">
                    <img src="https://st2.depositphotos.com/1001599/7395/v/950/depositphotos_73956909-stock-illustration-donation-box-thin-line-icon.jpg" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Pure Plus</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                           
                        </p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="https://www.urbanbrush.net/web/wp-content/uploads/edd/2022/11/urbanbrush-20221107105212833138.jpg" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Pure Plus</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                           
                        </p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="https://www.logoyogo.com/web/wp-content/uploads/edd/2022/11/logoyogo-1-19.jpg" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Pure Plus</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                            
                        </p>
                    </div>
                </div>
            </div>

         <!-- Controls -->
         <a class="left carousel-control" href="#transition-timer-carousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
         </a>
         <a class="right carousel-control" href="#transition-timer-carousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
         </a>
            
            <!-- Timer "progress bar" -->
            <hr class="transition-timer-carousel-progress-bar animate" />
      </div>
    </div>
</div>

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
