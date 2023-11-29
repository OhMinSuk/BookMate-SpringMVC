<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

<h4 class="fw-bold text-center mt-3">공지사항</h4>
<div class="row justify-content-center">
	<div class="col-10">
		<table class="table mt-3 text-center">
			<thead>
				<tr>
					<th scope="col">글 번호</th>
					<th scope="col">제목</th>
					<th scope="col">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty noticeList}">
						<c:forEach items="${noticeList}" var="notice">
							<tr>
								<td>${notice.noticeNo}</td>
								<td><a href='/readNotice?noticeNo=${notice.noticeNo}' class="fw-bold text-dark text-decoration-none">${notice.noticeTitle}</a></td>
								<td>${notice.noticeDate}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="3">공지사항이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />