<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />


<h4 class="text-center fw-bold">도서등록</h4>
<form class="center" action="/admin/addBook" method="post" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-3 mx-auto"><br><br>	
			<div class="mb-3">
			  <label for="bookName" class="form-label">도서명</label>
			  <input type="text" class="form-control" id="bookName" name="bookName" required>
			</div>
		
			<div class="mb-3">
			  <label for="bookGenre" class="form-label">장르</label>
			  <select name="bookGenre" class="form-select" required>
			  	<option value="" disabled selected>장르 선택</option>
			  	<option value="경제경영">경제경영</option>
			  	<option value="자기계발">자기계발</option>
			  	<option value="소설">소설</option>
			  	<option value="외국어">외국어</option>
			  	<option value="여행">여행</option>
			  	<option value="IT">IT</option> 	
			  </select>
			</div>	
			<div class="mb-3">
			  <label for="bookPublisher" class="form-label">출판사</label>
			  <input type="text" class="form-control" id="bookPublisher" name="bookPublisher" required>
			</div>
		
			<div class="mb-3">
			  <label for="bookAuthor" class="form-label">저자</label>
			  <input type="text" class="form-control" id="bookAuthor" name="bookAuthor" required>
			</div>
		
			<div class="mb-3">
			  <label for="bookISBN" class="form-label">ISBN</label>
			  <input type="text" class="form-control" id="bookISBN" name="bookISBN" required>
			</div>
			
			<div class="mb-3">
			  <label for="bookFile" class="form-label">이미지</label>
			  <input type="file" class="form-control" id="bookFile" name="bookFile" required>
			</div>			
			
			
			<div class="text-center">
			  <button type="submit" class="btn btn-lg btn-primary">등록</button>
			</div>
		</div>
	</div>
</form>

<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />