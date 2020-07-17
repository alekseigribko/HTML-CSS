<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OPDT(ログイン)</title>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<div>
<img src="img/op_logo.jpg"><br/>
<h1>OnePieceData・ログイン・フォーム</h1>
<p>ユーザーID/パスワードを入力し、「ログイン」ボタンをクリック逢て下さい。</p>
<button class="btn_user" onclick="location.href='OPDT_CreateUserInput.jsp'">
ユーザー未登録の方はこちら
</button>
<p id="err"><c:out value="${udata.msg}"/></p>
<form action="OPDT_LoginServlet" method="post">
<table>
	<tr>
		<td>ユーザーID</td>
		<td><input type="text" name="uid" size="30"></td>
	</tr>
	<tr>
		<td>パスワード</td>
		<td><input type="password" name="password" size="30"></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
		<input class="submit" type="submit" value="ログイン"/>
		<input class="submit" type="reset" value="リセット"/>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>