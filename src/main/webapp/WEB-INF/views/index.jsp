<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>껄리 - 마켓껄리</title>
</head>
<jsp:include page="./mainHeader.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<style>
  html,
  body {
    position: relative;
    height: 100%;
  }

  body {
    /* background: #eee; */
    /* font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
    font-size: 14px;
    color: rgb(255, 255, 255); */
    margin: 0;
    padding: 0;
  }

  #swiper-container {
    width: 100%;
    min-width: 1050px;
    height: 370px;
    object-fit: cover;
    background: #eee;
    font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
    font-size: 14px;
    color: rgb(255, 255, 255);
    margin: 0;
    padding: 0;
  }

  .swiper {
    width: 100%;
    height: 100%; 
  }

  .swiper-slide {
    text-align: center;
    font-size: 18px;
    background: rgb(255, 255, 255);

    /* Center slide text vertically */
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
  }

  .swiper-slide img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .swiper-pagination-fraction {
    left: 75%;
    position: absolute;
    color: rgb(255, 255, 255);
    background: rgba(0, 0, 0, 0.15);
    z-index: 10;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 55px;
    height: 23px;
    right: 109px;
    bottom: 20px;
    line-height: 23px;
    font-size: 14px;
    font-weight: bold;
    letter-spacing: 2px;
    border-radius: 12px;
  }

  .swiper-button-next,
  .swiper-button-prev {
    width: 50px;
    height: 50px;
    margin: -30px 300px;
    color: rgba(0, 0, 0, 0);
    display: block;
  }

  .swiper-button-next:after,
  .swiper-button-prev:after {
    position: absolute;
    top: 10px;
    bottom: 0px;
    /* right: 50%; */
    /* margin: auto -10px auto 10px; */
    z-index: 10;
    width: 50px;
    height: 50px;
    transition: all 0.5s ease 0s;
  }

  /* .swiper-button-prev:after { */
    #prev {
    margin: -10px 310px;
    background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTIiIGhlaWdodD0iNTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxIDEpIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxjaXJjbGUgZmlsbC1vcGFjaXR5PSIuMiIgZmlsbD0iIzAwMCIgY3g9IjI1IiBjeT0iMjUiIHI9IjI1Ii8+CiAgICAgICAgPHBhdGggZD0iTTIyLjI4NSAzMy42OTlhMSAxIDAgMCAwIDEuMzE5LjA5OGwuMDk1LS4wODIgOC03LjgxN2ExIDEgMCAwIDAgLjEwOC0xLjMwNmwtLjA4LS4wOTYtNy43MjMtOC4xODJhMSAxIDAgMCAwLTEuNTM1IDEuMjc2bC4wOC4wOTYgNy4wNDkgNy40NjktNy4yOTcgNy4xM2ExIDEgMCAwIDAtLjA5OCAxLjMxOWwuMDgyLjA5NXoiIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0ibm9uemVybyIvPgogICAgPC9nPgo8L3N2Zz4K") 20% 20% no-repeat;
    background-size: 45px;
    transform: rotate(180deg);
    opacity: 0;
  }
    #next {
    margin: -10px 310px;
    background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTIiIGhlaWdodD0iNTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxIDEpIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxjaXJjbGUgZmlsbC1vcGFjaXR5PSIuMiIgZmlsbD0iIzAwMCIgY3g9IjI1IiBjeT0iMjUiIHI9IjI1Ii8+CiAgICAgICAgPHBhdGggZD0iTTIyLjI4NSAzMy42OTlhMSAxIDAgMCAwIDEuMzE5LjA5OGwuMDk1LS4wODIgOC03LjgxN2ExIDEgMCAwIDAgLjEwOC0xLjMwNmwtLjA4LS4wOTYtNy43MjMtOC4xODJhMSAxIDAgMCAwLTEuNTM1IDEuMjc2bC4wOC4wOTYgNy4wNDkgNy40NjktNy4yOTcgNy4xM2ExIDEgMCAwIDAtLjA5OCAxLjMxOWwuMDgyLjA5NXoiIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0ibm9uemVybyIvPgogICAgPC9nPgo8L3N2Zz4K") 20% 20% no-repeat;
    background-size: 45px;
    opacity: 0;
  }

  .recommend-container {
    width: 1050px;
    margin: 0px auto;
    padding: 40px 0px;
  }

  .recommend {
    width: 100%;
    display: flex;
    justify-content: center;
    margin-top: 50px;
    margin-bottom: 15px;
    font-weight: bold;
    color: rgb(51, 51, 51);
    font-size: 28px;
    line-height: 1.15;
    letter-spacing: -0.26px;
  }

  .recommend-sub {
    font-size: 16px;
    font-weight: normal;
    line-height: 1.2;
    letter-spacing: -0.2px;
    text-align: center;
    color: rgb(153, 153, 153);
    margin-bottom: 30px;
  }

  .images {
    margin: 40px auto;
    /* width: 699px; */
  }

  .main-images-box {
    color: rgb(51, 51, 51);
    cursor: pointer;
    width: 255px;
    display: inline-block;
  }

  .image-container {
    flex-shrink: 0;
    width: 250px;
    position: relative;
    transition-property: transform;
    overflow: hidden;
    background-color: rgb(245, 245, 245);
  }

  .image-container img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: all 0.5s ease-in-out 0s;
    position: relative;
  }

  .product-function {
    width: 45px;
    right: 2px;
    bottom: 11px;
    z-index: 10;
    overflow: visible;
    background-color: transparent;
    border: none;
    position: absolute;
  }

  .product-function img {
    border: 0;
    vertical-align: top;
  }

  .product-info {
    position: relative;
    /* padding: 14px 10px 0px 0px; */
  }

  .product-name {
  	height : 42px;
    font-size: 15px;
    line-height: 1.45;
    font-weight: bold;
    color: rgba(46, 46, 46, 0.849);
    /* width: 200px; */
    margin-bottom: 3px;
    margin-top: 6px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    letter-spacing: -1px;
    word-break: break-word;
    overflow-wrap: break-word;
  }

  .content-row {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
  }

  .product-price {
    display: flex;
    flex-direction: column;
  }

  .discount-rate {
    font-size: 17px;
    font-weight: 800;
    line-height: 1.5;
    white-space: nowrap;
    margin-right: 5px;
    color: rgb(250, 98, 47);
  }

  .sales-price {
    font-size: 18px;
    font-weight: 800;
    line-height: 1.5;
    white-space: nowrap;
    color: rgb(51, 51, 51);
  }

  .dimmed-price {
    color: rgb(181, 181, 181);
    font-size: 15px;
    font-weight: bold;
    line-height: normal;
    text-decoration: line-through;
    margin-top: 2px;
  }

  .main-pop {
    width: 1050px;
    margin: 0px auto;
    padding: 30px 0px;
  }

  .main-pop-a {
    position: relative;
    display: block;
    overflow: hidden;
    height: 140px;
  }

  .main-pop-a img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

<body>
	<!-- Swiper -->
	<div id="swiper-container">

		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img class="main-banner-image"
						src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/27ebe68c-7dd7-472b-ac92-2b12e2ee675a.jpg"
						alt="main-banner-932">
				</div>
				<div class="swiper-slide">
					<img class="main-banner-image"
						src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/dbc42cdb-63ed-4655-899b-c4c5fe5fb5a8.jpg"
						alt="main-banner-889">
				</div>
				<div class="swiper-slide">
					<img class="main-banner-image"
						src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/0311abe3-6970-4eb1-ba5d-beedc6e5bbe5.jpg"
						alt="main-banner-929">
				</div>
				<div class="swiper-slide">
					<img class="main-banner-image"
						src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/f69e8e21-2119-429f-8721-72ecf4003120.jpg"
						alt="main-banner-703">
				</div>
				<div class="swiper-slide">
					<img class="main-banner-image"
						src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/77a3b012-b6f4-47b5-bd22-60951e68c278.jpg"
						alt="main-banner-933">
				</div>
				<div class="swiper-slide">
					<img class="main-banner-image"
						src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/7e896e40-574b-4050-a50f-7582a06c0754.jpg"
						alt="main-banner-388">
				</div>
				<div class="swiper-slide">
					<img class="main-banner-image"
						src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/bfc5b0eb-7129-4a35-9cdd-b5ef5dbbd7d9.jpg"
						alt="main-banner-864">
				</div>
			</div>
			<div class="swiper-button-next" id="next"></div>
			<div class="swiper-button-prev" id="prev"></div>
			<div class="swiper-pagination"></div>
		</div>

	</div>

	<div class="recommend-container">
		<span class="recommend">이 상품 어때요?</span>

		<div class="images">
		
			<!-- 상품 1 -->
			<c:forEach items="${prodList}" var="prod" begin="0" end="3">
			<div class="main-images-box">
				<div class="image-container">
					<img src="https://product-image.kurly.com/cdn-cgi/image/width=676,format=auto/product/image/0609129d-c63c-4206-bc22-a628d0606178.jpg" alt="상품 이미지" loading="lazy">
					<div>
						<button type="button" class="product-function"  id="prodNo${prod.prodNo }">
							<img
								src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
								alt="장바구니 아이콘">
						</button>
					</div>
				</div>
				<div class="product-info">
					<h3 class="product-name">${prod.prodNm }</h3>
					<div class="content-row">
						<div class="product-price">
							<div>
								<span class="sales-price">${prod.prodPrice }<span class="won">
										원</span></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			
		</div>


	</div>

	<div class="main-pop">
		<a href="https://www.kurly.com/main/beauty" class="main-pop-a"><img
			src="https://product-image.kurly.com/banner/random-band/pc/img/d7e0ff57-01c4-48e8-9c5c-033e43217ee3.jpg"
			alt=""></a>
	</div>

	<div class="recommend-container">
		<span class="recommend">1만원 미만 후기가 많은 상품</span>
		<p class="recommend-sub">최근 2주간 후기를 가장 많이 남겨주셨어요</p>

		<div class="images">
			<!-- 상품 1 -->
			<c:forEach items="${prodList}" var="prod" begin="4" end="7">
			<div class="main-images-box">
				<div class="image-container">
					<img src="https://product-image.kurly.com/cdn-cgi/image/width=676,format=auto/product/image/b63d74e4-96c1-49c2-beec-1ad651cd4901.jpg" alt="상품 이미지" loading="lazy">
					<div>
						<button type="button" class="product-function" id="prodNo${prod.prodNo }">
							<img
								src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
								alt="장바구니 아이콘">
						</button>
					</div>
				</div>
				<div class="product-info">
					<h3 class="product-name">${prod.prodNm }</h3>
					<div class="content-row">
						<div class="product-price">
							<div>
								<span class="sales-price">${prod.prodPrice }<span class="won">
										원</span></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>


	</div>

	<div class="main-pop">
		<a href="https://www.kurly.com/main/beauty" class="main-pop-a"><img
			src="https://product-image.kurly.com/banner/random-band/pc/img/16d8e884-ffe7-4089-ae7d-8d2e9197af63.jpg"
			alt=""></a>
	</div>

	<div class="recommend-container">
		<span class="recommend">고객 반응으로 입증된 신상품</span>
		<p class="recommend-sub">최근 한달 간 장바구니에 많이 담겼어요</p>

		<div class="images">
			<!-- 상품 1 -->
			<c:forEach items="${prodList}" var="prod" begin="8" end="11">
			<div class="main-images-box">
				<div class="image-container">
					<img src="https://product-image.kurly.com/cdn-cgi/image/width=676,format=auto/product/image/7d0689e9-367c-4239-ac22-bc2ea58b7682.jpg" alt="상품 이미지" loading="lazy">
					<div>
						<button type="button" class="product-function" id="prodNo${prod.prodNo }">
							<img
								src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
								alt="장바구니 아이콘">
						</button>
					</div>
				</div>
				<div class="product-info">
					<h3 class="product-name">${prod.prodNm }</h3>
					<div class="content-row">
						<div class="product-price">
							<div>
								<span class="sales-price">${prod.prodPrice }<span class="won">
										원</span></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>


	</div>

