<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<c:if test="${delete_success}">
	<script>
		alert("공지사항이 정상적으로 삭제되었습니다.");
	</script>
</c:if>

<c:if test="${write_success}">
	<script>
		alert("공지사항이 정상적으로 작성되었습니다.");
	</script>
</c:if>

<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<h4 class="text-center"><strong>공지사항</strong></h4>

<div class="row justify-content-center">
	<div class="col-8">
		<table class="table mt-4 text-center">
			<thead>
				<tr>
					<th scope="col">공지 번호</th>
					<th scope="col">제목</th>
					<th scope="col">등록일</th>
					<th scope="col">삭제</th>

				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty noticeList}">
						<c:forEach items="${noticeList}" var="notice">
							<tr>
								<td>${notice.noticeNo}</td>
								<td>${notice.noticeTitle}</td>
								<td>${notice.noticeDate}</td>
								<td><a href="/deleteNotice?noticeNo=${notice.noticeNo }"><i class="bi bi-trash"></i></a></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5">공지사항이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />