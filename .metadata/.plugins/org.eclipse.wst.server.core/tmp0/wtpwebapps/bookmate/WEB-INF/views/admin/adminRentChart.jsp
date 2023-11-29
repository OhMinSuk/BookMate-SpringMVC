<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<html xmlns:th="http://www.thymeleaf.org">

<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<div class="row">
	<div class="col-lg-6">
		<h4 class="mt-3 fw-bold text-center">이달의 대여 횟수 TOP5 회원</h4>
		<p class="text-center">기간 : ${firstDayOfMonth} ~ ${now}</p>
		<canvas id="dateChart" class="w-100"></canvas>
	</div>
	
	<div class="col-lg-6">
		<h4 class="mt-2 fw-bold text-center">장르별 성별 대여 현황</h4>
		<canvas id="genderChart" class="w-100" style="height:400px"></canvas>
	</div>
	
</div>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />