<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<!-- <script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

   #body{background-color: gray; padding-left: 5%;}
   #container{width: 1300px; background-color: white;
    padding: 30px;
    border-radius: 10px;
    }
    h3{text-align: center;}
    .checkbox{margin-left: 100px;}
    .checkbox1{margin-left: 250px}
    .checkbox2{margin-left: 150px}
    #search{margin-left: 200px; height: 30px;}
    table{border: 1px solid black;border-collapse: collapse;}
    th,td{border: 1px solid black;text-align: center ;}
    td{height: 150px;height: 150px;}
	a{text-decoration: none;   color: black;}
</style>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
   
   	<h3>상품 목록</h3>
   	<button type="button" id="btnAsc">날짜순</button>
   	<table border="1" width="500px">
   		<tr>
   			<th>상품 번호</th>
   			<th>상품명</th>
   			<th>가격</th>
   			<th>등록일</th>
   		</tr>
   		<c:forEach var="row" items="${lookuplist }">
   		<tr align="center">
   		<td><
   	</table>
</body>
</html> --%>