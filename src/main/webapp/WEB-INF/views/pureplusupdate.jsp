<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<html>
<head><title>회원가입</title>
<link rel="stylesheet" type="text/css" href="./css/purepluslogin2.css">
<script src="./js/register.js"></script>

</head>
<body>


<div class="page-container">
            
            <form action="pureplusupdate_ok" method="post">
            <a href="http://localhost:8051/pureplusmain"  style="text-decoration:none">
            <h1 class="wv-heading--title">
               	Pure Plus
               	</h1>
               	</a>
               	<hr>
 				<h1 style="color:#a8aeb3;font-weight:bold;">Edit profile</h1>
        <input type="member_id" class="in" id="member_id" name="member_id" disabled value="${id}" placeholder="아이디" required>

        <input type="password" class="in" id="password" name="password" placeholder="비밀번호" required>
        
		<input type="text" class="in" id="name" name="name" value="${em.name}" placeholder="이름" required>
		
        <input type="text" class="in" id="phonenum" name="phonenum" value="${em.phonenum}" placeholder="휴대폰 번호" pattern="[0-9]{3}[0-9]{4}[0-9]{4}" title="###-####-####" required>
        

        <input type="email" class="in" id="mail" name="mail" value="${em.mail}" placeholder="이메일" required>
<!-- 				<input type="text" id="id" name="name" class="Name" placeholder="이름" required>
                <input type="text" id="phonenum" name="tel" class="Tel" placeholder="휴대폰 번호" required pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" 
title="###-####-####">
				<input type="text" id="mail" name="email" class="Email" placeholder="이메일" required>
				<input type="password" id="password" name="password" class="Address" placeholder="비밀번호" required> -->
				<div class="login-or">
				<hr class="hr-or">
                        <span class="span-or">or</span>
                        </div>
					<button style="background-color:#11d99d;"type="submit"href="http://localhost:8051/purepluslogin1" value="Add" name="submit" class="submit">완료</button>
	
					<button style="background-color:#ea4335;" type="button" onclick="location='member_del';" value="Add" name="submit" class="submit" >회원탈퇴</button>
	
     
            </form>
        </div>
		
</body>

<div class="a">
<%@ include file="./footer.jsp"%>
</div>


</html>