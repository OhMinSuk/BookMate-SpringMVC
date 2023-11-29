<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>BookMate</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/resources/custom/css/sidebars.css">
	<link rel="stylesheet" href="/resources/custom/css/custom.css">
	
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="flex-shrink-0 p-3 col-auto border-start border-end" style="height:100vh">
			    <ul class="list-unstyled ps-0 pt-3">
			      <li class="mb-1">
			        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
			          회원관리
			        </button>
			        <div class="collapse show" id="home-collapse">
			          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li><a href="/admin/userList" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">회원목록</a></li>
			            <li><a href="/admin/hopeBook" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">신청도서</a></li>
			          </ul>
			        </div>
			      </li>
			      <li class="mb-1">
			        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="true">
			          도서관리
			        </button>
			        <div class="collapse show" id="dashboard-collapse" style="">
			          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li><a href="/admin/adminBook" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">도서목록</a></li>
			            <li><a href="/admin/adminBookChart" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">도서통계</a></li>
			          </ul>
			        </div>
			      </li>
			      <li class="mb-1">
			        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="true">
			          대여관리
			        </button>
			        <div class="collapse show" id="orders-collapse" style="">
			          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li><a href="/admin/rentList" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">대여현황</a></li>
			            <li><a href="/admin/adminRentChart" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">대여통계</a></li>
			          </ul>
			        </div>
			      </li>
			      <li class="mb-1">
			        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0" data-bs-toggle="collapse" data-bs-target="#notice-collapse" aria-expanded="true" >
			          공지관리
			        </button>
			        <div class="collapse show" id="notice-collapse" style="">
			          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li><a href="/admin/adminNotice" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">공지사항</a></li>
			            <li><a href="/admin/writeNotice" class="link-body-emphasis d-inline-flex text-decoration-none rounded text-dark">공지등록</a></li>
			          </ul>
			        </div>
			      </li>
			      <li class="border-top my-3"></li>
			      <li class="mb-1">
			        <a href="/admin/adminBoard" class="btn btn-toggle d-inline-flex align-items-center rounded border-0">자유게시판</a>
			      </li>
			    </ul>
			  </div>
			  <div class="col">
			  	<div class="container">
				  	<div id="logo" class="mt-4">
						<a href="/admin" title="Home">
							<img src="/resources/images/logo.png" alt="LOGO">
						</a>
					</div>
					<ul class="nav justify-content-end mb-3">
						<c:choose>
							<c:when test='${not empty sessionScope.user_name}'>
								<li class="nav-item">
									<span class="nav-link text-black"><b>${sessionScope.user_name}</b> 님 반갑습니다.</span>
								</li>
								<li class="nav-item">
									<a class="nav-link text-black" href="/logout">로그아웃</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="/"><i class="bi bi-house-fill text-dark fs-6"></i></a>
								</li>														
							</c:when>
						</c:choose>
					</ul>
			  