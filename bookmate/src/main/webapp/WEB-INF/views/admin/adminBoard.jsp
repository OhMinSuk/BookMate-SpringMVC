<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page session = "true" %>

<c:if test="${delete_success}">
	<script>
		alert("게시글이 정상적으로 삭제되었습니다.");
	</script>
</c:if>


<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<h4 class="text-center"><strong>자유게시판</strong></h4>

<div class="row justify-content-center">
	<div class="col-8">
		<table class="table mt-4 text-center">
			<thead>
				<tr>
					<th scope="col">글 번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">삭제</th>

				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty list}">
						<c:forEach items="${list}" var="brd">
							<tr>
								<td>${brd.boardNo}</td>
								<td>${brd.boardTitle}</td>
								<td>${brd.userName}</td>
								<td><fmt:formatDate value="${brd.boardDate}" pattern="yyyy-MM-dd"/></td>
								<td><a href="/deleteBoard?boardNo=${brd.boardNo }" ><i class="bi bi-trash"></i></a></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />