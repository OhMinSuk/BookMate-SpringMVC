<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<c:if test="${no_have_session}">
	<script>
		alert("로그인 후 이용할 수 있는 서비스입니다.");
		document.location.href = "/login";
	</script>
</c:if>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

<div class="row justify-content-center mt-5">
	<div class="col-3">
		<form action="/book/hope" method="post">
			<h2 class="text-center mb-5">희망도서 신청</h2>
			<div class="row align-items-center mt-3">
				<div class="col-4 text-end">
					<label class="form-label">도서명: </label>
				</div>
				<div class="col-8">
					<input type="text" name="hopeName" class="form-control" required>
				</div>
			</div>
			<div class="row align-items-center mt-3">
				<div class="col-4 text-end">
					<label class="form-label">ISBN: </label>
				</div>
				<div class="col-8">
					<input type="text" name="hopeISBN" class="form-control" required>
				</div>
			</div>
			<div class="text-center mt-3">
				<button type="submit" class="btn btn-lg btn-primary">신청</button>
			</div>
		</form>
	</div>
</div>


<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />