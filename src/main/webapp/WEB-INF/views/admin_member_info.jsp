<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css"
   href="../../css/pureplusmoney.css">
<script src="../../js/pureplusadminboards.js"></script>
<!DOCTYPE html>
<html>
<head>
<div class="navbar">
   <!-- 상단바 -->
   <a href="http://localhost:8051/pureplusmain"> <img
      src="../images/images/로고001.jpg" alt="로고">
   </a>
 
   <ul>
      <li><a class="aa" href="admin_logout">로그아웃</a></li>
      <li><a class="aa" href="admin_gongji_list">Admin공지</a></li>
      <li><a class="aa" href="#">Common공지</a></li>
      <li><a class="aa" href="admin_index">관리자홈</a></li>
      <li>
      
         </div>
      </li>
   </ul>
</div>
<!-- 상단바 종료-->
</head>

<div id="aMain_cont">
<h2 class="aMem_title" style="color:#379bff;" align="center" style="padding-top: 10px;">관리자 회원정보</h2>
<%-- <h4 style="color:gray" align="center">${fn:substring(r.regdate,0,10)}</h4> --%>
 <div id="aMem_wrap">
  
  <table id="aMem_t" align="center" border="2px double" border-radius="50%" style="width: 60%; height:30%; margin:170px 0px 0px 330px">
   <tr>
    <th align="right">&nbsp;&nbsp;회원아이디</th> <td>&nbsp;&nbsp;${r.id}</td>
   </tr>
      <tr>
   <th align="center">&nbsp;&nbsp;이름</th>
   <td>&nbsp;&nbsp;${r.name}</td>
   </tr>
   <tr>
   <th align="center">&nbsp;&nbsp;휴대폰</th>
   <td>&nbsp;&nbsp;${r.phonenum}</td>
   </tr>
   <tr>
    <th align="center">&nbsp;&nbsp;전자우편</th>
    <td>&nbsp;&nbsp;${r.mail}</td>
   </tr>   
   <tr>
    <th align="center">&nbsp;&nbsp;가입회원/탈퇴회원</th>
    <td>
    <c:if test="${r.r_state == 1}">&nbsp;&nbsp;가입회원</c:if>
    <c:if test="${r.r_state == 2}">&nbsp;&nbsp;탈퇴회원</c:if>
    </td>   
   </tr>
    <tr>
    <th align="center">&nbsp;&nbsp;가입날짜</th>
    <td>&nbsp;&nbsp;${r.regdate}</td>
   </tr>   
  </table>
  <div id="aMem_menu">
  <input type="button" style="float: right;border:none; border-radius:5px; background: #f0bc11; color:white; font-family:fantasy ; "  value="회원목록"
  onclick="location='admin_member_list?page=${page}';" />
  </div>
 </div>
</div>



















