<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>


<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<h4 class="text-center"><strong>신청도서</strong></h4>

<div class="row justify-content-center">
	<div class="col-8">
		<table class="table mt-4 text-center">
			<thead>
				<tr>
					<th scope="col">등록 번호</th>
					<th scope="col">회원번호</th>
					<th scope="col">도서명</th>
					<th scope="col">ISBN</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty hopeBook}">
						<c:forEach items="${hopeBook}" var="hope">
							<tr>
								<td>${hope.hopeNo}</td>
								<td>${hope.userNo}</td>
								<td>${hope.hopeName}</td>
								<td>${hope.hopeISBN}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5">신청내역이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />