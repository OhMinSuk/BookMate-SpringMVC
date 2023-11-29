<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<jsp:include page="/WEB-INF/views/header.jsp" flush="flase" />

<div class="mt-4">
	<div class="form-group">
		<span>제목</span>
		<span class="board_writer" style="float:right">작성자: <c:out value="${board.userName}"/></span>
		<p class="form-control">${board.boardTitle}</p>
	</div>
	<div class="form-group">
		<span>내용</span>
		<p class="form-control" style="min-height:150px;">${board.boardContent}</p>
	</div>		
	<div class="card mt-4">
		<div class="card-header">
			댓글 <span class="fw-bold"><c:out value="${count}"/></span>
		</div>
		<div class="card-body">
			<c:if test="${!empty comment}">
				<c:forEach items="${comment}" var="cmt">
					<div class="border-bottom py-3">
						<h6 class="fw-bold">${cmt.userName} <span class="fw-normal"><fmt:formatDate value="${cmt.commentDate}" pattern="yyyy-MM-dd-hh-mm-ss"/></span></h6>
						<p class="m-0 mt-3">${cmt.commentContent}</p>
					</div>
				</c:forEach>
			</c:if>
		</div>
		<div class="card-footer">
			<form method="post" action="/comment/write">
			    <input type="hidden" name="boardNo" value="${board.boardNo}">
			    <div class="row justify-content-center">
			    	<div class="col-11 pe-0">
				        <input type="text" class="form-control" name="commentContent" placeholder="댓글을 입력해주세요." required>
			    	</div>
			    	<div class="col-1 ps-0">
				        <button type="submit" class="btn btn-primary w-100">작성</button>
			    	</div>
			    </div>
			</form>
		</div>
	</div>
</div>
<button type="button" class="btn btn-sm btn-primary mt-2 float-end" onclick="link('/board')">목록</button>

<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />