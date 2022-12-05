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
                                            <input type="hidden" id="userNo" value="${loginUser.userNo }">
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
                                <li>
                                    <a href="/user/mypage_qna.do">자주 묻는 질문</a>
                                </li>
                                <li class="on">
                                    <a href="/user/mypage_update.do">개인 정보 수정</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="viewOrderList" class="page_section section_orderlist">
                        <div class="head_aticle">
                            <h2 class="tit">
                                개인 정보 수정
                                <span class="tit_sub">
                                    개인 정보 수정이 가능합니다.
                                </span>
                            </h2>
                        </div>
                        <ul class="list_order">
                        	<li>
                        		<a style="font-size:20px; margin-left:350px; color:purple;">비밀번호 입력</a>
                        		<hr>
                        		<form id="insertPw">
                    			<input type="password" name="userPw" id="userPw" option="regPass" maxlength="16"
                        class="reg_pw bad" placeholder="비밀번호를 입력해주세요" style="margin-left:270px; font-size:20px; text-align:center; margin-top:20px;">
                        		</form>
                        	</li>
                        	<li>
                        	<input type="submit" value="확인" id="btnUpdate"
                        	style="text-align:center; background-color:#5f0080; color:white; border:1px solid white; height:40px; width:150px; border-radius: 5px;
                        	font-size:15px; margin-top:20px; margin-left:330px; cursor:pointer;">
                        	</li>
                        </ul>
                    </div>
                </div>    
            </div>
        </div>
    </div>
<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
<script>
  $(function() {
		console.log("${loginUser.userNo }");
		console.log("${loginUser.userPw }");
	  
	$("#btnUpdate").on("click", function() {
		if("${loginUser.userPw }" == $("#userPw").val()) {
			location.href="/user/mypage_update_detail.do";
		} else {
			alert("잘못된 비밀번호입니다.");
			$("#userPw").focus();
			return;
		}
	});
});  
</script>
</body>
</html>