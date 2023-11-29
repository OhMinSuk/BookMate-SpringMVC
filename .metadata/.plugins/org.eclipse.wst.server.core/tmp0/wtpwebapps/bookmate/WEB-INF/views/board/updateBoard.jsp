<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp" flush="flase" />

<P>  게시판 업데이트  </P>
	<form action="/updateBoard" method="post">
		<div>
			<table>
				<tr>
					<th>제목</th>
					<td><input name="boardTitle" type="text" style="width:1200px;" value="" />
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="boardContent" rows="20" cols="168" value=""></textarea> 
					<!-- 업데이트시 이전의 읽기페이지에 있던 정보가 미리 담겨있어야한다. -->
			</table> 
		</div>
		<button type="submit">작성</button>
		<button>취소</button>
	</form>
</body>
</html>
