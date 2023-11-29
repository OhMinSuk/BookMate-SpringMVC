<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />


	<h4 class="fw-bold text-center mt-3">공지사항</h4>
	
	<div class="mt-4">
		<div class="form-group">
			<span>제목</span>
			<span class="float-end">작성일: <c:out value="${noticeVO.noticeDate}"/></span>
			<p class="form-control">${noticeVO.noticeTitle}</p>
		</div>
		<div class="form-group">
			<span>내용</span>
			<p class="form-control" style="min-height:150px;">${noticeVO.noticeContent}</p>
		</div>		
	</div>
	<button type="button" class="btn btn-sm btn-primary float-end" onclick="link('/notice')">목록</button>

<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />