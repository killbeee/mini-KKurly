<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <title>제품 상세페이지</title>
</head>
<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
  #container {
    position: relative;
    width: 1050px;
    margin: 0px auto;
    padding-top: 30px;
  }

  #product-atf {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
  }

  .product-img {
    width: 430px;
    height: 552px;
    background: url("https://img-cf.kurly.com/shop/data/goods/1648210798662l0.jpg") 0% 0% / cover, url("https://res.kurly.com/_next/static/images/noimg-150x195-2c819ff85dca3193dfce31add0852dbb.svg") 50% 50% / contain no-repeat rgb(245, 245, 245);
  }

  .product-section {
    width: 560px;
  }

  .product-etc {
    font-weight: 500;
    line-height: 1.36;
    letter-spacing: -0.5px;
    color: rgb(153, 153, 153);
    margin-bottom: 6px;
    width: 500px;
  }

  .product-Nm-box {
    display: flex;
    flex-direction: column;
  }

  .product-Nm-box-sub {
    display: flex;
    flex: 1 1 0%;
    -webkit-box-pack: justify;
    justify-content: space-between;
  }

  .product-Nm {
    width: 500px;
    font-weight: 500;
    font-size: 24px;
    color: rgb(51, 51, 51);
    line-height: 34px;
    letter-spacing: -0.5px;
    word-break: keep-all;
    margin-right: 20px;
  }

  .product-sub-text {
    padding-top: 5px;
    font-size: 14px;
    font-weight: 400;
    color: rgb(181, 181, 181);
    line-height: 19px;
    letter-spacing: -0.5px;
  }

  .product-price-box {
    display: flex;
    flex-direction: row;
    align-items: flex-end;
    /* padding-top: 19px; */
    font-weight: bold;
    line-height: 30px;
    letter-spacing: -0.5px;
  }

  .product-price {
    padding-right: 4px;
    font-size: 28px;
    color: rgb(51, 51, 51);
  }

  .product-price-won {
    display: inline-block;
    position: relative;
    top: 3px;
    font-size: 18px;
    color: rgb(51, 51, 51);
    vertical-align: top;
  }

  .product-sub-text2 {
    font-size: 14px;
    color: rgb(95, 0, 128);
    line-height: 19px;
    height: 19px;
    letter-spacing: -0.5px;
    margin-top: 14px;
  }

  .product-content-box {
    margin-top: 20px;
  }

  .product-content-box-sub {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    align-items: flex-start;
    overflow: hidden;
    width: 100%;
    /* padding: 0px 0px 18px; */
    /* margin-bottom: 0px; */
    border-top: 1px solid rgb(244, 244, 244);
    font-size: 14px;
    letter-spacing: -0.5px;
  }

  .product-content-title {
    position: relative;
    top: 1px;
    width: 128px;
    height: 100%;
    color: rgb(102, 102, 102);
    line-height: 19px;
  }

  .product-content-etc {
    display: flex;
    flex: 1 1 0%;
    flex-direction: column;
  }

  .product-content-text {
    color: rgb(51, 51, 51);
    line-height: 19px;
    white-space: pre-line;
    word-break: break-all;
    overflow: hidden;
  }

  .product-content-etc2 {
    display: block;
    font-size: 12px;
    color: rgb(102, 102, 102);
    padding-top: 4px;
    line-height: 16px;
    white-space: pre-line;
  }

  .product-cart-container {
    padding-bottom: 40px;
  }

  .product-cart-container-sub {
    border-bottom: 1px solid rgb(244, 244, 244);
  }

  .product-cart-box {
    display: flex;
    flex: 1 1 0%;
    flex-direction: row;
    align-items: flex-start;
    overflow: hidden;
    width: 100%;
    padding: 17px 0px 18px;
    border-top: 1px solid rgb(244, 244, 244);
    font-size: 14px;
    letter-spacing: -0.5px;
  }

  .product-content-title {
    position: relative;
    top: 1px;
    width: 128px;
    height: 100%;
    color: rgb(102, 102, 102);
    line-height: 19px;
  }

  .cart-option {
    display: flex;
    flex-direction: column;
    -webkit-box-pack: justify;
    justify-content: space-between;
    padding: 11px 10px 11px 15px;
    font-size: 12px;
    border-left: 1px solid rgb(244, 244, 244);
    border-top: 1px solid rgb(244, 244, 244);
    border-right: 1px solid rgb(244, 244, 244);
    border-bottom: 1px solid rgb(244, 244, 244);
  }

  .cart-product-Nm-box {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    align-items: flex-start;
  }

  .cart-product-Nm {
    line-height: 16px;
    width: 320px;
    color: rgb(51, 51, 51);
  }

  .cart-cnt-container {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    padding-top: 12px;
  }

  .cart-cnt-container-minus {
    display: inline-flex;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    border: 1px solid rgb(221, 223, 225);
    width: 88px;
    border-radius: 3px;
  }

  #cart-minus-btn:disabled {
    display: inline-flex;
    width: 28px;
    height: 28px;
    border: none;
    font-size: 1px;
    color: transparent;
    background-size: cover;
    background-color: transparent;
    background-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yMCAxNHYySDEwdi0yeiIgZmlsbD0iI0RERCIgZmlsbC1ydWxlPSJub256ZXJvIi8+Cjwvc3ZnPgo=");
    vertical-align: top;
  }

  #cart-minus-btn {
    display: inline-flex;
    width: 28px;
    height: 28px;
    border: none;
    font-size: 1px;
    color: transparent;
    background-size: cover;
    background-color: transparent;
    background-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yMCAxNHYySDEwdi0yeiIgZmlsbD0iIzMzMyIgZmlsbC1ydWxlPSJub256ZXJvIi8+Cjwvc3ZnPgo=");
    vertical-align: top;
  }

  #cart-cnt {
    display: inline-flex;
    overflow: hidden;
    white-space: nowrap;
    -webkit-box-pack: center;
    justify-content: center;
    font-size: 14px;
    font-weight: 600;
    color: rgb(51, 51, 51);
    text-align: center;
    width: 31px;
    height: 28px;
    line-height: 28px;
  }

  #cart-plus-btn {
    display: inline-flex;
    width: 28px;
    height: 28px;
    border: none;
    font-size: 1px;
    color: transparent;
    background-size: cover;
    background-color: transparent;
    background-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xNiAxMHY0aDR2MmgtNHY0aC0ydi00aC00di0yaDR2LTRoMnoiIGZpbGw9IiMzMzMiIGZpbGwtcnVsZT0ibm9uemVybyIvPgo8L3N2Zz4K");
    vertical-align: top;
  }

  #cart-price {
    font-weight: bold;
    font-size: 12px;
    color: rgb(51, 51, 51);
    padding-right: 5px;
  }

  .total-container {
    padding-top: 30px;
  }

  .total-container-box {
    letter-spacing: -0.5px;
  }

  .total-price-box {
    display: flex;
    -webkit-box-pack: end;
    justify-content: flex-end;
    align-items: flex-end;
  }

  .total-price-text {
    padding-right: 12px;
    font-size: 13px;
    font-weight: 500;
    color: rgb(51, 51, 51);
    line-height: 20px;
  }

  #total-price {
    font-weight: bold;
    font-size: 32px;
    color: rgb(51, 51, 51);
    line-height: 36px;
  }

  .total-price-text2 {
    padding-left: 5px;
    font-size: 20px;
    font-weight: 600;
    color: rgb(51, 51, 51);
    line-height: 30px;
  }

  .btn-container {
    display: flex;
    gap: 8px;
    margin-top: 20px;
  }

  .btns {
    display: block;
    padding: 0px 10px;
    text-align: center;
    overflow: hidden;
    width: 56px;
    height: 56px;
    border-radius: 3px;
    color: rgb(51, 51, 51);
    background-color: rgb(255, 255, 255);
    border: 1px solid rgb(221, 221, 221);
  }

  .btns-span {
    display: inline-block;
    font-size: 16px;
    font-weight: 500;
  }

  .btns-img{
    border: 0;
    vertical-align: top;
  }

  .btn-cart {
    -webkit-box-flex: 1;
    flex-grow: 1;
  }

  .product-function {
    display: block;
    padding: 0px 10px;
    text-align: center;
    overflow: hidden;
    width: 100%;
    height: 52px;
    border-radius: 3px;
    color: rgb(255, 255, 255);
    background-color: rgb(95, 0, 128);
    border: 0px none;
  }
</style>
<script src="${pageContext.request.contextPath }/js/addCartModule.js"></script>
<body>
  <div id="container">

    <main id="product-atf">
      <div class="product-img"></div>
      <section class="product-section">
        <div class="product-etc">샛별배송</div>
        <div class="product-Nm-box">
          <div class="product-Nm-box-sub">
            <h1 class="product-Nm">${prod.prodNm }</h1>
          </div>
          <!-- <h2 class="product-sub-text">집에서도 전문 일식점 느낌 그대로 </h2> -->
        </div>
        <h2 class="product-price-box"><span class="product-price" id=${prod.prodNo}>${prod.prodPrice }</span><span class="product-price-won">원</span>
        </h2>
        <!-- <div class="product-sub-text2">로그인 후, 적립 혜택이 제공됩니다.</div> -->
        <div class="product-content-box">
          <dl class="product-content-box-sub">
            <dt class="product-content-title">배송</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">샛별배송</p>
              <p class="product-content-etc2">23시 전 주문 시 내일 아침 7시 전 도착
                (대구·부산·울산 샛별배송 운영시간 별도 확인)</p>
            </dd>
          </dl>
          <dl class="product-content-box-sub">
            <dt class="product-content-title">판매자</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">껄리</p>
            </dd>
          </dl>
          <dl class="product-content-box-sub">
            <dt class="product-content-title">포장타입</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">${temp }</p>
              <p class="product-content-etc2">택배배송은 에코 포장이 스티로폼으로 대체됩니다.</p>
            </dd>
          </dl>
          <dl class="product-content-box-sub">
            <dt class="product-content-title">판매단위</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">${prod.prodQty} ${prod.prodUnit} </p>
            </dd>
          </dl>
          <dl class="product-content-box-sub">
            <dt class="product-content-title">중량/용량</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">${prod.prodVol }</p>
            </dd>
          </dl>
          <dl class="product-content-box-sub">
            <dt class="product-content-title">원산지</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">상세페이지 별도표기</p>
            </dd>
          </dl>
          <dl class="product-content-box-sub">
            <dt class="product-content-title">알레르기정보</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">-계란, 대두, 밀, 우유 함유
                -본 제품은 쇠고기, 돼지고기, 닭고기, 새우, 게, 오징어, 고등어, 조개류(굴, 전복, 홍합 포함), 메밀, 호두, 땅콩, 잣, 토마토, 복숭아, 아황산류를 사용한 제품과 동일
                시설에서 제조하고 있습니다. </p>
            </dd>
          </dl>
          <dl class="product-content-box-sub">
            <dt class="product-content-title">유통기한(또는 소비기한)정보</dt>
            <dd class="product-content-etc">
              <p class="product-content-text">제품 별도표기일까지 </p>
            </dd>
          </dl>
        </div>
        <div class="product-cart-container">
          <div class="product-cart-container-sub">
            <dl class="product-cart-box">
              <dt class="product-content-title">상품선택</dt>
              <div class="cart-option">
                <div class="cart-product-Nm-box"><span class="cart-product-Nm">${prod.prodNm}</span></div>
                <div class="cart-cnt-container">
                  <div class="cart-cnt-container-minus"><button type="button" aria-label="수량내리기" disabled=""
                      id="cart-minus-btn"></button>
                    <div id="cart-cnt">1</div><button type="button" aria-label="수량올리기" id="cart-plus-btn"></button>
                  </div>
                  <div><span id="cart-price">${prod.prodPrice}</span>원</div>
                </div>
              </div>
            </dl>
          </div>
          <div class="total-container">
            <div class="total-container-box">
              <div class="total-price-box"><span class="total-price-text">총 상품금액 :</span><span
                  id="total-price">${prod.prodPrice }</span><span class="total-price-text2">원</span></div>
              <!-- <div class="css-1iis94s extc5fi4"><span class="css-12p95ok extc5fi3">적립</span><span
                  class="css-10e9px3 extc5fi2">로그인 후, 적립 혜택 제공</span></div> -->
            </div>
          </div>
          <div class="btn-container"><button class="btns" type="button" width="56" height="56" radius="3" onclick="likeBtn()"><span
                class="btns-span">
                <img
                  src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yNS44MDcgNy44NjNhNS43NzcgNS43NzcgMCAwIDAtOC4xNzIgMEwxNiA5LjQ5N2wtMS42MzUtMS42MzRhNS43NzkgNS43NzkgMCAxIDAtOC4xNzMgOC4xNzJsMS42MzQgMS42MzQgNy40NjYgNy40NjdhMSAxIDAgMCAwIDEuNDE1IDBzMCAwIDAgMGw3LjQ2Ni03LjQ2N2gwbDEuNjM0LTEuNjM0YTUuNzc3IDUuNzc3IDAgMCAwIDAtOC4xNzJ6IiBzdHJva2U9IiM1RjAwODAiIHN0cm9rZS13aWR0aD0iMS42IiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K"
                  alt="not like" class="btns-img" id="likeBtn"></span></button>
            <button class="btns" type="button" disabled="" width="56" height="56" radius="3"><span
                class="btns-span"><img
                  src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHN0cm9rZT0iI0NDQyIgc3Ryb2tlLXdpZHRoPSIxLjYiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTEyLjY2NiAyM2EzLjMzMyAzLjMzMyAwIDEgMCA2LjY2NiAwIi8+CiAgICAgICAgPHBhdGggZD0iTTI1Ljk5OCAyMi43MzhINmwuMDEzLS4wM2MuMDc2LS4xMzUuNDcxLS43MDQgMS4xODYtMS43MDlsLjc1LTEuMDV2LTYuNjM1YzAtNC40ODUgMy40MzgtOC4xNCA3Ljc0MS04LjMwOEwxNiA1YzQuNDQ2IDAgOC4wNSAzLjcyMiA4LjA1IDguMzE0djYuNjM0bDEuNzA3IDIuNDExYy4xNzMuMjUzLjI1NC4zOC4yNDIuMzh6IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
                  alt="" class="btns-img"></span></button>
            <div class="btn-cart"><button class="product-function" id="prodNo${prod.prodNo }" type="button" radius="3">
            <span class="btns-span">장바구니 담기</span></button></div>
          </div>
        </div>
      </section>
    </main>
  </div>
</body>
<script>

	$(function() {
		$(".product-function").on("click", function() {
			console.log($(this).attr("id"));
		});
	});

	/* 천 단위로 , 추가 */
	var prodPrice = $('#${prod.prodNo}').text();
	var changePrice = prodPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$('#${prod.prodNo}').text(changePrice);

	let plus = document.getElementById("cart-plus-btn");
	let minus = document.getElementById("cart-minus-btn");
	let price = document.getElementById("cart-price").innerText;
	let total = document.getElementById("total-price");

	// 수량 더하기 버튼을 눌렀을 때
	plus.addEventListener("click", function() {
		let cnt = document.getElementById("cart-cnt").innerText;
		cnt = Number(cnt) + 1
		document.getElementById("cart-cnt").innerText = cnt;

		let totalPrice = Number(price) * cnt;
		// 세자리마다 , 찍어주기
		total.innerText = totalPrice.toString().replace(
				/\B(?=(\d{3})+(?!\d))/g, ',');

		minus.disabled = false;
	});

	// 수량 빼기 버튼을 눌렀을 때
	minus.addEventListener("click", function() {
		let cnt = document.getElementById("cart-cnt").innerText;
		cnt = Number(cnt) - 1
		document.getElementById("cart-cnt").innerText = cnt;

		let totalPrice = Number(price) * cnt;
		// 세자리마다 , 찍어주기
		total.innerText = totalPrice.toString().replace(
				/\B(?=(\d{3})+(?!\d))/g, ',');

		// 마이너스 수량이 되지 않도록 처리
		if (cnt == 0) {
			minus.disabled = true;
		}
	});

	let likeCheck = ${likeCheck};
	console.log(likeCheck);
	if(likeCheck){
		let likeBtn = document.getElementById("likeBtn");
		likeBtn.src = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yNS44MDcgNy44NjNhNS43NzcgNS43NzcgMCAwIDAtOC4xNzIgMEwxNiA5LjQ5N2wtMS42MzUtMS42MzRhNS43NzkgNS43NzkgMCAxIDAtOC4xNzMgOC4xNzJsMS42MzQgMS42MzQgNy40NjYgNy40NjdhMSAxIDAgMCAwIDEuNDE1IDBzMCAwIDAgMGw3LjQ2Ni03LjQ2N2gwbDEuNjM0LTEuNjM0YTUuNzc3IDUuNzc3IDAgMCAwIDAtOC4xNzJ6IiBmaWxsPSIjRkY1QTVBIiBzdHJva2U9IiNGRjVBNUEiIHN0cm9rZS13aWR0aD0iMS42IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K";
		likeBtn.alt = "like";
	}
	
	// 하트 버튼 눌렀을 때 버튼 그림 전환
	function likeBtn() {
		let likeBtn = document.getElementById("likeBtn");
		if (likeBtn.alt!="like") {
			likeBtn.src = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yNS44MDcgNy44NjNhNS43NzcgNS43NzcgMCAwIDAtOC4xNzIgMEwxNiA5LjQ5N2wtMS42MzUtMS42MzRhNS43NzkgNS43NzkgMCAxIDAtOC4xNzMgOC4xNzJsMS42MzQgMS42MzQgNy40NjYgNy40NjdhMSAxIDAgMCAwIDEuNDE1IDBzMCAwIDAgMGw3LjQ2Ni03LjQ2N2gwbDEuNjM0LTEuNjM0YTUuNzc3IDUuNzc3IDAgMCAwIDAtOC4xNzJ6IiBmaWxsPSIjRkY1QTVBIiBzdHJva2U9IiNGRjVBNUEiIHN0cm9rZS13aWR0aD0iMS42IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K";
			likeBtn.alt = "like";
			
			$.ajax ({
				  url	: "/main/insertLike.do", // 요청이 전송될 URL 주소
				  type	: "GET", // http 요청 방식 (default: ‘GET’)
				  data  : {"prodNo" : ${prod.prodNo}}, // 요청 시 포함되어질 데이터
				  success : function(obj) {
				    console.log("LikE!");
				    if(obj == null || obj == ""){
				    	console.log("ok");
					    return;
				    } else {
				    	alert(obj);
					    location.href="/user/login.do";	
				    }
				  },
				  error	: function(e) {
					  console.log(e);
				  } 
				});

			
		} else {
			likeBtn.src = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yNS44MDcgNy44NjNhNS43NzcgNS43NzcgMCAwIDAtOC4xNzIgMEwxNiA5LjQ5N2wtMS42MzUtMS42MzRhNS43NzkgNS43NzkgMCAxIDAtOC4xNzMgOC4xNzJsMS42MzQgMS42MzQgNy40NjYgNy40NjdhMSAxIDAgMCAwIDEuNDE1IDBzMCAwIDAgMGw3LjQ2Ni03LjQ2N2gwbDEuNjM0LTEuNjM0YTUuNzc3IDUuNzc3IDAgMCAwIDAtOC4xNzJ6IiBzdHJva2U9IiM1RjAwODAiIHN0cm9rZS13aWR0aD0iMS42IiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K";
			likeBtn.alt = "not like";
			
			$.ajax ({
				  url	: "/main/deleteLike.do", // 요청이 전송될 URL 주소
				  type	: "GET", // http 요청 방식 (default: ‘GET’)
				  data  : {"prodNo" : ${prod.prodNo}}, // 요청 시 포함되어질 데이터
				  success : function(obj) {
				    console.log("Not LikE!");
				  },
				  error	: function(e) {
					  console.log(e);
				  } 
				});
		}
	};
</script>
<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
</html>