<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
	.section_login .find_view .btn_type1 {
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
	
	.btn_type1 .txt_type, .btn_type2 .txt_type {
	    display: inline-block;
	    height: 100%;
	    width:100%;
	    font-weight: 500;
	    font-size: 16px;
	    line-height: 51px;
	    text-align: center;
	}
	
	.btn_type1{
	    border: 1px solid #5f0081;
	    background-color: #5f0080;
	    width:100%;
	}
	.btn_type1 .txt_type{
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
	.btn_type1, .btn_type2{
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
  <div id="content">
    <div class="section_login">
        <h3 class="tit_login">FIND YOUR ID</h3>
        <div class="write_form find_view">
             <form method="post" name="fm_id" id="findIdForm" action="#">
                <input type="hidden" name="act" value="Y">
                <input type="hidden" name="rncheck" value="none">
                <input type="hidden" name="dupeinfo">
                <strong class="tit_label">이름</strong>
                <input type="text" name="userNm" id="userNm" size="20" tabindex="2" size="29" required="required" 
                placeholder="이름 입력">
                <strong class="tit_label">이메일</strong>
                <input type="text" name="userEmail" id="userEmail" size="20" tabindex="5" size="29" required="required" 
                placeholder="가입 시 등록한 이메일 입력">
                
                <button type="button" id="btnIdSearch" class="btn_type1" onclick="check()" style="cursor:pointer">
                    <span class="txt_type">확인</span>
                </button>
            </form>
        </div>
    </div>
  </div>
<jsp:include page="${pageContext.request.contextPath}/mainFooter.jsp"></jsp:include>
<script type="text/javascript">
/* 	function check() {
		
		if(document.fm_id.userNm.value == "") {
			alert("이름을 입력해주세요.");
			f.userNm.focus();
			return false;
		}
		if(document.fm_id.userEmail.value == "") {
			alert("이메일을 입력해주세요.");
			f.userEmail.focus();
			return false;
		}
		
		document.fm_id.method = "get";
		document.fm_id.action = "./idSearch.do";
		document.fm_id.submit();
	}  */
	
	$(function() {
		$("#btnIdSearch").on("click", function() {
			$.ajax({
				url: "/user/findId.do",
				type: "post",
				data: $("#findIdForm").serialize(),
				success: function(obj) {
					console.log(obj);
					//이름 체크
					if(obj == "nmFail") {
						alert("존재하지 않는 이름입니다.");
						$("#userNm").focus();
						return;
					}
					
					//이메일 체크
					if(obj =="emailFail") {
						alert("이메일이 틀렸습니다. 다시 확인해주세요.");
						$("#userEmail").focus();
						return;
					}
					
					location.href="/user/idSearch.do";
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