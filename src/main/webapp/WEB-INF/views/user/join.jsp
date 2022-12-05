<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>
	#main {
	  border-bottom: 1px solid #f7f7f7;
	}
	
	#content {
	  min-width: 1100px;
	  padding-bottom: 120px;
	}
	
	#header, #container, #content {
	  position: relative;
	}
	
	.page_aticle {
	  width: 1100px;
	  margin: 0 auto;
	}
	
	.member_join {
	  width: 640px;
	  margin: 0 auto;
	}
	
	.member_join .field_head .tit {
	  padding-top: 70px;
	  font-weight: 550;
	  font-size: 27px;
	  color: #333;
	  line-height: 15px;
	  text-align: center;
	  letter-spacing: -.5px;
	}
	
	.member_join .field_head .sub {
	  padding: 20px 0 1px;
	  font-size: 12px;
	  font-weight: 600;
	  color: #666;
	  line-height: 17px;
	  text-align: right;
	}
	
	.member_join .field_head .sub .ico {
	  padding-right: 2px;
	  color: #ee6a7b;
	}
	
	.member_join .tbl_comm {
	  width: 100%;
	  border-top: 2px solid #333;
	}
	
	table {
	  border-collapse: collapse;
	  border-spacing: 0;
	}
	
	.member_join .tbl_comm .fst th {
	  padding-top: 30px;
	}
	
	.member_join th {
	  width: 110px;
	  padding: 20px 20px 0px 20px;
	  font-weight: 1000;
	  font-size: 14px;
	  color: #333;
	  line-height: 20px;
	  vertical-align: top;
	  text-align: left;
	}
	
	.member_join th .ico {
	  color: #ee6a7b;
	}
	
	.screen_out {
	  display: block;
	  overflow: hidden;
	  position: absolute;
	  left: -9999px;
	  width: 1px;
	  height: 1px;
	  font-size: 0;
	  line-height: 0;
	  text-indent: -9999px;
	}
	
	.member_join .tbl_comm .fst td {
	  padding-top: 20px;
	}
	
	.member_join td {
	  padding: 10px 0;
	  border-top: 0;
	  font-size: 20px;
	  vertical-align: top;
	  text-align: left;
	}
	
	.member_join input[type=text], .member_join input[type=password] {
	  width: 300px;
	}
	
	.type_form textarea, .type_form input[type=text], .type_form input[type=password] {
	  height: 44px;
	  padding: 0 15px;
	  border: 1px solid #ccc;
	  font-size: 15px;
	  font-weight: 550;
	  color: rgb(50, 50, 50);
	  line-height: 20px;
	  border-radius: 3px;
	  background: #fff;
	  outline: none;
	  vertical-align: top;
	}
	
	.type_form .btn.default {
	  border: 1px solid #5f0080;
	  background-color: #fff;
	  color: #5f0080;
	}
	
	#main .member_join .btn {
	  display: inline-block;
	  width: 120px;
	  margin-left: 5px;
	}
	
	.type_form .btn {
	  display: block;
	  width: 100%;
	  height: 42px;
	  border: 0;
	  border-radius: 3px;
	  font-weight: 1000;
	  font-size: 13px;
	  line-height: 40px;
	  text-align: center;
	  outline: none;
	}
	
	.member_join .txt_guide {
	  width: 332px;
	}
	
	.type_form .txt_guide {
	  display: none;
	  padding: 0px 0 5px;
	  font-size: 11.5px;
	  color: rgb(56, 56, 56);
	  line-height: 18px;
	  word-break: break-all;
	  letter-spacing: -.1px;
	  clear: both;
	}
	
	.type_form .txt_guide .txt {
	  display: block;
	}
	
	.type_form .square .txt:before {
	  content: '\2022';
	  display: inline-block;
	  padding: 0 4px 0 2px;
	  font-size: 10px;
	  vertical-align: 0;
	}
	
	.member_join .field_address {
	  padding-bottom: 10px;
	}
	
	.member_join #addressSearch {
	  display: block;
	  overflow: hidden;
	  width: 332px;
	  height: 44px;
	  border: 1px solid #5f0080;
	  border-radius: 3px;
	  text-align: center;
	}
	
	.member_join #addressNo {
	  display: inline-block;
	  height: 100%;
	  margin-left: -14px;
	  padding-left: 25px;
	  font-weight: 800;
	  font-size: 14px;
	  color: #5f0080;
	  line-height: 40px;
	  background: url(https://res.kurly.com/pc/service/common/2006/ico_search.svg) no-repeat 0 50%;
	  background-size: 20px 20px;
	  vertical-align: top;
	}
	
	.member_join .birth .birth_day {
	  overflow: hidden;
	  width: 300px;
	  padding-left: 32px;
	  border: 1px solid #ccc;
	  border-radius: 3px;
	}
	
	.member_join .birth .birth_day input[type=text] {
	  float: left;
	  width: 50px;
	  height: 40px;
	  border: 0;
	  text-align: center;
	}
	
	.member_join .birth .bar {
	  float: left;
	}
	
	.member_join .birth .bar:after {
	  content: "/";
	  float: left;
	  width: 15px;
	  height: 100%;
	  font-size: 13px;
	  color: #ccc;
	  line-height: 42px;
	  text-align: center;
	}
	
	.Agree_use td {
	  display: inline-block;
	}
	
	.Agree01 {
	  font-size: 17px;
	  font-weight: 600;
	  color: rgb(68, 68, 68);
	  vertical-align: top;
	  line-height: 0px;
	}
	.Agree02 {
	  font-size: 12px;
	  font-weight: 600;
	  color: #666;
	  padding-left: 30px;
	}
	
	.Agree03 {
	  font-size: 14px;
	  color: rgb(68, 68, 68);
	  font-weight: 600;
	  line-height: 0px;
	}
	
	.Agree04 {
	  font-size: 14px;
	  color: rgb(68, 68, 68);
	  font-weight: 600;
	}
	
	img {
	  padding-top: 12px;
	  padding-right: 7px;
	}
	
	.member_join .form_footer {
	  padding-top: 40px;
	  text-align: center;
	}
	
	#main .member_join .form_footer .btn_join {
	  width: 240px;
	  height: 56px;
	  font-size: 15px;
	  font-weight: 800;
	  line-height: 54px;
	  
	}
	
	.type_form .btn.active {
	  border: 1px solid #5f0081;
	  background-color: #5f0080;
	  color: #fff;
	}
	
	input::placeholder{
	  color:rgb(165, 160, 160);
	}
	
	.field_address input{
	  display:none;
	  margin-top:10px
	}
</style>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
  <div id="container">
    <div id="main">
      <div id="content">
        <div class="page_aticle">
          <div class="type_form member_join">
            <form id="joinForm" action="/user/join.do" method="post">
              <div class="field_head">
                <h3 class="tit">회원가입</h3>
                <p class="sub">
                  <span class="ico">*</span>
                  필수입력사항
                </p>
              </div>

              <table class="tbl_comm">
                <tbody>
                  <tr class="fst field_id">
                    <th><label for="userId">아이디</label>
                      <span class="ico">
                        *
                        <span class="screen_out">필수항목</span>
                      </span>
                    </th>
                    <td>
                      <input type="text" name="userId" id="userId" maxlength="16" required="" option="regId"
                        placeholder="아이디를 입력해주세요">
                      <button type="button" class="btn default" id="btnIdCheck" style="cursor:pointer">중복확인</button>
                    </td>
                  </tr>

                  <tr class="field_pw">
                    <th>
                      <label for="userPw">비밀번호</label>
                      <span class="ico">*
                        <span class="screen_out">필수항목</span>
                      </span>
                    </th>
                    <td>
                      <input type="password" name="userPw" id="userPw" required=""  maxlength="16"
                        class="reg_pw bad" placeholder="비밀번호를 입력해주세요">
                    </td>
                  </tr>

                  <tr class="member_pwd field_repw">
                    <th>
                      <label for="userPwCheck">비밀번호 확인</label>
                      
                      <span class="ico">
                        *
                        <span class="screen_out">필수항목</span>
                      </span>
                    </th>
                    <td>
                      <input type="password" id="userPwCheck" name="userPwCheck"  maxlength="16"
                        class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">
                        <p id="pwCheckResult" style="font-size: 0.8rem;"></p>
                    </td>
                  </tr>

                  <tr class="field_name">
                    <th>
                      <label for="userNm">이름</label>
                      <span class="ico">
                        *
                        <span class="screen_out">필수항목</span>
                      </span>
                    </th>
                    <td>
                      <input type="text" id="userNm" name="userNm" required="" label="이름" placeholder="이름을 입력해주세요">
                    </td>
                  </tr>

                  <tr class="field_email">
                    <th>
                      <label for="userMail">이메일</label>
                      <span class="ico">
                        *
                        <span class="screen_out">필수항목</span>
                      </span>
                    </th>
                    <td>
                      <input type="text" id="userEmail" name="userEmail" size="30" required="" option="Email" label="이메일"
                        placeholder="예: marketkkurly@kkurly.com">
                    </td>
                  </tr>


                  <tr class="field_phone">
                    <th>
                      <label for="userTel">전화번호</label>
                      <span class="ico">
                        *
                        <span class="screen_out">필수항목</span>
                      </span>
                    </th>

                    <td>
                      <div class="phone_num">
                        <input type="text" id="userTel" name="userTel" value="" pattern="[0-9]*" placeholder="숫자만 입력해주세요"
                          class="inp">
                      </div>
                    </td>
                  </tr>

                  <tr>
                    <th>
                      주소
                      <span class="ico">
                        *
                        <span class="screen_out">필수항목</span>
                      </span>
                    </th>
                    <td class="field_address" onclick="daum_address()">
                      <a href="#" id="addressSearch" class="search">
                        <span id="addressNo" class="address_no">주소검색</span>
                      </a>
                      <input type="text" id="user_address" name="user_address" placeholder="주소">
                      <input type="text" id="user_detail_address" name="user_detail_address" placeholder="상세주소">
                      <p class="txt_guide" style="display:block;">
                        <span class="txt txt_case1">배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
                      </p>
                    </td>
                  </tr>

                  <tr class="birth field_birth">
                    <th>생년월일</th>
                    <td>
                      <div class="birth_day">
                        <input type="text" name="year" id="birth_year" pattern="[0-9]*" label="생년월일" size="4"
                          maxlength="4" placeholder="YYYY">
                        <span class="bar">
                        </span>
                        <input type="text" name="month" id="birth_month" pattern="[0-9]*" label="생년월일" size="2"
                          maxlength="2" placeholder="MM">
                        <span class="bar"></span>
                        <input type="text" name="day" id="birth_day" pattern="[0-9]*" label="생년월일" size="2"
                          maxlength="2" placeholder="DD">
                          <input type="hidden" id="userBD">
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <th>
                      이용약관동의
                      <span class="ico">
                        *
                        <span class="screen_out">필수항목</span>
                        </span>
                    </th>
                    <td class="Agree_use">
                      <span class="Agree01">
                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" id="a_img01" class="a_img01">
                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3Ni4wMDAwMDAsIC0xMDkwLjAwMDAwMCkgdHJhbnNsYXRlKDEwMC4wMDAwMDAsIDkzNi4wMDAwMDApIHRyYW5zbGF0ZSg2MC4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMiIgZmlsbD0iIzVGMDA4MCIvPgogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" id="b_img01" class="b_img01">
                        전체 동의합니다.
                      </span><br>
                      <span class="Agree02">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</span><br>
                      <span class="Agree03">
                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" id="a_img02" class="a_img02">
                         <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3Ni4wMDAwMDAsIC0xMDkwLjAwMDAwMCkgdHJhbnNsYXRlKDEwMC4wMDAwMDAsIDkzNi4wMDAwMDApIHRyYW5zbGF0ZSg2MC4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMiIgZmlsbD0iIzVGMDA4MCIvPgogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" id="b_img02" class="b_img02">
                        이용약관 동의
                      </span><br>
                      <span class="Agree04">
                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" id="a_img03" class="a_img03">
                         <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3Ni4wMDAwMDAsIC0xMDkwLjAwMDAwMCkgdHJhbnNsYXRlKDEwMC4wMDAwMDAsIDkzNi4wMDAwMDApIHRyYW5zbGF0ZSg2MC4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMiIgZmlsbD0iIzVGMDA4MCIvPgogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" id="b_img03" class="b_img03">
                        본인은 만 14세 이상입니다.
                      </span>
                    </td>
                  </tr>
                </tbody>
              </table>
              <div id="formSubmit" class="form_footer" style="border-top: 1px solid #333;">
                <button type="submit" class="btn active btn_join" style="cursor:pointer">가입하기</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
	<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
	
