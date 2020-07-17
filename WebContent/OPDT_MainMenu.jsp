<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OPDT（メインメニュー）</title>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<div>
<img src="img/op_logo.jpg"><br/>
<h1>OnePieceData・メインメニュー</h1>
<table>
<c:forEach var="udata" items="${udata}">
	<tr>
		<td>ユーザーID</td>
		<td><c:out value="${udata.uid}"/></td>
	</tr>
	<tr>
		<td>ユーザー名</td>
		<td><c:out value="${udata.uname}"/></td>
	</tr>
</c:forEach>
	<tr>
		<td>ログイン日付</td>
		<jsp:useBean id="date" class="java.util.Date"/>
		<td><fmt:formatDate value="${date}" pattern="yyyy年MM月dd日　（E曜日）"/></td>
	</tr>
</table>
<img src="img/one_piece_arabasta_large.jpg"><br/>
<table>
	<tr>
		<td>
		<button class="btn_menu" onclick="location.href='OPDT_Chara.jsp'">キャラクター</button>
		</td>
		<td>
		<button class="btn_menu" onclick="location.href='OPDT_Team.jsp'">所属</button>
		</td>
		<td>
		<button class="btn_menu" onclick="location.href='OPDT_DevilFruit.jsp'">悪魔の実</button>
		</td>
	</tr>
	<tr>
		<td colspan="3" align="center">
		<button class="btn_logbk" onclick="location.href='OPDT_Login.jsp'">ログイン画面</button>
	</tr>



</table>
</div>
</body>
</html>