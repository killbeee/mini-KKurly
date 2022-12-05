<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>껄리</title>
</head>
<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
<style>
#container {
	width: 1050px;
	margin: 0px auto;
}

#categori {
	margin-top: 50px;
	font-weight: 500;
	font-size: 28px;
	color: rgb(51, 51, 51);
	line-height: 35px;
	letter-spacing: -1px;
	text-align: center;
}

.cg-nav {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	padding-bottom: 20px;
	line-height: 20px;
}

.cg-nav-total {
	font-size: 14px;
	font-weight: 500;
	color: rgb(51, 51, 51);
}

.cg-nav-ul {
	position: relative;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

.cg-nav-li {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: end;
	justify-content: flex-end;
	margin-left: 8px;
	font-size: 14px;
	color: rgb(153, 153, 153);
}

.cg-nav-li>a {
	text-decoration: none;
	color: rgb(51, 51, 51);
}

.cg-img {
	display: grid;
	grid-template-columns: repeat(auto-fill, 249px);
	gap: 24px 18px;
	width: 100%;
}

.cg-img-a {
	display: flex;
	flex-direction: column;
	height: 538px;
	color: rgb(51, 51, 51);
	cursor: pointer;
	text-decoration: none;
}

.cg-img-div-sub {
	overflow: hidden;
	position: relative;
	background-color: rgb(245, 245, 245);
	width: 249px;
	height: 320px;
}

.cg-img-div-sub>img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	transition: all 0.5s ease-in-out 0s;
}

.cg-img-cart {
	position: absolute;
	right: 16px;
	bottom: 16px;
	background-color: rgba(240, 248, 255, 0);
	border: 0px;
}

.cg-img-text-div {
	padding: 14px 10px 0px 0px;
}

.cg-img-text-box {
	display: block;
	padding-bottom: 2px;
}

.cg-img-text1 {
	font-size: 14px;
	color: rgb(153, 153, 153);
	line-height: 19px;
	letter-spacing: -0.5px;
}

.cg-img-text2 {
	max-height: 58px;
	margin-bottom: 8px;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: normal;
	display: -webkit-box;
	overflow: hidden;
	word-break: break-all;
	white-space: normal;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.cg-img-text3 {
	display: flex;
	flex-direction: column;
}

.cg-img-price {
	font-weight: 800;
	font-size: 16px;
	line-height: 24px;
	white-space: nowrap;
	letter-spacing: -0.5px;
}

.cg-img-title {
	padding-top: 12px;
	font-size: 12px;
	color: rgb(153, 153, 153);
	line-height: 18px;
	letter-spacing: normal;
	display: -webkit-box;
	overflow: hidden;
	word-break: break-all;
	white-space: normal;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}
</style>

<body>
	<div id="container">

		<h3 id="categori" name="categori">채소</h3>

		<div class="cg-nav">
			<div class="cg-nav-total">총 ${cnt}건</div>
			<ul class="cg-nav-ul">
				<li class="cg-nav-li"><a href="/" class="cg-nav-recommend">추천순</a>
				</li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">신상품순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">판매량순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">혜택순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">낮은
						가격순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">높은
						가격순</a></li>
			</ul>
		</div>

		<div class="cg-img">
		
		<c:forEach items="${prodList}" var="prod">
			<a href="/goods/5031369" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1597052755228l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">${prod.prodNm }</span>
					<div class="cg-img-text3">
						<div></div>
						<span class="cg-img-price">${prod.prodPrice }<span class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">기도메타 가보자고</p>
					<input type="hidden" value="${prod.prodNo }">
				</div>
			</a>
		</c:forEach>
		
			<a href="/goods/5031369" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1597052755228l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">[달콘] 초당옥수수 (레토르트) 1입</span>
					<div class="cg-img-text3">
						<div></div>
						<span class="cg-img-price">3,690<span class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">간단히 데워 즐기는 달콤 옥수수</p>
				</div>
			</a>
		</div>

	</div>
</body>
<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
</html>