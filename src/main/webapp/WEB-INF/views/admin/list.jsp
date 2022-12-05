<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 구현</title>
</head>
<body>
   <jsp:include page="/header_admin.jsp"></jsp:include>
   <h3>상품 목록</h3>
   
   <table>
   	<thead>
   		<tr>
			<th>상품 번호</th>
   			<th>상품명</th>
   			<th>카테고리</th>
   			<th>가격</th>
   			<th>등록일</th>
   		</tr>
   	</thead>
   	<tbody>
   		<%-- <c:forEach items="${ }"var="">
   		<tr>
   			<td>${ }</td>
   	 --%>
   	</tbody>
   
   
   </table>


</body>
</html>