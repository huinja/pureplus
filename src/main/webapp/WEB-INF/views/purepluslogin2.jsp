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
            
            <form action="purepluslogin2_ok" method="post">
            <a href="http://localhost:8051/pureplusmain"  style="text-decoration:none">
            <h1 class="wv-heading--title">
               	Pure Plus
               	</h1>
               	</a>
               	<hr>
			<h1>Sign Up</h1>

        <input type="text" class="in" id="id" name="id" placeholder="아이디" required>
        <input type="button" value="아이디중복체크"
						class="input_b" onclick="id_check();"><br><span
						id="idcheck"></span>
        

        <input type="password" class="in" id="password" name="password" placeholder="비밀번호" required>
        

		<input type="text" class="in" id="name" name="name" placeholder="이름" required>
		
        <input type="text" class="in" id="phonenum" name="phonenum" placeholder="휴대폰 번호" pattern="[0-9]{3}[0-9]{4}[0-9]{4}" title="###-####-####" required>
        

        <input type="email" class="in" id="mail" name="mail" placeholder="이메일" required>
<!-- 				<input type="text" id="id" name="name" class="Name" placeholder="이름" required>
                <input type="text" id="phonenum" name="tel" class="Tel" placeholder="휴대폰 번호" required pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" 
title="###-####-####">
				<input type="text" id="mail" name="email" class="Email" placeholder="이메일" required>
				<input type="password" id="password" name="password" class="Address" placeholder="비밀번호" required> -->
				<div class="login-or">
				<hr class="hr-or">
                        <span class="span-or">or</span>
                        </div>
					<button type="submit"href="http://localhost:8051/purepluslogin1" value="Add" name="submit" class="submit">완료</button>
	
 
            </form>
        </div>
		
</body>

<div class="a">
<%@ include file="./footer.jsp"%>
</div>


</html>