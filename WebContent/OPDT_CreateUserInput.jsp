<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OPDT(ユーザー登録)</title>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<div>
<img src="img/op_logo.jpg"><br/>
<h1>OnePieceData・ユーザー情報入力フォーム</h1>
<p>以下の各項目を入力し、「確認」ボタンをクリックして下さい。</p>
<p id="err"><c:out value="${udata.msg}"/></p>
<form action="OPDT_CreateUserCheckServlet" method="post">
<table>
	<tr>
		<td>ユーザーID:</td>
		<td><input type="text" name="uid" size="30"></td>
	</tr>
	<tr>
		<td>パスワード:</td>
		<td><input type="password" name="password" size="30"></td>
	</tr>
		<tr>
		<td>ユーザー名:</td>
		<td><input type="text" name="uname" size="30"></td>
	</tr>
	<tr>
		<td align="left">
		<a href="OPDT_Login.jsp">ログイン画面へ</a>
		</td>
		<td align="right">
		<input type="submit" value="確認">
		</td>
	</tr>

</table>
</form>
</div>
</body>
</html>