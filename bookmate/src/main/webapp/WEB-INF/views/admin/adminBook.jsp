<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<c:if test="${add_success}">
	<script>
		alert("도서가 정상적으로 등록되었습니다.");
	</script>
</c:if>

<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

	<h4 class="text-center"><strong>도서목록</strong></h4>
	<table class="table mt-4 text-center">
		<thead>
			<tr>
				<th scope="col">도서 번호</th>
				<th scope="col">도서명</th>
				<th scope="col">저자</th>
				<th scope="col">출판사</th>
				<th scope="col">장르</th>
				<th scope="col">ISBN</th>
	
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${!empty bookList}">
					<c:forEach items="${bookList}" var="book">
						<tr>
							<td>${book.bookNo}</td>
							<td>${book.bookName}</td>
							<td>${book.bookAuthor}</td>
							<td>${book.bookPublisher}</td>
							<td>${book.bookGenre}</td>
							<td>${book.bookISBN}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5">도서가 존재하지 않습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<button type="button" class="btn btn-sm btn-primary mt-3 float-end" onclick="link('/admin/addBook')">도서등록</button>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />