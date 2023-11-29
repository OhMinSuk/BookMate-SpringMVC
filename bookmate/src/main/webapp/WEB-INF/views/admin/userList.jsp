<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>


<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<h4 class="text-center"><strong>회원목록</strong></h4>

<div class="row justify-content-center">
	<div class="col-8">
		<table class="table mt-4 text-center">
			<thead>
				<tr>
					<th scope="col">회원 번호</th>
					<th scope="col">아이디</th>
					<th scope="col">이름</th>
					<th scope="col">생년월일</th>
					<th scope="col">성별</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty userList}">
						<c:forEach items="${userList}" var="user">
							<tr>
								<td>${user.userNo}</td>
								<td>${user.userId}</td>
								<td>${user.userName}</td>
								<td>${user.userDate}</td>
								<td>${user.userGender}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5">사용자가 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />