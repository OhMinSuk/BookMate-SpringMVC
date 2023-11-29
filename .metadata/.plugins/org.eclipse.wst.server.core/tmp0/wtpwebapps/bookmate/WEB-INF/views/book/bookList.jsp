<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

<h4 class="text-center mt-3 fw-bold">도서목록</h4>
<div class="row">
	<div class="col-2">
		<ul class="nav flex-column rounded shadow-sm text-center">
			<li class="nav-item">
				<a class="nav-link" href="/book">전체</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/book?bookGenre=경제경영">경제경영</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/book?bookGenre=자기계발">자기계발</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/book?bookGenre=소설">소설</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/book?bookGenre=외국어">국어/외국어</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/book?bookGenre=IT">IT/프로그래밍</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/book?bookGenre=여행">여행/취미</a>
			</li>
		</ul>
	</div>
	<div class="col-10">
		<table class="table mt-3 text-center">
			<thead>
				<tr>
					<th scope="col" style=font-weight:bold;color:blue >도서명</th>
					<th scope="col" style=font-weight:bold;color:blue >저자</th>
					<th scope="col" style=font-weight:bold;color:blue >장르</th>
					<th scope="col" style=font-weight:bold;color:blue >출판사</th>
					
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${!empty bookList}">
						<c:forEach items="${bookList}" var="book">
							<tr>
								<td><strong><a href='/readBook?bookNo=${book.bookNo}' style=color:black;text-decoration:none>${book.bookName}</a></strong></td>
								<td>${book.bookAuthor}</td>
								<td>${book.bookGenre}</td>
								<td>${book.bookPublisher}</td>
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
	</div>
</div>

<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />