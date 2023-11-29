<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>BookMate</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<link rel="stylesheet" href="resources/custom/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/custom/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="/resources/custom/css/custom.css">
</head>
<body>
	<c:if test="${NoHaveSession}">
		<script>
			alert("로그인 후 이용할 수 있습니다.");
		</script>
	</c:if>
	
	<c:if test="${logout_success}">
		<script>
			alert("로그아웃 되었습니다.");
		</script>
	</c:if>
	
	<c:if test="${msg}">
		<script>
			alert("${alert}");
		</script>
	</c:if>
	
	<c:if test="${loginInvalid}">
		<script>
			alert("아이디와 비밀번호를 다시 확인해주세요.")
		</script>
	</c:if>

	<div class="container mt-4">
		<header id="header">
			<div id="logo" class="mb-3">
				<a href="/" title="Home">
					<img src="/resources/images/logo.png" alt="LOGO">
				</a>
			</div>
			<ul class="nav justify-content-end">
				<c:choose>
					<c:when test='${not empty sessionScope.user_name}'>
						<li class="nav-item">
							<span class="nav-link text-black fs-5"><b>${sessionScope.user_name}</b> 님 반갑습니다.</span>
						</li>			
						<c:if test="${sessionScope.user_level ne 1}">
							<li class="nav-item">
						  		<a class="nav-link fs-5" href="/mypage"><i class="bi bi-person-workspace fs-5 text-black"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-black fs-5" href="/logout">로그아웃</a>
							</li>
						</c:if>	
						<c:if test="${sessionScope.user_level eq 1}">
							<li class="nav-item">
								<a class="nav-link" href="/admin"><i class="bi bi-person-fill-gear fs-5 "></i></a>
							</li>
						</c:if>
					</c:when>
					<c:otherwise>
						<li class="nav-item">
						  <a class="nav-link" href="/login">로그인</a>
						</li>
						<li class="nav-item">
						  <a class="nav-link" href="/register">회원가입</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
			<nav class="row w-100 py-2 m-0" style="background-color:#f6e8d6; border:2px solid #333;">
				<div class="col-3 text-center">
					<a href="/book" class="text-decoration-none text-black fw-bold fs-4">도서 목록</a>
				</div>
				<div class="col-3 text-center">
					<a href="/book/hope" class="text-decoration-none text-black fw-bold fs-4">도서 신청</a>
				</div>
				<div class="col-3 text-center">
					<a href="/board" class="text-decoration-none text-black fw-bold fs-4">자유게시판</a>
				</div>
				<div class="col-3 text-center">
					<a href="/notice" class="text-decoration-none text-black fw-bold fs-4">공지사항</a>
				</div>
			</nav>
		</header>