<script>
	$(document).ready(function(){
		$("#a_img01").show();
		$("#b_img01").hide();
		
		$("#a_img02").show();
		$("#b_img02").hide();
		
		$("#a_img03").show();
		$("#b_img03").hide();
		
		$("#a_img01").click(function() {
			$("#a_img01").hide();
			$("#b_img01").show();
			
			$("#a_img02").hide();
			$("#b_img02").show();
			
			$("#a_img03").hide();
			$("#b_img03").show();
		});
		
		$("#a_img02").click(function() {
			$("#a_img02").hide();
			$("#b_img02").show();
		});
		
		$("#a_img03").click(function() {
			$("#a_img03").hide();
			$("#b_img03").show();
		});
		
		$("#b_img01").click(function() {
			$("#a_img01").show();
			$("#b_img01").hide();
			
			$("#a_img02").show();
			$("#b_img02").hide();
			
			$("#a_img03").show();
			$("#b_img03").hide();
		});
		
		$("#b_img02").click(function() {
			$("#a_img02").show();
			$("#b_img02").hide();
		});
		
		$("#b_img03").click(function() {
			$("#a_img03").show();
			$("#b_img03").hide();
		});

		
		
		//아이디 중복 체크
	    $('.field_id .btn').click(function(){

	        if ($('.field_id input').val() == '') {    //만약에 아무것도 입력 되지 않은 상태면
	            alert('아이디를 입력해주세요');
	            $(".field_id .txt_guide .txt_case2").css('color', '#b3130b');
	            return;
	        }

	        $.ajax({
	               url: "/user/idCheck.do",
	               type: "post",
	               data: $("#joinForm").serialize(),
	               success: function(obj) {
	                  console.log(obj);
	                  
	                  if(obj == 'duplicatedId') {
	                     alert("중복된 아이디입니다.");
	                     $("#userId").focus();
	                     $("#userId").val("");
	                  } else {
	                     if(confirm("사용가능한 아이디입니다. " + $("#userId").val() + 
	                           "를(을) 사용하시겠습니까?")) {
	                        checkId = true;
	                        $("#btnIdCheck").attr("disabled", true);
	                     }
	                  }
	               },
	               error: function(e) {
	                  console.log(e);
	               }
	            })
	         });
		
        //id 중복체크 후 다시 id를 변경했을 때
        $("#userId").on("keyup", function() {
           checkId = false;
           $('.field_id .btn').attr("disabled", false);
        }); 

      //비밀번호 입력될때마다 유효성 검사
		$("#userPwCheck").on("change", function() {
			//비밀번호 확인까지 입력한 후 다시 비밀번호 재설정
			if($("#userPw").val() == $("#userPwCheck").val()) {
				let pwCheck = true;
				$("#pwCheckResult").css("color", "green");
				$("#pwCheckResult").text("비밀번호가 일치합니다.");
			} else {
				let pwCheck = false;
				/* console.log("!!?"); */
				$("#pwCheckResult").css("color", "red");
				$("#pwCheckResult").text("비밀번호가 일치하지 않습니다.");
			}
		});
        
        //회원가입 진행
		$("#joinForm").on("submit", function(e) {
			//서브밋이 실행될 때 구현할 동작
			//아이디 중복체크가 안됐거나 중복된 아이디를 사용했을 때
			if(!checkId) {
				alert("아이디 중복체크를 진행하세요.");
				$("#userId").focus();
				e.preventDefault();
				return;
			}
			
		});
        
	    $('#addressSearch').click(function(){
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    
	                
	                } else {
	                    
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	               
	                document.getElementById("user_address").value = addr;
	                

	                //주소 검색이 완료된 후 변하는 css 목록
	                $('.field_address input').css('display', 'block');
	                $('#addressNo').text('재검색')

	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("user_detail_address").focus();


	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	                // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	                // http://postcode.map.daum.net/guide  api주소 
	            }
	        }).open();

	    });
		
	});
</script>	
</body>
</html>