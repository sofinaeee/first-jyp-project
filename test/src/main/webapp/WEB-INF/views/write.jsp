<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		text-align:center;
	}
</style>
</head>
<body>
	<form method="post" action="write_ok">
		제목 :<input type="text" name="title"><p>
		이름 :<input type="text" name="name"><p>
		비번 :<input type="password" name="pwd"><p>
		내용 :<textarea cols="40" rows="5" name="content"></textarea><p>
		<input type="submit" value="글 쓰기">
	</form>
</body>
</html>