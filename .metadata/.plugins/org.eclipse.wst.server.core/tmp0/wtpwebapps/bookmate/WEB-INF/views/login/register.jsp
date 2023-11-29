<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />
	<div class="row">
		<div class="col-md-3 mx-auto"><br><br>
		  <h4 class="mb-3 text-center">회원가입</h4>
		  <form action="/register" method="post">
			<div class="mb-3">
			  <label for="userId" class="form-label">아이디</label>
			  <input type="text" class="form-control" id="userId" name="userId" required>
			</div>
		
			<div class="mb-3">
			  <label for="userPw" class="form-label">비밀번호</label>
			  <input type="password" class="form-control" id="userPw" name="userPw" required>
			</div>
		
			<div class="mb-3">
			  <label for="userName" class="form-label">이름</label>
			  <input type="text" class="form-control" id="userName" name="userName" required>
			</div>
		
			<div class="mb-3">
			  <label for="userDate" class="form-label">생년월일</label>
			  <input type="date" class="form-control" id="userDate" name="userDate" required>
			</div>
		
			<div class="mb-5">
			  <label for="male" class="form-label">성별</label>
			  <div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="userGender" id="male" value="남자">
				  <label class="form-check-label" for="male">남자</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="userGender" id="female" value="여자">
				  <label class="form-check-label" for="female">여자</label>
				</div>
			  </div>
			</div>
			
			<div class="text-center">
			  <button type="submit" class="btn btn-lg btn-primary">회원가입</button>
			</div>
		  </form>
		</div>
	</div>
	
	<script>
		/* check에 no 가 들어왔을 경우 처리 */
		/* 유효값 인증 검사 - > 비밀번호 확인, 아이디 중복확인 등등 */
	</script>
<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />
