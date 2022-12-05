<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<style>
#footer {
	width: 1110px;
	margin: 0 auto;
	padding-bottom: 60px;
	font-weight: 400;
	letter-spacing: -.2px;
}

#footer::after {
	display: block;
	content: '';
	clear: both;
}

#footer .inner_footer {
	/* overflow: hidden; */
	padding-bottom: 20px;
}

#footer .inner_footer::after {
	content: '';
	clear: both;
	display: block;
}

.inner_footer .cc_footer {
	float: left;
	width: 500px;
}

.inner_footer .cc_tit {
	padding: 29px 0 2px;
	font-weight: 700;
	font-size: 20px;
	color: #333;
	line-height: 24px;
	margin-bottom: 0px
}

.inner_footer .cc_view {
	/* overflow: hidden; */
	padding-top: 12px;
}

.inner_footer .cc_view .tit {
	float: left;
	width: 140px;
	margin-right: 16px;
}

.inner_footer .cc_call {
	padding-top: 5px;
}

.inner_footer .cc_call .tit {
	padding-top: 4px;
	font-weight: 800;
	font-size: 30px;
	color: #333;
	line-height: 36px;
	letter-spacing: -.5px;
	white-space: nowrap;
}

.cc_footer .list {
	font-size: 14px;
	color: #333;
	line-height: 22px;
	letter-spacing: -.2px;
}

.cc_footer .list .etc {
	font-size: 16px;
	color: #333;
	/* line-height: 22px; */
	letter-spacing: -.2px;
	font-weight: bold;
}

.cc_footer .cc_kakao .tit, .cc_footer .cc_qna .tit {
	height: 40px;
	padding-top: 7px;
	margin-top: 3px;
	border: 1px solid #e3e3e3;
	border-radius: 3px;
	font-weight: 700;
	font-size: 14px;
	color: #333;
	line-height: 22px;
	text-align: center;
}

.cc_footer .list dd {
	color: #999;
}

/* #footer right */
#footer .company_info {
	float: right;
	padding-top: 29px;
	font-size: 12px;
	color: #999;
	line-height: 20px;
}

.company_info .list {
	padding-bottom: 10px;
	padding-left: 0px;
	display: inline-block;
	list-style: none;
}

.company_info .list li {
	float: left;
	padding-right: 16px;
}

.company_info .list .link {
	font-size: 14px;
	color: #333;
	line-height: 18px;
	text-decoration-line: none;
	font-weight: bold;
}

.company_info .spec_info .bar {
	padding: 0 4px 0 3px;
}

.company_info .spec_info .link {
	color: #5f0080;
}

.company_info .spec_info .copy {
	display: block;
	font-size: 10px;
	color: #949296;
	line-height: 22px;
	letter-spacing: 0;
}

.spec_info .sns {
	float: left;
	padding-top: 16px;
	padding-left: 0px;
}

.sns li {
	float: left;
	list-style: none;
}

.sns .link_sns {
	display: inline-block;
	width: 10px;
	height: 10px;
	margin-right: 30px;
}

.sns .link_sns img {
	width: 30px;
	height: 30px;
}

#footer .link_footer {
	width: 100%;
	height: auto;
	padding-top: 19px;
	letter-spacing: 0;
	border-top: 1px solid #eee;
}

.link_footer::after {
	display: block;
	content: '';
	clear: both;
}

.link_footer .authentication {
	float: left;
	padding-top: 3px;
}

.link_footer .authentication .mark {
	float: left;
	width: 267px;
}

.link_footer .mark .logo {
	float: left;
	width: 34px;
	height: 34px;
	margin-right: 10px;
}

.link_footer .mark .txt {
	float: left;
	padding-top: 1px;
	margin-top: 0px;
	font-size: 7px;
	color: #999;
	line-height: 16px;
	letter-spacing: -.5px;
	white-space: nowrap;
	width: 125px;
}

#footer .lguplus {
	width: 283px;
	display: inline-block;
}

.link_footer .lguplus .logo {
	width: 102px;
	height: 34px;
}

hr {
	opacity: 0.1;
}
</style>
<body>
	<div id="footer">
		<hr>
		<div class="inner_footer">
			<div class="cc_footer">
				<!-- cc = company calls -->
				<h2 class="cc_tit">고객행복센터</h2>
				<div class="cc_view cc_call">
					<h3>
						<span class="tit">1644-1107</span>
					</h3>
					<dl class="list">
						<dt>
							<br>
						</dt>
						<dd class="etc">월-토요일 오전 7시 - 오후 6시</dd>
					</dl>
				</div>
				<div class="cc_view cc_kakao">
					<h3>
						<a href="#" class="tit">카카오톡 문의</a>
					</h3>
					<dl class="list">
						<dt>365고객센터</dt>
						<dd>오전 7시 - 오후 7시</dd>
					</dl>
				</div>
				<div class="cc_view cc_qna">
					<h3>
						<a href="#" class="tit">1:1 문의</a>
					</h3>
					<dl class="list">
						<dt>24시간 접수 가능</dt>
						<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
					</dl>
				</div>
			</div>

			<div class="company_info">
				<ul class="list">
					<li><a href="#" class="link">컬리소개</a></li>
					<li><a href="#" class="link">컬리소개영상</a></li>
					<li><a href="#" class="link">인재채용</a></li>
					<li><a href="#" class="link">이용약관</a></li>
					<li><a href="#" class="link">개인정보처리방침</a></li>
					<li><a href="#" class="link">이용안내</a></li>
				</ul>
				<div class="spec_info">
					법인명 (상호) : 주식회사 껄리 <span class="bar">I</span> 사업자등록번호 : 000-00-0000
					<a href="#" class="link">사업자정보확인</a><br> 통신판매업 : 제
					2018-서울강남-00000 호 <span class="bar">I</span> 개인정보보호책임자 : 000 <br>
					주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F 아님 <span class="bar">I</span>
					대표이사 : 000 <br> 입점문의 : <a href="#" class="link">입점문의하기</a>
					제휴문의 : <a href="#" class="link">kkurly_fake@naver.com</a><br>
					채용문의 : <a href="#" class="link">kkurly_fake@naver.com</a><br>
					팩스 : 000 - 0000 - 0000 <span class="bar">I</span> 이메일 : <a href="#"
						class="link">kkurly_fake@naver.com</a><br> <br> <strong
						class="copy">© KURLY CORP. ALL RIGHTS RESERVED</strong>
					<ul class="sns">
						<li><a href="#" class="link_sns insta" target="_blank"> <img
								src="https://res.kurly.com/pc/ico/1810/ico_instagram.png"
								alt="마켓컬리 인스타그램 바로가기">
						</a> <!-- bg url 넣기 --></li>
						<li><a href="#" class="link_sns fb" target="_blank"> <img
								src="https://res.kurly.com/pc/ico/1810/ico_fb.png"
								alt="마켓컬리 페이스북 바로가기">
						</a></li>
						<li><a href="#" class="link_sns naver_blog" target="_blank">
								<img src="https://res.kurly.com/pc/ico/1810/ico_blog.png"
								alt="마켓컬리 네이버블로그 바로가기">
						</a></li>
						<li><a href="#" class="link_sns naver_post" target="_blank">
								<img src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png"
								alt="마켓컬리 포스트 바로가기">
						</a></li>
						<li><a href="#" class="link_sns yt" target="_blank"> <img
								src="https://res.kurly.com/pc/ico/1810/ico_youtube.png"
								alt="마켓컬리 유튜브 바로가기">
						</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="link_footer">
			<div class="authentication">
				<a href="#" class="mark" target="_blank"> <img
					src="https://res.kurly.com/pc/ico/2208/logo_isms.svg" alt="isms 로고"
					class="logo">
					<p class="txt">
						[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br> (심사받지 않은 물리적 인프라 제외)<br>
						[유효기간] 2019.04.01 ~ 2022.03.31
					</p>
				</a> <a href="#" class="mark" target="_blank"> <img
					src="https://res.kurly.com/pc/ico/2001/logo_eprivacyplus.png"
					alt="eprivacy plus 로고" class="logo">
					<p class="txt">
						개인정보보호 우수 웹사이트 ·<br> 개인정보처리시스템 인증 없음(ePRIVACY PLUS)
					</p>
				</a> <a href="#" class="lguplus mark" target="_blank"> <img
					src="https://res.kurly.com/pc/service/main/2009/logo_payments.png"
					alt="payments 로고" class="logo">
					<p class="txt">
						토스페이먼츠 구매안전(에스크로)<br> 서비스를 이용하실 수 없습니다.
					</p>
				</a> <a href="#" class="mark" target="_blank"> <img
					src="https://res.kurly.com/pc/ico/2208/logo_wooriBank.svg"
					alt="우리은행 로고" class="logo">
					<p class="txt">
						고객님이 현금으로 결제한 금액에 대해 우리은행과<br> 채무지급보증 계약을 체결하여 안전거래를 보장하고<br>
						있지 않습니다.
					</p>
				</a>
			</div>
		</div>
	</div>
	<!-- id="footer" -->
</body>
</html>