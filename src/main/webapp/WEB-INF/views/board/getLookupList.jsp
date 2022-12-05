<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<style>
	footer {
		display: flex;
		justify-content : center;
		align-items: center;
		background : skyblue;
		margin-top: 30px;
	}
</style>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath }/header.jsp"></jsp:include>
	<div class="container">
		<h3>상품</h3>
	<form id="searchForm" action="/board/getBoardList.do" method="post">
	
		<ul>
			<li><a href="">상온</a></li>
				<ul>
					<li a href="">상온 내 하위카테고리</li>
					<li a href="">상온 내 하위카테고리</li>					
				</ul><br>
			<li><a href="">냉장</a></li><br>
			<li><a href="">냉동</a></li><br>
			<li><a href="">단순변심</a></li><br>
			<li><a href="">파손</a></li><br>
			<li><a href="">배송오류</a></li><br>
			<li><a href="">배송문의</a></li><br>
			<li><a href="">기타</a></li>
		</ul>
	</div>
</body>
</html>