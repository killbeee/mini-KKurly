<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MY KKURLY</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/common.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/mykurly_qna.css">
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
</style>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
    <div id="container">
        <div id="main">
            <div id="content">
                <div id="myPageTop" class="page_aticle mypage_top">
                    <h2 class="blind">마이페이지</h2>
                    <div class="mypagetop_user">
                        <div class="inner_mypagetop">
                            
                            <div class="grade_user">
                                <div class="grade">
                                    <span class="blind">등급</span>
                                    <span class="ico_grade class0">
                                        <span class="inner_grade">
                                            <span class="in_grade">일반</span>
                                        </span>
                                    </span>
                                    <div class="grade_bnenfit">
                                        <div class="user">
                                            <strong class="name">${loginUser.userNm }</strong>
                                            <span class="txt">님</span>
                                        </div>
                                        <div class="benefit">
                                            <strong class="tit"></strong>
                                            적립 0.5%
                                        </div>
                                    </div>
                                </div>
                                <div class="next">
                                    <a href="#" class="total_grade">전체등급 보기</a>
                                    <a href="#" class="next_month">다음 달 예상등급 보기</a>
                                </div>
                            </div>

                            <ul class="list_mypage">
                                <li class="user_reserve">
                                    <div class="link">
                                        <div class="tit">
                                            적립금
                                        </div>
                                        <a href="#" class="info">
                                            0 원
                                            <img src="https://res.kurly.com/pc/service/common/1905/ico_arrow_56x56.png" alt="자세히보기">
                                            <span class="date">소멸 예정 0원</span>
                                        </a>
                                    </div>
                                </li>
                                <li class="user_coupon">
                                    <div class="link">
                                        <div class="tit">
                                            쿠폰
                                        </div>
                                        <a href="#" class="info">
                                            0 개
                                            <img src="https://res.kurly.com/pc/service/common/1905/ico_arrow_56x56.png" alt="자세히 보기">
                                        </a>
                                    </div>
                                </li>
                                <li class="user_kurlypass">
                                    <div class="link">
                                        <div class="tit">
                                            껄리패스    
                                        </div>
                                        <a href="#" class="info info_link">
                                            알아보기
                                            <img src="https://res.kurly.com/pc/service/common/1905/ico_arrow_56x56.png" alt="자세히 보기">
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <a href="#" class="bnr_event" style="background-image: url(https://img-cf.kurly.com/shop/data/skin/designgj/img/banner/bb20c3b9d5542cfdfec3ef5bfefcafa5.jpg);">
                        </a>
                    </div>
                </div>
                <div class="page_aticle aticle_type2">
                    <div id="snb" class="snb_my">
                        <h2 class="tit_snb">마이껄리</h2>
                        <div class="inner_sub">
                           <ul class="list_menu">
                                <li>
                                    <a href="/user/mypage.do">주문내역</a>
                                </li>
                                <li>
                                    <a href="/user/mypage_address.do">배송지 관리</a>
                                </li>
                                <li class="on">
                                    <a href="/user/mypage_qna.do">자주 묻는 질문</a>
                                </li>
                                <li>
                                    <a href="/user/mypage_update.do">개인 정보 수정</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="viewOrderList" class="page_section section_orderlist">
                        <div class="head_aticle">
                            <h2 class="tit">
                                자주하는 질문(FAQ)
                                <span class="tit_sub">
                                    마켓껄리 제품 및 사이트에 궁금하신 사항을 FAQ를 통해 해결해 드립니다.
                                </span>
                            </h2>
                        </div>
                        <ul class="list_order">
                            <li>
                                <div class="order_goods">
                                    <div class="name" id="view01">
                                        <a>1. 마켓껄리는 어떤 회사인가요?</a>
                                        <div id=detail01 style="display:none">
                                        	<hr>
                                        	<a>
                                        	■ About 마켓컬리
                                        	<br>
                                        	<br>
 											마켓컬리에서는 사람을 소중히 하는 마음으로, 산지에서 친환경 혹은 유기농 인증을 받은 제품들을 꼼꼼히 선택하여 판매합니다. 
                                        	<br>
                                        	<br>
											제품을 최대한 신선하게 배송해 드리기 위해, 
                                  			<br>
                                  			<br>
 											샛별배송지역은 밤 11시 전까지 주문하신 경우 다음날 아침 7시까지 (대구/부산/울산 샛별배송 지역은 밤 8시 전까지 주문하신 경우 다음날 아침 8시 까지), 
                                        	<br>
                                        	<br>
											낮배송지역은 밤 10시까지 주문한 경우 택배 시스템을 통해 다음날 밤 11시 전까지 제품을 배송해 드립니다.                                        	
                                        	<br>
                                        	<br>
 											1:1 문의에 사진 (사진으로 확인할 수 있는 경우) 및 불편사항을 접수해 주시면 확인 후 환불, 교환도 드리고 있습니다.                                        	
                                        	<br>
                                        	<br>
											"우리가 곧 고객이다" 라는 신념으로 좋은 제품을 선택하고 검수하며,                                        	
                                        	<br>
                                        	<br>
                                        	문제 발생 시 고객님의 편에서 조치를 드리고 있으니, 안심하고 이용해 주시기 바랍니다.
                                        	</a>
                                        </div>
                                    </div>
                                    <div class="name" id="view02">
                                        <a>2. 상품은 어떻게 포장되나요?</a>
										<div id=detail02 style="display:none">
                                        	<hr>
                                        	<a>
                                        	■ 포장법 안내
											<br>
											<br>
											상품 보관방법별로 구분하여 포장 됩니다. ( 상온 / 냉장 / 냉동 )<br>
											<br>
											- 상온 : 보냉재 X<br>
											<br>
											- 냉장 : 보냉재 O - 아이스팩(only 물)<br>
											<br>
											- 냉동 : 보냉재 O - 드라이아이스(or PCM 사용)<br>
											<br>
											* 깨지기 쉬운 제품인 경우 종이 또는 비닐 완충제를 사용합니다.<br>
											<br>
											* 박스에 들어가지 않는 상품은 별도 외포장하여 송장 부착 후 배송 됩니다.<br>
											<br>
											* 상온+냉장 일부 상품의 경우, 많은 포장재 사용을 자제하고자 합포를 진행하고 있습니다.<br>
											<br>
											기본적으로 컬리는 최대한 사람과 환경 모두에게 이로운 방법으로 상품을 포장하고자 합니다.<br>
											<br>
											이에 현재 샛별배송지역은 전면 포장재를 종이로 활용하고 있으나, 일부로는 비닐 소재도 함께 혼용하고 있으며 최근에는 컬리 퍼플박스를 개발하여 재사용할 수 있는 방법 또한 강구하였습니다.<br>
											<br>
											상품뿐만이 아니라 유통, 배송과정 고려하여 친환경 캠페인에 동참할 수 있도록 노력하는 컬리가 되겠습니다.
                                        	</a>
                                        </div>
                                    </div>
                             		<div class="name" id="view03">
                                        <a>3. 교환(반품) 진행 시, 배송비가 부과되나요?</a>
                                        <div id=detail03 style="display:none">
                                        	<hr>
                                        	<a>
                                        	■ 교환(반품) 진행 시, 배송비 안내<br>
											<br>
											<br>
											- 단순변심에 의한 교환/반품 시 배송비 6,000원 (주문건 배송비를 낸 경우 3,000원)을 고객님께서 부담하셔야합니다. <br>
											<br>
											<br>
											▶ 가공식품 및 일부 비식품류에 한해서만 반품 가능<br>
											<br>
											① 상품에 이상이 없거나 상품의 특성적인 부분인 경우<br>
											<br>
											② 단순 변심에 의해 교환 및 반품하는 경우<br>
											<br>
											③ 옵션 및 상품을 잘못 선택하여 잘못 주문했을 경우<br>
											<br>
											<br>
											▶ 판매자 과실 등 상품에 문제로 인해 교환 시 판매자 부담<br>
											<br>
											① 수령한 상품이 불량인 경우<br>
											<br>
											② 수령한 상품이 파손된 경우 <br>
											<br>
											③ 상품이 상품상세정보와 다른 경우<br>
											<br>
											④ 주문한 상품과 다른 상품이 배송된 경우 등
                                        	</a>
                                        </div>
                                    </div>
                                    <div class="name" id="view04">
                                        <a>4. 샛별배송/낮(택배) 배송이 무엇인가요?</a>
										<div id=detail04 style="display:none"> 
                                        	<hr>
                                        	<a>
                                        	마켓컬리는 고객님 배송지역에 따라 샛별배송과 낮(택배)배송으로 구분하여 상품을 배송합니다. <br>
											<br>
											<br>
											<br>
											■ 수도권·충청  <br>
											<br>
											샛별배송 서비스 지역입니다. <br>
											<br>
											오늘 밤 11시 전 주문하신다면, 내일 아침 7시 전 문앞에서 상품을 받으실 수 있습니다. <br>
											<br>
											※ 일부 지역의 경우, 샛별배송이 제공되지 않습니다. 배송지역 검색 에서 우리집이 샛별배송 지역인지 확인해보세요. <br>
											<br>
											<br>
											■ 대구 <br>
											<br>
											샛별배송(낮배송) 서비스 지역입니다.<br>
											<br>
											(주문시간에 따라 샛별 or 낮 배송으로 배송 해드리오니 주문시간을 참고해주세요.)<br>
											<br>
											<br>
											오늘 밤 8시 전 주문하신다면, 내일 아침 8시 전 문앞에서 상품을 받으실 수 있습니다. <br>
											<br>
											오늘 밤 8시 ~ 밤 10시에 주문하신다면, 내일 밤 12시 전 문앞에서 상품을 받으실 수 있습니다. <br>
											<br>
											※ 일부 지역의 경우, 샛별배송이 제공되지 않습니다. 배송지역 검색 에서 우리집이 샛별배송 지역인지 확인해보세요. <br>
											<br>
											<br>
											■ 부산·울산<br>
											<br>
											샛별배송(낮배송) 서비스 지역입니다.<br>
											<br>
											(주문시간에 따라 샛별 or 낮 배송으로 배송해드리오니 주문시간을 참고해주세요.)<br>
											 <br>
											<br>
											오늘 밤 6시 전 주문하신다면, 내일 아침 8시 전 문앞에서 상품을 받으실 수 있습니다. <br>
											<br>
											오늘 밤 6시 ~ 밤 10시에 주문하신다면, 내일 밤 12시 전 문앞에서 상품을 받으실 수 있습니다. <br>
											<br>
											※ 일부 지역의 경우, 샛별배송이 제공되지 않습니다. 배송지역 검색 에서 우리집이 샛별배송 지역인지 확인해보세요. <br>
											<br>
											<br>
											■그 외 지역  <br>
											<br>
											낮(택배)배송 서비스 지역입니다. <br>
											<br>
											오늘 밤 10시 전 주문하신다면, 내일 밤 12시 전 문앞에서 상품을 받으실 수 있습니다. <br>
											<br>
											<br>
											※ 자세한 배송지 안내는 마켓컬리 공지사항 마켓컬리 배송안내 를 확인해주세요.
                                        	</a>
                                        </div>
                                    </div>
                                    <div class="name" id="view05">
                                        <a>5. 제세공과금이 무엇인가요?</a>
                                        <div id=detail05 style="display:none;"> 
                                        	<hr>
                                        	<a>
                                        	■ 제세공과금<br>
											<br>
											- 이벤트 참여 후 경품 등에 당첨되신 경우, 기타 소득이 발생 된 것으로 간주하여 국가에서 세금을 부과하고 있습니다.<br>
											- 5만원 초과 경품의 한하여 경품가 22% 대하여 신고 및 납부가 필요합니다. <br>
											<br>
											[참고]<br>
											▣ 이벤트 별로 제세공과금을 당사에서 부담하기도 하며, 이에 대해 동의 확인차 경품 지급 전으로 별도 개인정보를 수집하는 점 참고 부탁드립니다.
                                        	</a>
                                        </div>
                                    </div>
                               </div>
                            </li>
                        </ul>
                        <div class="layout-pagination">
                            <div class="pagediv">
                                <a href="#" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
                                <a href="#" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
                                <span> 
                                    <strong class="layout-pagination-button layout-pagination-number __active" style="height: 32px;">
                                        1
                                    </strong>
                                </span>
                                <a href="#viewOrderList" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
                                <a href="#viewOrderList" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
<script>
	var view01 = document.querySelector('#view01');
	var view02 = document.querySelector('#view02');
	var view03 = document.querySelector('#view03');
	var view04 = document.querySelector('#view04');
	var view05 = document.querySelector('#view05');
	
	
	view01.addEventListener('click', function() {
		if(open == false) {
			document.querySelector("#detail01").style.display = 'none';
			open = true;
		} else {
			document.querySelector("#detail01").style.display = 'block';
			open = false;
		}
	});
	
	view02.addEventListener('click', function() {
		if(open == false) {
			document.querySelector("#detail02").style.display = 'none';
			open = true;
		} else {
			document.querySelector("#detail02").style.display = 'block';
			open = false;
		}
	});
	
	view03.addEventListener('click', function() {
		if(open == false) {
			document.querySelector("#detail03").style.display = 'none';
			open = true;
		} else {
			document.querySelector("#detail03").style.display = 'block';
			open = false;
		}
	});
	
	view04.addEventListener('click', function() {
		if(open == false) {
			document.querySelector("#detail04").style.display = 'none';
			open = true;
		} else {
			document.querySelector("#detail04").style.display = 'block';
			open = false;
		}
	});
	
	view05.addEventListener('click', function() {
		if(open == false) {
			document.querySelector("#detail05").style.display = 'none';
			open = true;
		} else {
			document.querySelector("#detail05").style.display = 'block';
			open = false;
		}
	});
</script>
</body>
</html>