<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<c:if test="${logout_success}">
	<script>
		alert("로그아웃 되었습니다.");
	</script>
</c:if>

<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<div class="text-center">
	<img src="/resources/images/admin_main_image.jpg" class="img-fluid" alt="관리자 메인페이지 이미지" title="관리자 메인페이지 이미지">
</div>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />