<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="beans.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OPDT (ユーザー登録確認)</title>
</head>
<link rel="stylesheet" href="css/style.css">
<%
	//表示するパスワード情報にマスク（＊）をかける方法
	StringBuilder mask_pass= new StringBuilder();
	OPDT_User udata = (OPDT_User)request.getAttribute("udata");
	String pass = udata.getPassword();
	for(int i=0;i<pass.length();i++){
		mask_pass.append("*");

	}
 %>
<body>
<div>
<img src="img/op_logo.jpg"><br/>
<h1>OnePieceData・ユーザー情報確認フォーム</h1>
<p>以下の表示内容を確認し、「登録」ボタンをクリックして下さい</p>
<form action="OPDT_CreateUserInsertServlet" method="post">
<table class="tbl_line">
	<tr>
		<td>ユーザーID：</td>
		<td><c:out value="${udata.uid }"/></td>
	</tr>
	<tr>
		<td>パスワード：</td>
		<%-- <td><c:out value="${udata.password}"/></td>--%>
		<%--方法①　<td><% out.println(mask_pass); %>></td>--%>
		<%--方法②　↓--%>
		<td><c:out value="${udata.password.replaceAll('.','*')}"/></td>
	</tr>
	<tr>
		<td>ユーザー名：</td>
		<td><c:out value="${udata.uname }"/></td>
	</tr>
	<tr>
		<td align="right" colspan="2">
		<input id="submit_button" type="submit" value="登録">
		</td>
	</tr>

</table>
<input type="hidden" name="uid" value="${udata.uid }">
<input type="hidden" name="password" value="${udata.password }">
<input type="hidden" name="uname" value="${udata.uname }">
</form>
</div>
</body>
</html>