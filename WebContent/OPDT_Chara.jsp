<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OPDT（キャラクター）</title>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<div>
<img src="img/op_logo.jpg"><br/>
<h1>OnePieceData・キャラクター</h1>
<img src="img/op_0001.jpg"><br/><br/>
<table>
<tr>
<td><button class="btn_def" onclick="location.href='OPDT_CharaSelectInput.jsp'">検索</button></td>
<td><button class="btn_def" onclick="location.href='OPDT_CharaInsertInput.jsp'">登録</button></td>
<td><button class="btn_def" onclick="location.href='OPDT_CharaUpdateInput.jsp'">更新</button></td>
<td><button class="btn_def" onclick="location.href='OPDT_CharaDeleteInput.jsp'">削除</button></td>
</tr>
</table>
<table>
<tr>
	<td colspan="2">
		<button class="btn_back" onclick="location.href='OPDT_MainMenu.jsp'">メインメニューへ</button>
	</td>
	<td colspan="2">
		<button class="btn_back" onclick="location.href='OPDT_Login.jsp'">ログイン画面へ</button>
	</td>
</tr>
</table>
</div>
</body>
</html>