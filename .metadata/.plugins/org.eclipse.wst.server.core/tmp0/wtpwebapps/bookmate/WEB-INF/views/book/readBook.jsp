<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />


<div class="w-75 mx-auto">
	<div class="bg-white rounded shadow-sm mt-5 p-3">
		<div class="row">
			<div class="col-4">
				<div class="d-flex h-100 align-items-center">
					<img src="/resources/uploadFiles/${bookVO.bookImage}" class="w-100 rounded-4" />
				</div>
			</div>
			<div class="col-8">
				<h2 class="text-center fw-bold text-wrap border-bottom pb-3">[<c:out value="${bookVO.bookGenre}" />]<c:out value="${bookVO.bookName}" /></h2>
				<div class="text-center fs-5 border-bottom py-5">
					<p>저자: <span class="fw-bold"><c:out value="${bookVO.bookAuthor}"/></span></p>
					<p>출판사: <span class="fw-bold"><c:out value="${bookVO.bookPublisher}"/></span></p>
					<p>ISBN: <c:out value="${bookVO.bookISBN}"/></p>
				</div>
				<div class="text-center my-4">
					<form action="/rentBook" method="post">
						<input type="hidden" name="bookNo" value="${bookVO.bookNo}">
						<button type="submit" class="btn btn-lg fw-bold text-white px-5" style="background-color:#784400">대출하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="mt-3 text-end">
		<button type="button" class="btn btn-sm btn-warning" onclick="location.href='/bookList'">목록</button>
	</div>
</div>

<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />