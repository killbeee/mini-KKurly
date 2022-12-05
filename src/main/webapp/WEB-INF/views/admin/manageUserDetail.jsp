<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<!-- <script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

   #body{background-color: gray; padding-left: 5%;}
   #container{width: 1300px; background-color: white;
    padding: 30px;
    border-radius: 10px;
    }
    h1{text-align: center;}
    th{background-color:#83929e}
    table{border: 1px solid black;border-collapse: collapse;}
    th,td{border: 1px solid black;text-align: center ;  height: 150px}
    td{height: 150px;height: 150px;}
	a{text-decoration: none;   color: black;}
</style>
<script>

</script>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
    
    <div id="container">
       <h1>회원 상세 정보</h1>
       <hr style="margin-bottom: 50px">
       
       <table style="width: 80%; margin-left: 10%; " >
        <tr>
	        <th style="width: 35%;">유저 아이디</th>
			<td style="width: 65%;">${user.userId}</td>
        </tr>
        <tr>
	        <th style="width: 35%;">유저 이름</th>
			<td style="width: 65%;">${user.userNm}</td>
        </tr>
        <tr>
	        <th style="width: 35%;">유저 이메일</th>
			<td style="width: 65%;">${user.userEmail}</td>
        </tr>
        <tr>
	        <th style="width: 35%;">유저 번호</th>
			<td style="width: 65%;">${user.userNo}</td>
        </tr>
        <tr>
	        <th style="width: 35%;">가입일</th>
			<td style="width: 65%;">${user.inputDt}</td>
        </tr>
         <tr>
	        <th style="width: 35%;">닉네임</th>
			<td style="width: 65%;">${user.userNick}</td>
        </tr>
         <tr>
	        <th style="width: 35%;">휴면여부</th>
	         <td style="width: 65%;">
					<c:if test="${user.useYn eq 'Y'}">
		            	사용중
		            </c:if>
		             <c:if test="${user.useYn eq 'N'}">
		            	휴면
		            </c:if>
		  </td>
        </tr>
  
        
       </table>
       <div id="btnSession" style="margin-top: 30px; text-align: center; ">
       <a href="/user/updateUser.do?userNo=${user.userNo }" id="updateBtn" style="background-color: lightgray; border:1px solid black;">회원 수정</a>
       <a href="/user/deleteUser.do?userNo=${user.userNo }" id="deleteBtn"  style="background-color: lightgray; border:1px solid black;">회원 삭제</a>
       </div>
    </div>
   <jsp:include page="/footer_admin.jsp"></jsp:include>   

</body>
</html>