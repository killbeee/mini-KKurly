<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Document</title>
</head>
<style>
/* html,
  button,
  input,
  select,
  textarea {
    font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
  } */
nav {
	margin: 0;
	min-width: 1050px;
	letter-spacing: -0.3px;
	background-color: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0.07) 0px 3px 4px 0px;
	width: 100%;
	z-index: 10;
	height: 150px;
	/* position: fixed; */
}
#sysPage {
	display:none;
}
.nav-top {
	position: relative;
	width: 1050px;
	height: 100px;
	margin: 0px auto;
	letter-spacing: -0.3px;
}

#nav-login {
	position: absolute;
	right: 0px;
	top: 0px;
	z-index: 20;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 11.3px;
	te
}

.nav-login {
	display: block;
	/* color: rgb(95, 0, 128); */
	cursor: pointer;
	padding: 3px 10px;
	font-weight: bold;
	color: #333333;
    text-decoration: none;
}


.nav-login-down {
	width: 8px;
	height: 5px;
	background-image:
		url("https://res.kurly.com/pc/ico/1908/ico_down_16x10.png");
	background-size: cover;
	background-position: center center;
	display: inline-block;
	/* margin-left: 3px; */
	margin-bottom: 1px;
}

#nav-headerMain {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	/* height: 63px; */
	padding-top: 30px;
}

#nav-search {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	position: absolute;
	left: 325px;
	/* top: -55px; */
	width: 390px;
	height: 48px;
	padding-left: 14px;
	border: 1px solid rgb(95, 0, 128);
	border-radius: 6px;
	background-color: rgb(255, 255, 255);
	box-shadow: rgb(247, 247, 247) 0px 0px 0px 1px inset;
}

.nav-search-input {
	width: 300px;
	background-color: inherit;
	border: none;
	outline: none;
	font-size: 14px;
	font-weight: bold;
	letter-spacing: -0.33px;
	color: #333;
	opacity: 0.8;
}

.nav-search-icon {
	position: relative;
	width: 30px;
	height: 30px;
	margin: 10px;
	bottom: 3px;
	background:
		url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0ibm9uZSIgZD0iTTAgMGgzNnYzNkgweiIvPgogICAgICAgIDxnIHN0cm9rZT0iIzVGMDA4MCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNyI+CiAgICAgICAgICAgIDxwYXRoIGQ9Im0yNi4wODEgMjYuMDgxLTQuMTItNC4xMk0xNi40NjcgMjMuMzM0YTYuODY3IDYuODY3IDAgMSAwIDAtMTMuNzM0IDYuODY3IDYuODY3IDAgMCAwIDAgMTMuNzM0eiIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==")
		0px 0px no-repeat;
	border: 0px;
	cursor : pointer;
}

#main_txt {
	font-weight: bold;
	color: rgb(95, 0, 128);
	flex-shrink: 0;
	margin-left: 20px;
	margin-right: 20px;
	font-size: 20px;
	line-height: 1.33;
	letter-spacing: normal;
	cursor: pointer;
}

#nav-icon {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	position: absolute;
	right: -6px;
	/* top: -49px; */
}

.icon-adr {
	width: 36px;
	height: 36px;
	margin-right: 20px;
	background:
		url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTM2IDM2SDBWMGgzNnoiLz4KICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSg4LjcgNikiIHN0cm9rZT0iIzMzMyIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjciPgogICAgICAgICAgICA8cGF0aCBkPSJNOS4zMDYgMjRTMCAxNi41NDQgMCA5LjMwNmE5LjMwNiA5LjMwNiAwIDAgMSAxOC42MTIgMEMxOC42MTIgMTYuNTQ0IDkuMzA2IDI0IDkuMzA2IDI0eiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgY3g9IjkuMjEyIiBjeT0iOS4xMjMiIHI9IjIuNzg0Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K")
		50% 50% no-repeat;
	cursor: pointer;
}

.icon-like {
	width: 36px;
	height: 36px;
	background:
		url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yOC45MjcgOC44OTNhNi40NiA2LjQ2IDAgMCAwLTkuMTM5IDBsLTEuODI5IDEuODI4LTEuODI3LTEuODI4YTYuNDYyIDYuNDYyIDAgMSAwLTkuMTQgOS4xMzhMOC44MiAxOS44Nmw4LjQzMiA4LjQzNGExIDEgMCAwIDAgMS40MTQgMGw4LjQzMy04LjQzNGgwbDEuODI4LTEuODI4YTYuNDYgNi40NiAwIDAgMCAwLTkuMTM4eiIgc3Ryb2tlPSIjMzMzIiBzdHJva2Utd2lkdGg9IjEuNyIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==")
		50% 50% no-repeat;
	border: 0px solid white;
}

.icon-like:hover {
	background-image:
		url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yOC45MjcgOC44OTNhNi40NiA2LjQ2IDAgMCAwLTkuMTM5IDBsLTEuODI5IDEuODI4LTEuODI3LTEuODI4YTYuNDYyIDYuNDYyIDAgMSAwLTkuMTQgOS4xMzhMOC44MiAxOS44Nmw4LjQzMiA4LjQzNGExIDEgMCAwIDAgMS40MTQgMGw4LjQzMy04LjQzNGgwbDEuODI4LTEuODI4YTYuNDYgNi40NiAwIDAgMCAwLTkuMTM4eiIgc3Ryb2tlPSIjNWYwMDgwIiBzdHJva2Utd2lkdGg9IjEuNyIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==");
}

.icon-cart {
	display: block;
	width: 36px;
	height: 36px;
	background:
		url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTM2IDM2SDBWMGgzNnoiLz4KICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSg1LjE2NCA2LjU0NykiIHN0cm9rZT0iIzMzMyIgc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjciPgogICAgICAgICAgICA8cGF0aCBkPSJtMjUuNjggMy42Ni0yLjcyIDExLjU3SDcuMzdMNC42NiAzLjY2eiIvPgogICAgICAgICAgICA8Y2lyY2xlIGN4PSIyMC41MiIgY3k9IjIwLjc4IiByPSIyLjE0Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgY3g9IjkuODEiIGN5PSIyMC43OCIgcj0iMi4xNCIvPgogICAgICAgICAgICA8cGF0aCBkPSJNMCAwaDMuOGwxLjc2IDcuNSIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==");
	cursor: pointer;
	border: 0px solid white;
	margin-left: 18px;
	margin-right: 2px;
}

#nav-header {
	position: relative;
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	width: 1050px;
	height: 56px;
	margin: 0px auto;
}

#nav-header-cg:hover>span:first-of-type {
	background:
		url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNiAxNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0wIDBoMTZ2MS43SDBWMHptMCA2LjE1aDE2djEuN0gwdi0xLjd6bTAgNi4xNWgxNlYxNEgwdi0xLjd6IiBmaWxsPSIjNUYwMDgwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==")
		no-repeat 0 0;
}

#nav-header-cg:hover>span:last-of-type {
	color: rgb(95, 0, 128);
}

#nav-header-cg {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	height: 100%;
	cursor: pointer;
	font-weight: bold;
}

.nav-header-cg-icon {
	width: 16px;
	height: 14px;
	margin-right: 14px;
	background:
		url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNiAxNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0wIDBoMTZ2MS43SDBWMHptMCA2LjE1aDE2djEuN0gwdi0xLjd6bTAgNi4xNWgxNlYxNEgwdi0xLjd6IiBmaWxsPSIjMzMzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==")
		0px 0px/16px 14px no-repeat;
}

.nav-header-cg {
	font-size: 16px;
	font-weight: 500;
	line-height: 20px;
	letter-spacing: -1.5px;
	color: rgb(51, 51, 51);
}

.nav-header-cg-sub {
	max-height: calc(95vh - 55px);
	min-height: 200px;
	position: absolute;
	display: none;
	top: 40px;
	padding-top: 10px;
}

.cg-sub-container {
	position: relative;
	z-index: 21;
	width: 249px;
	border: 1px solid rgb(221, 221, 221);
	border-top : 0px;
	background-color: rgb(255, 255, 255);
	animation: 0s linear 0s 1 normal none running animation-w43n76;
}

.cg-sub-ul {
	overflow-y: auto;
	width: 222px;
	height: 92%;
	background-color: rgb(255, 255, 255);
	cursor: pointer;
	list-style: none;
	padding-left: 10px;
}

.cg-sub-li {
	padding: 7px 0px 9px 14px;
	background-color: rgba(255, 255, 255, 0);
}

.cg-sub-div {
	display: flex;
	flex-wrap: wrap;
	align-items: flex-start;
}

.cg-sub-img {
	flex: 0 1 0%;
	width: 24px;
	height: 24px;
	padding-right: 10px;
}

#nav-header-ul {
	display: flex;
	width: 500px;
	margin-left: -90px;
	margin-top: 10px;
}

.nav-header-li {
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	width: 150px;
	height: 55px;
	padding-top: 3px;
	line-height: 20px;
	text-align: center;
}

.nav-header-txt {
	height: fit-content;
	font-size: 16px;
	font-weight: bold;
	color: rgb(51, 51, 51);
	cursor: pointer;
}

#blank {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}
</style>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<body>
	<nav>
		<div class="nav-top">

			<div id="nav-login">
			<c:choose>
				<c:when test="${loginUser eq null}">
				<a href="/user/join.do" class="nav-login">회원가입</a> <a> | </a> <a href="/user/login.do" class="nav-login">로그인</a>
				</c:when>
				<c:otherwise>
				<a href="/user/mypage.do" class="nav-login">${loginUser.userId }님</a> <a> | </a> <a href="/user/logout.do" class="nav-login" >&emsp;로그아웃</a>
				<a class="nav-login" id="sysPage" href="/product/searchProduct.do" >|&emsp;관리자페이지 </a>
				</c:otherwise>
			</c:choose>
			</div>
			

			<div id="nav-headerMain">
				<img src="/images/KKURLY_LOGO2.png" alt="메인로고" width="120"
					style="flex: 0 0 82px;">
				<p id="main_txt">마켓껄리</p>

				<div id="nav-search">
					<input id="gnb_search" class="nav-search-input"
						placeholder="검색어를 입력해주세요" value="">
					<button id="submit" class="nav-search-icon" onclick="search()"></button>
				</div>
				<div id="nav-icon">
					<div class="icon-adr"></div>
					<button class="icon-like" onclick="location.href =  '/main/getUserLikeList.do?userNo=${loginUser.userNo}';"></button>
					<form action="/cart/cartList.do" method="post" class="localContainer" id="localContainer" style="display:none;">
          				<input type="hidden" class="localInput" id="tmp" name="tmp">
          			</form>
					<button class="icon-cart"></button>
				</div>
			</div>
			<div id="nav-header">
				<div id="nav-header-cg">
					<span class="nav-header-cg-icon"></span> <span
						class="nav-heager-cg" id="nav-heager-cg">카테고리</span>

					<div class="nav-header-cg-sub" id="cg-sub">
						<div width="0" class="cg-sub-container">
							<ul class="cg-sub-ul">
								<li class="cg-sub-li">
									<div class="cg-sub-div"
										onclick="location.href='/main/categori.do?CD=vet'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/1/4IYbd0CEWkokpqiN00CAL9cDC2Q7nT101TDEn0tF.png"
											alt="채소" class="cg-sub-img"><span class="cg-sub-span">채소</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=frut'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/2/DNXCcUaXoXakDOdHiGhIMCNUeUjJioG9EyeQ7RRX.png"
											alt="과일" class="cg-sub-img"><span class="cg-sub-span">과일</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=aqua'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/3/fivaoZPBTeqaDswJUgr3k0xMV0von36Qb9qnn7ZZ.png"
											alt="수산물" class="cg-sub-img"><span class="cg-sub-span">수산물</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=meat'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/4/jj6zZg2sY94aytlc2k1udIAmWWvmUignR9VYaMcm.png"
											alt="육류" class="cg-sub-img"><span class="cg-sub-span">육류</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=pet'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/19/DeT1R9JFqxgxubAIJuFcbZPPbBu8DHUkFJmGZBlJ.png"
											alt="반려동물" class="cg-sub-img"><span class="cg-sub-span">반려동물</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=kit'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/6/kwat5Szmq0ONTpMd4hlbcGmCOBd3FsMPyTzWxKBb.png"
											alt="간편식" class="cg-sub-img"><span class="cg-sub-span">간편식</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=alco'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/12/UnO3V0GDnss8p37EKmTGvnF9SzeyzgyzC0O7Wh1R.png"
											alt="주류" class="cg-sub-img"><span class="cg-sub-span">주류</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=drink'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/8/bKllScRqF9gQ5q58LcmBfOOhgBrCOdVypPiRvQkL.png"
											alt="음료" class="cg-sub-img"><span class="cg-sub-span">음료</span>
									</div>
								</li>
								<li class="cg-sub-li">
									<div class="cg-sub-div" onclick="location.href='/main/categori.do?CD=bek'">
										<img
											src="https://collection-image.kurly.com/site-category-groups/9/5qKRHLtIeBWLxUPa1g3koUhqsAkc39YjtMnyIXCJ.png"
											alt="베이커리" class="cg-sub-img"><span class="cg-sub-span">베이커리</span>
									</div>
								</li>
								<li width="0" class="css-1xy9xh5 e1vs1ym85"></li>
							</ul>
						</div>
					</div>
				</div>
				<ul id="nav-header-ul">
					<li class="nav-header-li"><span class="nav-header-txt" onclick="location.href='/main/getBestProdList.do'">신상품</span></li>
					<li class="nav-header-li"><span class="nav-header-txt" onclick="location.href='/main/getTopSaleProdList.do'">베스트</span></li>
					<li class="nav-header-li"><span class="nav-header-txt">특가/혜택</span></li>
				</ul>
				<div id="blank"></div>

		</div>
	</nav>
  
  <script>
  	$(function() {
  		
  		$(".icon-cart").on("click", function() {
  			
  			let tmpStorage = JSON.parse(localStorage.getItem('kkurlyNonMembersBasket'));
  			let tmpData = JSON.stringify(tmpStorage);
  			
  			console.log(tmpData);
  			
  			$("#tmp").val(tmpData);
  			$("#localContainer").submit();
  			

  		});
  	});
  </script>
</body>
<script>
	
	document.getElementById("nav-header-cg").addEventListener("mouseover",
			function() {
				document.getElementById("cg-sub").style.display = "flex";
			});

	document.getElementById("nav-header-cg").addEventListener("mouseleave",
			function() {
				document.getElementById("cg-sub").style.display = "none";
			});

	document.getElementById("main_txt").addEventListener("click", function() {
		window.location.href = '/';
	});

  function search(){
    let prodNm = document.getElementById("gnb_search").value;
    console.log(prodNm);
    window.location.href="/main/search.do?prodNm="+prodNm;
  }
  
</script>

</html>