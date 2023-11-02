<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="../../css/pureplusmoney.css">
<script src="../../js/pureplusadminboards.js"></script>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>사용자 공지내용</title>
    <%@ include file="./header.jsp"%>

<body>
	<div id="gCont_wrap" align="center">
	<div id="gong">
		<h2 class="gCont_title"  align="center" style=" color : black; padding-top: 40px;">공지내용</h2>
		</div>
		<div id="just">
		<table id="gCont_t" align="center" border="2px double" border-radius="50%" style="width: 60%; height:50%; margin:110px 0px 0px 10px">
		<%-- <h4 style="color:gray">${fn:substring(g.gongji_date,0,10)}</h4> --%> 
			<tr>
				<th>&nbsp;&nbsp;번호</th>
				<td>&nbsp;&nbsp;${g.gongji_no}</td>
			</tr>
			<tr>
				<th>&nbsp;&nbsp;제목</th>
				<td>&nbsp;&nbsp;${g.gongji_title}</td>
			</tr>
			<tr>
				<th>&nbsp;&nbsp;내용</th>
				<td>&nbsp;&nbsp;${g_cont}</td>
			</tr>
			<tr>
				<th>&nbsp;&nbsp;조회수</th>
				<td>&nbsp;&nbsp;${g.gongji_hit}</td>
			</tr>
			<tr>
				<th>&nbsp;&nbsp;등록날짜</th>
				<td>&nbsp;&nbsp;${fn:substring(g.gongji_date,0,10)}</td>
			</tr>
		</table>
		</div>
		<div id="gCont_menu"align="right" >
			<input type="button"  value="공지목록" onclick="location='gongji_list';" style=" margin-top:200;border:none; border-radius:5px; background: #f0bc11; color:white; font-family:fantasy ; " />
		</div>
	</div>
</body>
<%@ include file="./footer.jsp"%>
</html>




