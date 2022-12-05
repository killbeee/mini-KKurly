<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MY KKURLY</title>

   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/common.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/mykurly_order_list.css">
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
                                    <a href="#" class="next_month">다음 달 예상등급 보기</a> <!-- 얼마나 구매했는지 알아야해요 .. -->
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
                                <li class="on">
                                    <a href="/user/mypage.do">주문내역</a>
                                </li>
                                <li>
                                    <a href="/user/mypage_address.do">배송지 관리</a>
                                </li>
                                <li>
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
                                주문 내역
                                <span class="tit_sub">
                                    지난 3년간의 주문 내역 조회가 가능합니다.
                                </span>
                            </h2>
                        </div>
                        <div class="search_date">
                            <a href="#" class="btn_layer">
                                전체기간
                            </a>
                            <ul class="layer_search">
                                <li>
                                    <a href="#" class="on">전체기간</a>
                                </li>
                                <li>
                                    <a href="#">2022 년</a>
                                </li>
                                <li>
                                    <a href="#">2021 년</a>
                                </li>
                                <li>
                                    <a href="#">2020 년</a>
                                </li>
                        
                            </ul>
                        </div>
                        <ul class="list_order">
                            <li>
                                <div class="date">2022.12.01</div> <!-- 날짜 데이터값 -->
                                <div class="order_goods">
                                    <div class="name">
                                        <a>(상품 제목)</a>
                                    </div>
                                    <div class="order_info">
                                        <div class="thumb">
                                            <img src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1597052755228l0.jpg" alt="해당 주문 대표 상품 이미지">
                                        </div>
                                        <div class="desc">
                                            <dl>
                                                <dt>주문번호</dt>
                                                <dd>(주문번호 데이터)</dd>
                                            </dl>
                                            <dl>
                                                <dt>결제금액</dt>
                                                <dd>0원(총 금액 데이터)</dd>
                                            </dl>
                                            <dl>
                                                <dt>주문상태</dt>
                                                <dd class="status end">배송중</dd>
                                            </dl>
                                        </div>
                                    </div>
                               </div>
                            </li>
                        </ul>
                        <div class="layout-pagination">
                            <div class="pagediv">
                                <a href="#viewOrderList" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
                                <a href="#viewOrderList" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
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
</body>
</html>