<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

  <section class="py-2 container">
    <div class="row py-lg-3">
      <div class="col-lg-6 col-md-8 mx-auto text-center">
        <h1 class="fw-b">Book Mate에 오신걸 환영합니다</h1>
        <p class="lead text-muted">쉽게 어디서든 이용 가능한 온라인 도서 대여 시스템입니다</p>
	        <p>
	          <a href="/mypage" class="btn btn-primary my-2">내 서재 바로가기</a>
	          <a href="/book" class="btn btn-secondary my-2">도서 대여하기</a>
	        </p>
      </div>
    </div>
  
  <h4 class=" text-info fw-b">NEW</h4>
  	<div class="position-relative">
	  	<div class="owl-carousel owl-theme px-5">
			<c:if test="${!empty newBook}">
				<c:forEach items="${newBook}" var="nb">
					<div class="item">
						<a href='/readBook?bookNo=${nb.bookNo}' class="item">
						<img src="/resources/uploadFiles/${nb.bookImage }" />
				        </a>
					</div>
				</c:forEach>
			</c:if>
	    </div>
    	<div class="owl-carousel-prev position-absolute start-0 top-50 translate-middle-y" style="z-index:1000;">
    		<i class="bi bi-caret-left-fill text-warning fs-2" style="cursor:pointer"></i>
    	</div>
    	<div class="owl-carousel-next position-absolute end-0 top-50 translate-middle-y" style="z-index:1000;">
    		<i class="bi bi-caret-right-fill text-warning fs-2" style="cursor:pointer"></i>
    	</div>
  	</div>
	<h4 class="text-danger fw-b">BEST TOP5</h4>
	    <div class="owl-carousel owl-theme d-block">
			<c:if test="${!empty bestBook}">
				<c:forEach items="${bestBook}" var="bb">
					<div class="item">
						<a href='/readBook?bookNo=${bb.bookNo}' class="item">
							<img src="/resources/uploadFiles/${bb.bookImage }" />
				        </a>
					</div>
				</c:forEach>
			</c:if>
	    </div>
</section>
<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />