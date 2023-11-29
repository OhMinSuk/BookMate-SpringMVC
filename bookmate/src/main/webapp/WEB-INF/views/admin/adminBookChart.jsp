<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<div class="row">
	<div class="col-lg-6">
		<h4 class="fw-bold text-center">장르별 도서 현황</h4>
		<canvas id="genreChart" class="w-100"></canvas>
	</div>
	
	<div class="col-lg-6">
		<h4 class="mt-5 fw-bold text-center">누적 대여 횟수 TOP5</h4>
		<canvas id="rentChart" class="w-100" style="height:400px" ></canvas>
	</div>
</div>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />