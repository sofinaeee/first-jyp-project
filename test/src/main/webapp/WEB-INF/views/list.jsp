<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="600" align="center">
		<tr>
			<td> 제목 </td>
			<td> 작성자 </td>
			<td> 조회수 </td>
			<td> 작성일 </td>
		</tr>
		<c:forEach items="${list}" var="bdto">
		<tr>
			<td><a href="readnum?id=${bdto.id}">${bdto.title }</a></td>
			<td>${bdto.name }</td>
			<td>${bdto.readnum }</td>
			<td>${bdto.writeday }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align="center"><a href="write">글 쓰기</a></td>
		</tr>
	</table>
</body>
</html>