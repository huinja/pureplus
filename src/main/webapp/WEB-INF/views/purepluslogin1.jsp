<%@ page contentType="text/html;charset=UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="../../css/purepluslogin1.css">

<html>
  <head>

  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//dn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
  </head>
<body id="LoginForm">
<div class="container">
<form action="#" method="POST">
<div class="login-form">
<div class="main-div">
    <div class="panel">
     <a href="http://localhost:8051/pureplusmain"  style="text-decoration:none">
<h1 class="form-heading">Pure Plus</h1>
</a>
<hr>

   <h2>후원자 로그인</h2>
   <p>아이디와 암호를 입력하십시오.</p>
   </form>
   </div>
    <form id="Login" method="post" action="pureplusologin1_ok">

        <div class="form-group">

		<!-- 	<input type="text" id="id" name="id" placeholder="이름" required> -->
          <input type="text" id="id" name="id" class="form-control" id="inputid"
             maxlength=12 placeholder="아이디" required>

        </div>

        <div class="form-group">
			
			<!-- <input type="password" id="password" name="password" placeholder="비밀번호" required> -->
            <input type="password" id="password" name="password" class="form-control"
             id="inputPassword" maxlength=12 placeholder="비밀번호" required>

        </div>
        <div class="forgot">
        <a href="pwd_find">암호를 잃어버리셨나요?</a>
      
</div>
		
 		
        <input  type="submit" value="로그인" class="btn btn-primary">
        </a>
          <div class="login-or">
                        <hr class="hr-or">
                        <span class="span-or">or</span>
                     </div>
		<a href="http://localhost:8051/admin_login" button type="submit" class="btn btn-p">관리자 로그인</button>
        </a>
        
        <a href="http://localhost:8051/purepluslogin2" button type="submit" class="btn btn-pr">퓨어플러스 가입하기</button>
        </a>
    </form>
    </div>
<p class="botto-text"></p>
</div></div></div>


</body>
<div class="a">
<%@ include file="./footer.jsp"%>
</div>
</html>