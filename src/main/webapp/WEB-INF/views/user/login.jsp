<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*, *:after, *:before{
	    box-sizing:border-box;
	    margin:0;
	    padding:0;
	}
	#content{
	    min-width:1050px;
	    padding-bottom:120px;
	}
	#header, #container, #content{
	    position:relative;
	}
	
	.section_login *{
	    font-family:noto sans;
	    color:#333;
	}
	.section_login{
	    width:340px;
	    margin:0 auto;
	    padding-top: 90px;
	    letter-spacing:-.6px;
	}
	.section_login .tit_login{
	    font-weight: 800;
	    font-size:20px;
	    line-height:20px;
	    text-align:center;
	}
	.section_login .write_form{
	    padding-top: 36px;
	}
	.section_login .login_view{
	    text-align: center;
	}
	.section_login input[type=checkbox]{
	    display:none;
	}
	.section_login .checkbox_save{
	    overflow:hidden;
	    padding-bottom:28px;
	}
	.section_login .checkbox_save .label_checkbox {
	    float:left;
	    margin-top:9px;
	}
	.section_login .label_checkbox{
	    position: relative;
	    padding: 0 0 3px 22px;
	    font-size: 13px;
	    line-height: 20px;    
	}
	.section_login .label_checkbox.checked:before {
	    background: url(
	        https://res.kurly.com/pc/service/order/1908/ico_checkbox_on.png) no-repeat 50% 50%;
	    }
	.section_login .label_checkbox:before {
	    content: "";
	    position: absolute;
	    left: 0;
	    top: 3px;
	    width: 16px;
	    height: 17px;
	    background: url(https://res.kurly.com/pc/service/order/1908/ico_checkbox_off.png) no-repeat 50% 50%;
	}
	.section_login .login_search{
	    float:right;
	    padding-top:13px;
	}
	.section_login .login_search .link{
	    float:left;
	    font-size:13px;
	}
	.section_login .login_search .bar{
	    float:left;
	    width:1px;
	    height:10px;
	    margin:3px 6px 0;
	    background-color: #333;
	}
	.section_login .btn_member{
	    margin-top:10px;
	}
	.section_login .btn_type2{
	    margin-top:10px;
	}
	.section_login input[type=number], .section_login input[type=text], .section_login input[type=password] {
	    width: 100%;
	    height: 54px;
	    padding: 0 19px;
	    border: 1px solid #ccc;
	    border-radius: 3px;
	    background-color: #fff;
	    font-size: 14px;
	    line-height: 20px;
	    outline: none;
	}
	.section_login [name=password], .section_login [name=ordno], .section_login .login_view [name=srch_mail], .section_login [name=srch_id] {
	    margin-top: 10px;
	}
	.section_login .find_view {
	    padding-top: 26px;
	    text-align: center;
	}
	.section_login .txt_email {
	    padding-top: 10px;
	    font-size: 14px;
	    color: #000;
	    line-height: 20px;
	}
	.section_login .find_view .tit_label {
	    display: block;
	    padding: 11px 0 7px;
	    font-size: 12px;
	    line-height: 18px;
	    text-align: left;
	}
	.section_login .find_view .btnLogin {
	    margin-top: 30px;
	}
	.section_login .find_view .thumb {
	    width: 52px;
	    height: 60px;
	    margin: 10px 0 5px;
	}
	.section_login .find_view .desc {
	    padding-bottom: 14px;
	    font-weight: 700;
	    font-size: 20px;
	    color: #302606;
	    line-height: 29px;
	}
	
	.btnLogin .txt_type, .btn_type2 .txt_type {
	    display: inline-block;
	    height: 100%;
	    width:100%;
	    font-weight: 500;
	    font-size: 16px;
	    line-height: 51px;
	    text-align: center;
	}
	
	.btnLogin{
	    border: 1px solid #5f0081;
	    background-color: #5f0080;
	    width:100%;
	}
	.btnLogin .txt_type{
	    color:#fff;
	}
	.btn_type2{
	    border:1px solid #5F4C0B;
	    background-color: #fff;
	    width:100%;
	}
	.btn_type2 .txt_type{
	    color:#5F4C0B;
	}
	.btnLogin, .btn_type2{
	    display:block;
	    overflow:hidden;
	    width:100%;
	    height:54px;
	    border-radius:3px;
	    font-size:0;
	    text-align:center;
	}
	
	button{
	    outline:none;
	}
	b, strong {
	    font-weight: 700;
	}
	h3{
	    display: block;
	    margin-block-start:1em;
	    margin-block-end:1em;
	    margin-inline-start:0px;
	    margin-inline-end:0px;
	}
	a{
	    background-color: transparent;
	    text-decoration: none;
	    color:inherit;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	div, th, td, li, dt, dd, p{
	    word-break:break-all;
	}
	div{
	    display:block;
	}
	body, input, select, textarea, button{
	    font-family:noto sans, malgun gothic;
	    line-height: 1;
	    letter-spacing:-.05em;
	    color:#4c4c4c;
	    font-size:12px;
	    max-width:100%;
	}
	img, video, canvas {
	    max-width: 100%;
	}
	
	.square .txt{
	    display:block;
	}
	
	.square .txt:before {
	    content: '\2022';
	    display: inline-block;
	    padding: 0 4px 0 2px;
	    font-size: 12px;
	    vertical-align: 0;
	}
	
	.square{
	    line-height: 18px;
	    font-size:12px;
	    display:none;
	}
</style>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/mainHeader.jsp"></jsp:include>
        <div id="container" class="container">
            <div id="main">
                <div id="content">
                    <div class="section_login">
                        <h3 class="tit_login">LOGIN</h3>
                        <div class="write_form">
                            <div class="write_view login_view">
                                <form id="loginForm">
                                	<input type="hidden" id="joinMsg" value="${joinMsg }">
                                    <input type="hidden" name="returnUrl" value="">
                                    <input type="hidden" name="close" value="">
                                    <input type="text" name="userId" id="userId" size="20" tabindex="1" value="" placeholder="아이디 입력">
                                    <input type="password" name="userPw" id="userPw" size="20" tabindex="2" placeholder="비밀번호 입력">
                                    <div class="checkbox_save">
                                        <div class="login_search">
                                            <a href="./findId.do" class="link">아이디 찾기</a>
                                            <span class="bar"></span>
                                            <a href="./findPw.do" class="link">비밀번호 찾기</a>
                                        </div>
                                    </div>
                                    <button type="button" id="btnLogin" class="btnLogin" style="cursor:pointer">
                                        <span class="txt_type">로그인</span>
                                    </button>
                                </form>
                                <a href="/user/join.do" class="btn_type2 btn_member" style="cursor:pointer">
                                    <span class="txt_type">회원가입</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<jsp:include page="${pageContext.request.contextPath}/mainFooter.jsp"></jsp:include>
	
	
	<script>
		$(function() {
			//회원가입 성공 시 메시지 출력
			if($("#joinMsg").val() != "" && $("#joinMsg").val() != null) {
				alert($("#joinMsg").val());
			}

			function enterkey(){ /* 엔터 누를 시 로그인 수행 */
			    if(window.event.keyCode==13){
			        check_input();
			    }
			}
			
			//로그인 시 아이디나 비밀번호가 틀렸을 경우에
			//대비하여 폼 서브밋 대신 ajax로 처리
			$("#btnLogin").on("click", function() {
				$.ajax({
					url: "/user/login.do",
					type: "post",
					data: $("#loginForm").serialize(),
					success: function(obj) {
						console.log(obj);
						//id 체크
						if(obj == "idFail") {
							alert("존재하지 않는 아이디입니다.");
							$("#userId").focus();
							return;
						}
						
						//pw 체크
						if(obj =="pwFail") {
							alert("비밀번호가 틀렸습니다. 비밀번호를 확인해주세요.");
							$("#userPw").focus();
							return;
						}
						
						//로그인 처리
						location.href="/";
					},
					error: function(e) {
						console.log(e);
					}
				});
			});
		});
		
		
	</script>
</body>
</html>