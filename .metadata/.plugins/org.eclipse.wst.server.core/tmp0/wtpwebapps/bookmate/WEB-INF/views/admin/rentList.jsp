<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>


<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<h4 class="text-center"><strong>대여현황</strong></h4>

<div class="row justify-content-center">
	<div class="col-8">
		<table class="table mt-4 text-center">
			<thead>
				<tr>
					<th scope="col">대여번호</th>
					<th scope="col">회원명</th>
					<th scope="col">도서명</th>
					<th scope="col">대여일자</th>
					<th scope="col">반납일자</th>
					<th scope="col">대여상태</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty list}">
						<c:forEach items="${list}" var="rent">
							<tr>
								<td>${rent.rentNo}</td>
								<td>${rent.userName}</td>
								<td>${rent.bookName}</td>
								<td><fmt:formatDate value="${rent.rentStartDate}" pattern="yyyy-MM-dd"/></td>
					     		<td><fmt:formatDate value="${rent.rentEndDate}" pattern="yyyy-MM-dd"/></td>
					     		<c:choose>
				    				<c:when test="${rent.rentStatus ==1}">
					      				<td style=color:blue;font-weight:bold>대여 중</td>
					      			</c:when>
									<c:otherwise>
					    				<td style=color:red;font-weight:bold>반납완료</td>
					    			</c:otherwise>
					    		</c:choose>
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