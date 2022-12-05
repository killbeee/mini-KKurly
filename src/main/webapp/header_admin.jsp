<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
  		body{background-color:lightgray;}
        #container1{width: 100%; height: 100px;
                    line-height: 30px;
                    margin-bottom: 30px;
                    display:flex;
        }
        
        .a{text-decoration: none;   color: white; text-shadow: 0 0 10px purple;
        }
        li{list-style-type: none; padding-top: 20px
        }
    	img{margin-bottom: 30px}
    </style>
</head>
<body>
    <div id="container1">
        <ul>
            <li class="ali">
             <a href="/"><img alt="" src="/images/KKURLY_LOGO.png" width="150px" class="a"></a>
            </li>
        </ul>
        <ul>
            <li class="ali">
                <a href="/product/searchProduct.do" class="a">상품 관리</a>
            </li>
        </ul>
        <ul>
            <li class="ali">
                <a href="/order/orderList.do?option=" class="a">주문 목록 검색</a>
            </li>
        </ul>
        <ul>
            <li class="ali">
                <a href="" class="a">카테고리 관리</a>
            </li>
        </ul>
        <ul>
            <li class="ali">
                <a href="/user/manageUser.do" class="a">회원 관리</a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="" ></a>
            </li>
        </ul>
        <ul>
            <li>
                <a href=""></a>
            </li>
        </ul>
        <ul>
            <li>
                <a href=""></a>
            </li>
        </ul>
          <ul>
            <li>
                <a href="/user/mypage.do" class="a">${loginUser.userId }님 반갑습니다.</a>
            </li>
        </ul>
          <ul>
              <li class="ali">
                <a href="/user/logout.do" class="a">로그아웃</a>
            </li>
        </ul>
       
    </div>
</body>
</html>