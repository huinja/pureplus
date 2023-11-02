<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
</head>
<body>
    <h1>회원가입</h1>
    <form action="registermain_ok" method="post">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" required><br><br>
        
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="name">이름:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="tel">휴대폰 번호:</label>
        <input type="text" id="phonenum" name="phonenum" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" title="###-####-####" required><br><br>
        
        <label for="mail">이메일:</label>
        <input type="email" id="mail" name="mail" required><br><br>
        
        <input type="submit" value="가입 완료">
    </form>
</body>
</html>
