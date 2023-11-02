<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<head>
    <div class="navbar"><!-- 상단바 -->
    <a href="http://localhost:8051/pureplusmain">
        <img src="../images/images/로고001.jpg"  alt="로고">
        </a>
        <ul>
        <c:if test="${empty id}">
            <li><a class="aa" href="http://localhost:8051/purepluslogin1">로그인</a></li>
            <li><a class="aa" href="http://localhost:8051/purepluslogin2">회원가입</a></li>
        </c:if>
        <c:if test="${!empty id}">
        	<li><a class="aa" href="http://localhost:8051/purepluslogin1">로그아웃</a></li>
            <li><a class="aa" href="http://localhost:8051/pureplusupdate">정보수정</a></li>
        </c:if>
            <li><a class="aa" href="http://localhost:8051/purepluspayment">후원/결제</a></li>
            <li>
                <div class="container h-100">
                    <div class="d-flex justify-content-center h-100">
                        <div class="searchbar">
                            <input class="search_input" type="text" name="" placeholder="Search...">
                            <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div><!-- 상단바 종료-->
</head>