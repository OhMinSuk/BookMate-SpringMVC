<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

	<div class="row">
		<div class="col-3 mx-auto">
			<form action="/login" method="post">
				<h3 class="my-3 fw-normal text-center">로그인</h3>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="userId" name="userId" required>
					<label for="userId"><i class="bi bi-person-circle fs-5"></i> ID</label>
				</div>
				<div class="form-floating mb-3">
					<input type="password" class="form-control" id="userPw" name="userPw" required>
					<label for="userPw"><i class="bi bi-file-lock2-fill"></i> PW</label>
				</div>
				<button type="submit" class="w-100 btn btn-lg btn-primary">로그인</button>
			</form>
		</div>
	</div>

<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />