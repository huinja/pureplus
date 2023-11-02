<%@ page contentType="text/html;charset=UTF-8"%>

<link rel="stylesheet" type="text/css" href="../../css/purepluseat.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../../css/purepluseat.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!DOCTYPE html>
 <link rel="stylesheet" type="text/css" href="../../css/purepluseat.css">

 <script src="../../js/purepluseat.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<!-- <div class="navbar">상단바
<a href="http://localhost:8051/pureplusseb">
        <img src="../images/images/로고001.jpg" href="http://localhost:8051/pureplusseb" width="0" height="10"alt="로고">
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
     </li>
 </ul>     
       </head>    




       <body>
<div class="container">
	<div class="row">
        <div class="col-md-12">
            <div class="text-center text-uppercase">
                <h2>결식아동 식사 통계표</h2>
            </div>
            <!-- //.text-center -->
            
            <div class="column-chart">
                <div class="legend legend-left hidden-xs">
                    <h3 class="legend-title">통계</h3>
                </div>
                <!-- //.legend -->
            
                <div class="legend legend-right hidden-xs">
                    <div class="item">
                        <h4 class="a11">매우 높음</h4>
                    </div>
                    <!-- //.item -->
            
                    <div class="item">
                        <h4 class="a11">높음</h4>
                    </div>
                    <!-- //.item -->
            
                    <div class="item">
                        <h4 class="a11">중간</h4>
                    </div>
                    <!-- //.item -->
            
                    <div class="item">
                        <h4 class="a11">낮음</h4>
                    </div>
                    <!-- //.item -->
                </div>
                <!-- //.legend -->
            
                <div class="chart clearfix">
                    <div class="item">
                        <div class="bar">
                            <span class="percent">2019</span>
            
                            <div class="item-progress" data-percent="92">
                                <span class="title">92%</span>
                            </div>
                            <!-- //.item-progress -->
                        </div>
                        <!-- //.bar -->
                    </div>
                    <!-- //.item -->
            
                    <div class="item">
                        <div class="bar">
                            <span class="percent">2020</span>
            
                            <div class="item-progress" data-percent="71">
                                <span class="title">71%</span>
                            </div>
                            <!-- //.item-progress -->
                        </div>
                        <!-- //.bar -->
                    </div>
                    <!-- //.item -->
            
                    <div class="item">
                        <div class="bar">
                            <span class="percent">2021</span>
            
                            <div class="item-progress" data-percent="82">
                                <span class="title">82%</span>
                            </div>
                            <!-- //.item-progress -->
                        </div>
                        <!-- //.bar -->
                    </div>
                    <!-- //.item -->
            
                    <div class="item">
                        <div class="bar">
                            <span class="percent">2022</span>
            
                            <div class="item-progress" data-percent="58">
                                <span class="title">58%</span>
                            </div>
                            <!-- //.item-progress -->
                        </div>
                        <!-- //.bar -->
                    </div>
                    <!-- //.item -->
            
                    <div class="item">
                        <div class="bar">
                            <span class="percent">2023</span>
            
                            <div class="item-progress" data-percent="67">
                                <span class="title">67%</span>
                            </div>
                            <!-- //.item-progress -->
                        </div>
                        <!-- //.bar -->
                    </div>
                    <!-- //.item -->
                </div>
                <!-- //.chart -->
            </div>
            <!-- //.column-chart -->
        </div>
        <!-- //.col-md-6 -->
    </div>
    <!-- //.row -->
</div>
<!-- //.container -->

<div class="container">
    <div class="text-center">
        <br>
        <a href="http://localhost:8051/pureplusseb" target="_blank">Pure plus:)</a>
    </div>
    <!-- //.text-center -->
</div>
<!-- //.container -->
</body>
<%@ include file="./footer.jsp"%>
</html>