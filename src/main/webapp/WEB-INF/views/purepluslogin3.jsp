<%@ page contentType="text/html;charset=UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<meta charset="utf-8">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../../css/purepluslogin3.css">
<body>
   <div class="container">
      <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
         <a href="http://localhost:8051/pureplusmain"  style="text-decoration:none">
            <h1 class="wv-heading--title">
               	Pure Plus
               	</a>
               	<hr>
            </h1>
            <h2 class="wv-heading--subtitle">
				<bold>고객님의 개인정보보호를 위해 인증을 거쳐 회원가입을 하고 있습니다.</bold>
            </h2>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form action="" method="post" name="login">
                  <div class="form-group">
                     <input type="text" name="name"  class="form-control my-input" id="name" placeholder="Name" required>
                  </div>
                  <div class="form-group">
                     <input type="email" name="email"  class="form-control my-input" id="email" placeholder="Email" required>
                  </div>
                  <div class="form-group">
                     <input type="number" min="0" name="phone" id="phone"  class="form-control my-input" placeholder="Phone"required pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                     title="###-####-####">
                  </div>
                  <div class="text-center ">
                     <button type="submit" class=" btn btn-block send-button tx-tfm">무료 계정 만들기</button>
                  </div>
                  <div class="col-md-12 ">
                     <div class="login-or">
                        <hr class="hr-or">
                        <span class="span-or">or</span>
                     </div>
                  </div>
                  <div class="form-group">
                    
                     <a class="btn btn-block g-button" href="http://localhost:8051/purepluslogin2">
                     
                     <i class="fa fa-Pure Plus"></i> 퓨어 플러스에 가입하기
                     </a>
                  </div>
                  <p class="small mt-3">가입하면 사용 조건 및 개인 정보 보호 정책을 읽고 동의했음을 나타냅니다. <a href="#" class="ps-hero__content__link">Terms of Use</a> and <a href="#">Privacy Policy</a>.
                  </p>
               </form>
            </div>
         </div>
      </div>
   </div>
</body>