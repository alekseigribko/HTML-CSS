<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OPDT （キャラクター検索入力）</title>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<img src="img/op_logo.jpg"><br/>
<h1>OPDT キャラクター検索入力</h1>
<p>検索条件クォ入力し、「検索」ボタンをクリックして下さい</p>
<form action="OPDT_CharaSelectServlet" method="post">
<table>
	<tr>
		<td>キャラクター名</td>
		<td><input type="text" name="name" /></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
		<input type="submit" value="検索"/>
		<input type="reset" value="リセット"/>
		</td>
	</tr>


</table>
</form>
</body>
</html>