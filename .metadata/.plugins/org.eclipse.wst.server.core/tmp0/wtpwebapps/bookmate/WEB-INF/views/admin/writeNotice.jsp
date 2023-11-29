<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<jsp:include page="/WEB-INF/views/admin/header.jsp" flush="false" />

<h4 class="text-center"><strong>공지등록</strong></h4>

<body>
    <form class="center" method="post">
    
        <div class="mb-3">
        
              <label for="title">제목</label>
            <input type="text" class="form-control" name="noticeTitle" placeholder="제목을 입력하세요." required>
            
        </div>
        
        <div class="mb-3">
            <label for="content">내용</label>
            <textarea class="form-control" rows="13" name="noticeContent" id="noticeContent" placeholder="내용을 입력해 주세요" required ></textarea>
        </div>
        
        <div>
        	<button type="submit" class="btn btn-primary" style="float:right;">등록</button>
        </div>
        
    </form>
</body>


<jsp:include page="/WEB-INF/views/admin/script.jsp" flush="false" />