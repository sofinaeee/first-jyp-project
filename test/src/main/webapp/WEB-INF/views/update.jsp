<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body {
		text-align:center;
	}
</style>
</head>
<body>
	<form method="post" action="update_ok">
		<input type="hidden" name="id" value="${bdto.id}">
		제목 :<input type="text" name="title" value="${bdto.title }"><p>
		이름 :<input type="text" name="name" value="${bdto.name }"><p>
		비번 :<input type="password" name="pwd"><p>
		내용 :<textarea cols="40" rows="5" name="content">${bdto.content }</textarea><p>
	<input type="submit" value="글 수정">
	</form>
</body>
</html>