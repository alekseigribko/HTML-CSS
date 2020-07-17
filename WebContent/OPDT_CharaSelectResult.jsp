<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OPDT（キャラクター検索結果）</title>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<div>
<img src="img/op_logo.jpg"><br/>
<h1>OPDTキャラクター検索結果</h1>
<c:if test="${cdata==null}">
<p id="no_rec">データ見つかりません</p>
</c:if>
<c:if test="${cdata!=null }">
<table class="tbl_chara">
<tr>
	<th>詳細検索</th><th>ID</th><th>キャラクター名</th><th>性別</th>
	<th>所属</th><th>悪魔の実</th><th>能力者</th>
	</tr>
	<c:forEach var="cdata" items="${cdata }">
		<tr>
		<td>
		<form action="OPDT_CharaSelectDetailServlet" method="post">
		<input type="hidden" name="id" value="${cdata,id }"/>
		<input type="submit" value="詳細"/>
		</form>
		</td>
		<td><c:out value="${cdata.id }"/></td>
		<td><c:out value="${cdata.name }"/></td>
		<td><c:out value="${cdata.sex }"/></td>
		<td><c:out value="${cdata.tm_name }"/></td>
		<td><c:out value="${cdata.df_name }"/></td>
		<c:if test="${cdata.df_name=='悪魔の実は食べていない' }">
			<td><%out.println("非能力者"); %></td>
		</c:if>
		<c:if test="${cdata.df_name != '悪魔の実は食べていない' }"	>
		<td><c:out value="${cdata.df_name }"/><% out.println("の能力者"); %>
		</c:if>

		</tr>
		</c:forEach>

</table>
</c:if>
</div>
</body>
</html>