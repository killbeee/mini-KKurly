<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 조회</title>
<!-- <script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
   #body{background-color: gray; padding-left: 5%;}
   #container{width: 1300px; background-color: white;
    padding: 30px;
    border-radius: 10px;
    }
    h3{text-align: center;}
    table{border: 1px solid black;border-collapse: collapse;}
    th,td{border: 1px solid black;text-align: center ; font-size: 1.2em;}
    th{background-color: #83929e}
    td{width: 150px;height: 150px;}
	a{text-decoration: none;   color: black;}
</style>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
       <div id="container">
       <h1>주문 상세 정보</h1>
       <hr style="margin-bottom: 50px">
     	<table style="width: 80%; margin-left: 10%; margin-top:100px" >
	        <tr>
		        <th style="width: 35%;">주문번호</th>
				<td style="width: 65%;">${orderVO.orderNo}번 </td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">주문일</th>
				<td style="width: 65%;">${orderVO.orderDt}</td>
	        </tr>
	         <tr>
		        <th style="width: 35%;">유저 번호</th>
				<td style="width: 65%;">${userVo.userNo}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">주문자</th>
				<td style="width: 65%;">${userVo.userNm}</td>
	        </tr>
	         <tr>
		        <th style="width: 35%;">주문자 아이디</th>
				<td style="width: 65%;">${userVo.userId}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">배송지</th>
				<td style="width: 65%;">${orderVO.adrNo}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">수령인</th>
				<td style="width: 65%;">${orderVO.receiverNm}</td>
	        </tr>
	         <tr>
		        <th style="width: 35%;">수령인전화번호</th>
				<td style="width: 65%;">${orderVO.receiverTel}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">결제방식</th>
				<td style="width: 65%;">${orderVO.payWay}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">주문 상태</th>
				<td style="width: 65%;">${canceled}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">주문 처리상태</th>
				<td style="width: 65%;">${orderVO.orderStatus}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">총금액</th>
				<td style="width: 65%;">${orderVO.totalPrice}</td>
	        </tr>
       </table>

    </div>
   <jsp:include page="/footer_admin.jsp"></jsp:include>   
</body>
</html>