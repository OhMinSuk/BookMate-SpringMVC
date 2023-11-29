<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

<c:if test="${write_success}">
	<script>
		alert("게시글 작성이 완료되었습니다.");
	</script>
</c:if>
<c:if test="${NoHaveSession}">
	<script>alert("로그인 후 이용할 수 있습니다.");</script>
</c:if>

<h4 class="text-center mt-3 fw-bold">자유게시판</h4>
<div class="row justify-content-center">
	<div class="col-10">
		<table class="table mt-3 text-center">
			<thead>
				<tr>
					<th scope="col">글 번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty list}">
						<c:forEach items="${list}" var="brd">
							<tr>
								<td>${brd.boardNo}</td>
								<td><a href="readBoard?boardNo=${brd.boardNo}" class="text-dark text-decoration-none fw-bold">${brd.boardTitle}</a></td>
								<td>${brd.userName}</td>
								<td><fmt:formatDate value="${brd.boardDate}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4">게시물이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<button type="button" class="btn btn-sm btn-primary float-end mt-3" onclick="link('/writeBoard')">글쓰기</button>
	</div>
</div>

<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />