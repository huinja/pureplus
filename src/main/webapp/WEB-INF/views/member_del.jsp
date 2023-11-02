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
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
 function del_check(){
	 if($.trim($("#password").val())==""){
		 alert("탈퇴 비번을 입력하세요!");
		 $("#password").val("").focus();
		 return false;
	 }
 }
</script>
<!------ Include the above in your HEAD tag ---------->
  </head>
<body id="LoginForm">
<div class="container">

<div class="login-form">
<div class="main-div">
    <div class="panel">
     <a href="http://localhost:8051/pureplusmain"  style="text-decoration:none">
<h1 class="form-heading">Pure Plus</h1>
</a>
<hr>

   <h2>회원탈퇴</h2>
   <p>탈퇴할 아이디와 암호를 입력하십시오.</p>
   
   </div>
    

        <div class="form-group">

		
		<!-- 	<input type="text" id="id" name="id" placeholder="이름" required> -->
        <div>
        <form method="post" action="member_del_ok"
         onsubmit="return del_check();">
         <table id="mDel_t">
            <tr>
               <th>회원아이디&nbsp;&nbsp;</th><th>:&nbsp;&nbsp;</th>
               
               <td>${id}</td>
            </tr>
            <tr>
          
              
         
         </table>
         <br>

  

        <div class="form-group">
			
			<!-- <input type="password" id="password" name="password" placeholder="비밀번호" required> -->
            <input type="password" id="password" name="password" class="form-control"
              maxlength=12 placeholder="비밀번호" required>

        </div>
        <div class="forgot">
        <a href="reset.html">언제든 다시 가입해주세요.^^</a>
      
</div>
		
 		
  

          <div class="login-or">
                        <hr class="hr-or">
                        <span class="span-or">or</span>
                     </div>

        <input type="submit" value="탈퇴" class="btn btn-p"/> 
        <input type="reset" value="취소" onclick="location='pureplusmain'"  class="btn btn-pr"/>
    </form>
    </div>
<p class="botto-text"></p>
</div></div></div>


</body>
<div class="a">
<%@ include file="./footer.jsp"%>
</div>
</html>