</body>
<script src="${pageContext.request.contextPath }/js/addCartModule.js"></script>
<script>

	$(function() {
		if(${sysCheck}){
			  $("#sysPage").show();
			  console.log($("#sysPage"));
		  } else {
			 $("#sysPage").hide();
		  }
	});

	var swiper = new Swiper(".mySwiper", {

		pagination : {
			el : ".swiper-pagination",
			type : "fraction",
		},
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
			hiddenClass : "swiper-button-hidden",
		},
		loop : true,
		autoplay : {
			delay : 3000,
		},

	});

	let next = document.getElementById("next");
	let prev = document.getElementById("prev")
	document.getElementById("swiper-container").addEventListener("mouseover",
			function() {
				next.style.opacity = 1;
				prev.style.opacity = 1;
			})
	document.getElementById("swiper-container").addEventListener("mouseleave",
			function() {
				next.style.opacity = 0;
				prev.style.opacity = 0;
			})
	

			
	/* $(function() {
		$(".product-function").on("click", function() {
			
			//localStorage.setItem("kkurlyNonMembersBasket", "prod-ex");
			//console.log("localstorage test btn");
			//console.log($(this).children("img").attr("src"));
			
			
			//let tmpId = $(this).children("img").attr("src");
			let tmpId = $(this).parent().prev().attr("src");
			
			let tmpData = {
					"prodNo" : tmpId,
					"prodQty" : "1"
			}
			let tmpArrayStr = new Array();
			
			if (localStorage.getItem('kkurlyNonMembersBasket') == null) {
				tmpArrayStr.push(tmpData);
				//tmpArrayStr.push(tmpData);
				localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
			} else {
				let tmpLocalStorage = localStorage.getItem('kkurlyNonMembersBasket');
				
				
				
				tmpArrayStr = JSON.parse(tmpLocalStorage);
				//if (hasDuplicate(tmpArrayStr, "prodNo") == true) return;
				// 장바구니 중복 확인 
				for (let tmp of tmpArrayStr) {
					//console.log(tmp.prodNo);
					if (tmp.prodNo === tmpData.prodNo) return;
				}
				//console.log(tmpArrayStr);
				
				tmpArrayStr.push(tmpData);
				
				//console.log(tmpArrayStr);
				
				localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
			}
			
			 
			 
			/* 
			console.log("json test");
			let tmpJson = {
				"prodNo" : $(this).children("img").attr("src"),
				"prodQty" : "4"
			};
			let tmpJsonArray = [];
			tmpJsonArray.push(tmpJson);
			tmpJson = {
					"prodNo" : "a",
					"prodQty" : "4"
			};
			tmpJsonArray.push(tmpJson);
			tmpJson = {
					"prodNo" : "b",
					"prodQty" : "4"
			};
			tmpJsonArray.push(tmpJson);
			tmpJson = {
					"prodNo" : "c",
					"prodQty" : "4"
			};
			tmpJsonArray.push(tmpJson);
			tmpJsonArray.push(tmpJson);
			
			console.log(tmpJsonArray);
			
			let map = new Map();
			for (let i = 0; i < tmpJsonArray.length; i++) {
				map.set(tmpJsonArray[i].prodNo, tmpJsonArray[i].prodQty);
			}
			console.log(map);
			
			//let str = JSON.stringify(Array.from(map.entries()));
			//let str = JSON.stringify(map.entries());
			let str = JSON.stringify(Object.fromEntries(map));
			
			console.log(str);
			 
		})
	}); 
	 */
	/* const hasDuplicate = (arrayObj, colName) => {
		   var hash = Object.create(null);
		   return arrayObj.some((arr) => {
		      return arr[colName] && (hash[arr[colName]] || !(hash[arr[colName]] = true));
		   });
		};  */
</script>
<jsp:include page="./mainFooter.jsp"></jsp:include>
</html>

