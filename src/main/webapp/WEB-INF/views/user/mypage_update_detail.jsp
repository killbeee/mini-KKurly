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
        width: 850px;
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
        padding: 20px 10px 0px 5px;
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
        width: 300px;
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
        padding-left: 30px;
        border: 1px solid #ccc;
        border-radius: 3px;
      }
      
      .member_join .birth .birth_day input[type=text] {
        float: left;
        width: 70px;
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
        font-weight: 900;
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
          <div id="myPageTop" class="page_aticle mypage_top">
              <h2 class="blind">???????????????</h2>
              <div class="mypagetop_user">
                  <div class="inner_mypagetop">
                      
                      <div class="grade_user">
                          <div class="grade">
                              <span class="blind">??????</span>
                              <span class="ico_grade class0">
                                  <span class="inner_grade">
                                      <span class="in_grade">??????</span>
                                  </span>
                              </span>
                              <div class="grade_bnenfit">
                                  <div class="user">
                                      <strong class="name">${loginUser.userNm }</strong>
                                      <input type="hidden" id="userNo" value="${loginUser.userNo }">
                                      <span class="txt">???</span>
                                  </div>
                                  <div class="benefit">
                                      <strong class="tit"></strong>
                                      ?????? 0.5%
                                  </div>
                              </div>
                          </div>
                          <div class="next">
                              <a href="#" class="total_grade">???????????? ??????</a>
                              <a href="#" class="next_month">?????? ??? ???????????? ??????</a>
                          </div>
                      </div>

                      <ul class="list_mypage">
                          <li class="user_reserve">
                              <div class="link">
                                  <div class="tit">
                                      ?????????
                                  </div>
                                  <a href="#" class="info">
                                      0 ???
                                      <img src="https://res.kurly.com/pc/service/common/1905/ico_arrow_56x56.png" alt="???????????????">
                                      <span class="date">?????? ?????? 0???</span>
                                  </a>
                              </div>
                          </li>
                          <li class="user_coupon">
                              <div class="link">
                                  <div class="tit">
                                      ??????
                                  </div>
                                  <a href="#" class="info">
                                      0 ???
                                      <img src="https://res.kurly.com/pc/service/common/1905/ico_arrow_56x56.png" alt="????????? ??????">
                                  </a>
                              </div>
                          </li>
                          <li class="user_kurlypass">
                              <div class="link">
                                  <div class="tit">
                                      ????????????    
                                  </div>
                                  <a href="#" class="info info_link">
                                      ????????????
                                      <img src="https://res.kurly.com/pc/service/common/1905/ico_arrow_56x56.png" alt="????????? ??????">
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
                  <h2 class="tit_snb">????????????</h2>
                  <div class="inner_sub">
                    <ul class="list_menu">
                          <li>
                              <a href="/user/mypage.do">????????????</a>
                          </li>
                          <li>
                              <a href="/user/mypage_address.do">????????? ??????</a>
                          </li>
                          <li>
                              <a href="/user/mypage_qna.do">?????? ?????? ??????</a>
                          </li>
                          <li class="on">
                              <a href="/user/mypage_update.do">?????? ?????? ??????</a>
                          </li>
                      </ul>
                  </div>
              </div>
              <div id="viewOrderList" class="page_section section_orderlist">
                  <div class="head_aticle">
                      <h2 class="tit">
                          ?????? ?????? ??????
                          <span class="tit_sub">
                              ?????? ?????? ????????? ???????????????.
                          </span>
                      </h2>
                  </div>
                  <ul class="list_order">
                    <li>
                      <div id="container">
                        <div id="main">
                          <div id="content">
                            <div class="page_aticle">
                              <div class="type_form member_join">
                                <form id="updateForm" action="/user/mypage_update_detail.do" method="post">
                    
                                  <table class="tbl_comm">
                                    <tbody>
                                      <tr class="fst field_id">
                                        <th><label for="userId">?????????</label>
                                        </th>
                                        <td>
                                          <input type="text" name="userId" id="userId" maxlength="16" required=""
                                            value="${loginUser.userId }" readonly style="background-color:lightgray;">
                                        </td>
                                      </tr>
                    
                                      <tr class="field_pw">
                                        <th>
                                          <label for="userPw">????????????</label>
                                          <span class="ico">*
                                            <span class="screen_out">????????????</span>
                                          </span>
                                        </th>
                                        <td>
                                          <input type="password" name="userPw" id="userPw" required=""  maxlength="16"
                                            class="reg_pw bad" placeholder="??????????????? ??????????????????">
                                        </td>
                                      </tr>
                    
                                      <tr class="member_pwd field_repw">
                                        <th>
                                          <label for="userPwCheck">???????????? ??????</label>
                                          
                                          <span class="ico">
                                            *
                                            <span class="screen_out">????????????</span>
                                          </span>
                                        </th>
                                        <td>
                                          <input type="password" id="userPwCheck" name="userPwCheck"  maxlength="16"
                                            class="confirm_pw" placeholder="??????????????? ?????? ??? ??????????????????">
                                            <p id="pwCheckResult" style="font-size: 0.8rem;"></p>
                                        </td>
                                      </tr>
                    
                                      <tr class="field_name">
                                        <th>
                                          <label for="userNm">??????</label>
                                        </th>
                                        <td>
                                          <input type="text" id="userNm" name="userNm" required="" label="??????" value="${loginUser.userNm }">
                                        </td>
                                      </tr>
                    
                                      <tr class="field_email">
                                        <th>
                                          <label for="userMail">?????????</label>
                                        </th>
                                        <td>
                                          <input type="text" id="userEmail" name="userEmail" size="30" required="" option="Email" label="?????????"
                                            value="${loginUser.userEmail }">
                                        </td>
                                      </tr>
                    
                    
                                      <tr class="field_phone">
                                        <th>
                                          <label for="userTel">????????????</label>
                                        </th>
                    
                                        <td>
                                          <div class="phone_num">
                                            <input type="text" id="userTel" name="userTel" pattern="[0-9]*" value="${loginUser.userTel }" class="inp">
                                          </div>
                                        </td>
                                      </tr>
                    
                                    </tbody>
                                  </table>
                                  <div id="formSubmit" class="form_footer">
                                    <button type="submit" class="btn active btn_join" style="cursor:pointer; margin-right:340px;">????????????</button>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div> 
                    </li>
                  </ul>
              </div>
          </div>    
      </div>
  </div>
</div>
<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
<script>
$(document).ready(function(){
	//???????????? ?????????????????? ????????? ??????
	$("#userPwCheck").on("change", function() {
		console.log($("#userId").val());
		//???????????? ???????????? ????????? ??? ?????? ???????????? ?????????
		if($("#userPw").val() == $("#userPwCheck").val()) {
			let pwCheck = true;
			$("#pwCheckResult").css("color", "green");
			$("#pwCheckResult").text("??????????????? ???????????????.");
		} else {
			let pwCheck = false;
			/* console.log("!!?"); */
			$("#pwCheckResult").css("color", "red");
			$("#pwCheckResult").text("??????????????? ???????????? ????????????.");
		}
	});
});
</script>
</body>
</html>