<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 회원 관리</title>
<!-- <script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

   #body{background-color: gray; padding-left: 5%;}
   #container{width: 1300px; background-color: white;
    padding: 30px;
    border-radius: 10px;
    }
    h1{text-align: center;}
    table{border: 1px solid black;border-collapse: collapse;}
    th,td{border: 1px solid black;text-align: center ;  height: 150px}
    th{background-color: #83929e}
    td{width: 150px;height: 150px;}
	a{text-decoration: none;   color: black;}
</style>
<script>

</script>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
    
    <div id="container">
       <h1>상품 상세 정보</h1>
       
       <hr style="margin-bottom: 50px">
     	<table style="width: 80%; margin-left: 10%; margin-top:100px" >
     	
	        <tr>
		        <th style="width: 35%;">상품 이름</th>
				<td style="width: 65%;">${prodVO.prodNm}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">상품 사진</th>
				<td style="width: 65%;"><img src="/upload/${prodVO.prodImgNm}" width="150px" class="a"></td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">판매가</th>
				<td style="width: 65%;">${prodVO.prodPrice}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">상품 수량</th>
				<td style="width: 65%;">${prodVO.prodQty}</td>
	        </tr>
	        <tr>
		        <th style="width: 35%;">판매단위</th>
				<td style="width: 65%;">${prodVO.prodUnit}</td>
	        </tr>
	         <tr>
		        <th style="width: 35%;">중량/용량</th>
				<td style="width: 65%;">${prodVO.prodVol}</td>
	        </tr>
       </table>
       <div id="btnSession" style="margin-top: 30px; text-align: center;">
     
       <a href="/product/prodDelete.do?prodNo=${prodVO.prodNo}" id="deleteBtn">물품 삭제</a>
       </div>
    </div>
   <jsp:include page="/footer_admin.jsp"></jsp:include>   

</body>
</html>