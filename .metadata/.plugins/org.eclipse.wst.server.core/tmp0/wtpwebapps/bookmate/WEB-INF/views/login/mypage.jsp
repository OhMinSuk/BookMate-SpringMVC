<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />
	
	<h3 class="fw-bold text-center mt-4">마이페이지</h3>
	<table class="table table-bordered border-dark text-center mt-4">
	  <thead>
	    <tr>
	      <th scope="col">대여상태</th>
	      <th scope="col">도서명</th>
	      <th scope="col">대여일자</th>
	      <th scope="col">반납일자</th>
	      <th scope="col">연장하기</th>
	      <th scope="col">반납하기</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:choose>
	  		<c:when test="${!empty list }">
	  			<c:forEach items="${list }" var="rent">
				    <tr>
				    <c:choose>
				    	<c:when test="${rent.rentStatus ==1}">
					      <td style=color:blue;font-weight:bold>대여 중</td>
					      <td>${rent.bookName}</td>
					      <td><fmt:formatDate value="${rent.rentStartDate}" pattern="yyyy-MM-dd"/></td>
					      <td><fmt:formatDate value="${rent.rentEndDate}" pattern="yyyy-MM-dd"/></td>
					      <td>
					     	<form action="/extendBook" method="post">
					      		<input type="hidden" name="rentNo" value="${rent.rentNo}">
					      		<input type="hidden" name="rentExtend" value="${rent.rentExtend}">
					      		<button type="submit" class="btn btn-secondary btn-sm">연장</button>
					      	</form>	
					      </td>
					      <td>
					      	<form action="/returnBook" method="post">
					      		<input type="hidden" name="rentNo" value="${rent.rentNo}">
					      		<button type="submit" class="btn btn-warning btn-sm">반납</button>
					      	</form>
					      </td>
				    	</c:when>
				    <c:otherwise>
					    <td style=color:red;font-weight:bold>반납완료</td>
					    <td>${rent.bookName}</td>
					    <td><fmt:formatDate value="${rent.rentStartDate}" pattern="yyyy-MM-dd"/></td>
					    <td><fmt:formatDate value="${rent.rentEndDate}" pattern="yyyy-MM-dd"/></td>
					    <td colspan="2" style="background-color: gray"></td>
				    </c:otherwise>
				 	</c:choose>
				    </tr>
	    		</c:forEach>
	    	</c:when>
	    	<c:otherwise>
	    		<tr>
	    			<td colspan="6">대여내역이 존재하지 않습니다</td>
	    		</tr>
	    	</c:otherwise>
	    </c:choose>
	  </tbody>
	</table>
<jsp:include page="/WEB-INF/views/script.jsp" flush="false" />
