<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function viewform()
		{
			document.getElementById("delform").style.display="table-row";
		}
	</script>
</head>
<body>
	<table width="400" align="center">
		<tr>
			<td> 제목 </td>
			<td>${bdto.title }</td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td>${bdto.name }</td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td>${bdto.readnum }</td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td>${bdto.writeday }</td>
		</tr>
		<tr>
			<td> 내용 </td>
			<td>${bdto.content }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<a href="list">목록</a>
			<a href="update?id=${bdto.id}">수정</a>
			<a href="javascript:viewform()">삭제</a>
			</td>
		</tr>
		<tr id="delform" style="display:none;">
			<td colspan="4" align="center">
				<form method="post" action="delete">
				<input type="hidden" name="id" value="${bdto.id}">
				<input type="password" name="pwd" placeholder="비밀번호 입력">
				<input type="submit" value="삭제">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>