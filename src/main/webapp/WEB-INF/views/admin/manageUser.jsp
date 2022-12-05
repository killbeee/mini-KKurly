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
    h3{text-align: center;}
    th{background-color:#83929e}
    .checkbox{margin-left: 100px;}
    .checkbox1{margin-left: 250px}
    .checkbox2{margin-left: 150px}
    #search{margin-left: 200px; height: 30px;}
    table{border: 1px solid black;border-collapse: collapse;}
    th,td{border: 1px solid black;text-align: center ;}
    td{height: 150px;height: 150px;}
	a{text-decoration: none;   color: black;}
</style>
<script>

</script>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
    
    <div id="container">
       <h3>회원 목록</h3>
       <hr>
       <div class="search-section">
         		<form id="searchForm" action="/user/manageUser.do" method="post" >
			<table border="1" style="width: 1300px; border-collapse: collapse;">
				<tr>
					<td align="right">
						<select name="searchCondition">
							<option value="all"
								<c:if test="${searchCondition eq 'all' || searchCondition eq '' || searchCondition eq null}">
									selected="selected"
								</c:if>
							>전체</option>
							<option value="name"
								<c:if test="${searchCondition eq 'Id' }">
									selected="selected"
								</c:if>
							>ID</option>
							<option value="No"
								<c:if test="${searchCondition eq 'No' }">
									selected="selected"
								</c:if>
							>No</option>
						</select>
						<input type="text" name="searchKeyword" value="${searchKeyword }"  style="width: 800px">
						<button type="submit" id="btnSearch">검색</button>
					</td>
				</tr>
			</table>
		</form>
 	   </div>
 
       <hr style="clear: both">
       <table style="width: 100%;" id="table">
        <tr>
	        <th style="width: 5%;">유저 번호</th>
	        <th style="width: 25%">유저아이디</th>
	        <th style="width: 25%;">유저 이름</th>
	        <th style="width: 25%;">유저 이메일</th>  
	        <th style="width: 20%;">가입 일</th>
        </tr>
        <c:forEach items="${userList}" var="user">
        	<tr id="createTr">
	        <td><a href="/admin/manageUserDetail.do?userNo=${user.userNo}">${user.userNo}</a></td>
	            <td><a href="/user/manageUserDetail.do?userNo=${user.userNo}">${user.userId}</a></td>
	            <td><a href="/user/manageUserDetail.do?userNo=${user.userNo}">${user.userNm}</a></td>
	            <td><a href="/user/manageUserDetail.do?userNo=${user.userNo}">${user.userEmail}</a></td>
	            <td><a href="/user/manageUserDetail.do?userNo=${user.userNo}">${user.inputDt}</a></td>
        	</tr>
        </c:forEach>
        
       </table>
    </div>
   <jsp:include page="/footer_admin.jsp"></jsp:include>   

</body>
</html>