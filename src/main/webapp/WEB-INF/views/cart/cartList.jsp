<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>껄리 장바구니</title>
<style>
 
/* 	#title      { background-color: #6a5acd;}
	#select-top { background-color: #9370db;}
	#content    { background-color: #ee82ee;}
	#select-bottom { background-color: #ba55d3;}
	#side       { background-color: #dda0dd;}
 */	 
</style>

<style>
section {
	width: 1040px; height:auto; 
	min-height: 800px;
	margin: 0 auto;
/* 	align-items: center; */

}
footer {
	clear: both;
}
/*
#container {
 	width: 1000px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;

} 
*/

#title {
	clear: both;
	text-align: center;
	font-size: 1.8em;
	margin-top: 50px; margin-bottom: 50px;
}

#select-top {
	width: 1040px;
	margin-bottom: 10px;
	float: left;
	display: flex;
	align-items: center;
}
#select-top input[type="image"] {
	/* vertical-align: middle; */
	margin-right: 5px;
}
#select-top input[type="button"] {
	background: none; border: none;
	font-size: 16px;
	cursor: pointer;
}
#select-top .vertical-line{
	margin-left: 15px; margin-right: 15px;
	color: lightgray;
}
/* #select-top #btnDelete {
	display: none;
} */

#content {
	width: 740px;
	float: left;
	border-top: 1.6px solid black;
	border-bottom: 1.6px solid lightgray;
}
/* #content table:first-child { */
#content .cold-table, .frozen-table, normal-table {
	width: 740px;
	/* border: 1px solid black; */
}
#content table td {
	/* border: 1px solid black; */
}
#content .prod-tr td:nth-child(2) {
	padding-left: 4px;
}
#content .prod-tr td:nth-child(3) {
	padding-left: 20px;
}
#content .prod-te td:last-child {
	padding-right: 6px;
	text-align: right;
}
#cold-prod {
	display: flex;
	margin-top: 10px; margin-bottom: 10px;
	align-items: center;
}
#cold-prod .prod-text {
	font-size: 1.1em;
}
#cold-prod .prod-status {
	margin-left: 2px; margin-right: 10px;
}
#cold-prod .prod-fold {
	margin-left: 600px;
}
#frozen-prod {
	display: flex;
	border-top: 1.6px solid black;
	padding-top: 10px; padding-bottom: 10px;
	align-items: center;
}
#frozen-prod .prod-text {
	font-size: 1.1em;
}
#frozen-prod .prod-status {
	margin-left: 2px; margin-right: 10px;
}
#frozen-prod .prod-fold {
	margin-left: 600px;
}
#normal-prod {
	display: flex;
	border-top: 1.6px solid black;
	padding-top: 10px; padding-bottom: 10px;
	align-items: center;
}
#normal-prod .prod-text {
	font-size: 1.1em;
}
#normal-prod .prod-status {
	margin-left: 2px; margin-right: 10px;
}
#normal-prod .prod-fold {
	margin-left: 600px;
}

#select-bottom {
	width: 740px;
	margin-top: 10px;
	float: left;
	display: flex;
	align-items: center;
}
#select-bottom input[type="image"] {
	/* vertical-align: middle; */
	margin-right: 5px;
}
#select-bottom input[type="button"] {
	background: none; border: none;
	font-size: 16px;
	cursor: pointer;
}
#select-bottom .vertical-line{
	margin-left: 15px; margin-right: 15px;
	color: lightgray;
}


#side {
	width: 270px; height: 200px;
	margin: 0 0;
	float: right;
	background-color: #f5f5f5;
	/* border: 1.6px solid lightgray; */
	/* display: inline-block; */
}
#table-price {
	width: 270px;
	padding: 10px;
	border: 1px solid black;
}
#table-price td {
	height: 35px;
}
.text-price {
	padding-left: 10px;
}
#table-price-all {
	width: 270px;
	height: 60px;
	padding: 10px;
	border: 1px solid black;
}
.num-price {
	padding-right: 10px;
	text-align: right;
}
#table-order, #table-order-user{
	width: 270px; height: 45px;
	margin-top: 20px;
	border: none; border-radius: 2%;
	background-color: #6A0888;
	color: white;
	font-size: 19px;
	cursor: pointer;
}
/* 
input[type=checkbox] { display:none; }
input[type=checkbox] + label { 
	display: inline-block; 
	cursor: pointer; 
	line-height: 22px; 
	padding-left: 22px; 
	background: url('${pageContext.request.contextPath }/images/normal.png') left/22px no-repeat; 
}
input[type=checkbox]:checked + label { 
	background-image: url('${pageContext.request.contextPath }/images/cold.png') left/22px no-repeat; 
}
 */
</style>
</head>

<body>

<header>
	<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
</header>

<section>
<!-- <div id="container"> -->	
<!-- title -->
	<div id="title">
		<p>장바구니</p>
	</div>
<!-- select-top -->
	<div id="select-top">
 		<span><input type="image" src="${pageContext.request.contextPath }/images/click-off.png" class="btn-img-all"></span>
 		<!-- <span><input type="checkbox" id="btn-img-all" class="btn-img-all"><label for="btn-img-all">a</label></span> -->		
 		<span><input type="button" class="btn-txt-all" value="전체선택">(<span id="selectProd">0</span>/<span id="totalProd">0</span>)</span>
 		<span style="line-height" class="vertical-line">|</span>
 		<c:choose>
			<c:when test="${loginUser eq null}">
			<span><input type="button" class="btn-txt-delete" value="선택삭제"></span>
			</c:when>
			<c:otherwise>
			<span><input type="button" class="btn-txt-delete-user" name="del" value="선택삭제"></span>
			</c:otherwise>
		</c:choose>
	</div>
<!-- content -->
	<div id="content">
		<!-- <p>content</p> -->
		<div id="cold-prod">
			<span class="prod-status"><img src="${pageContext.request.contextPath }/images/cold.png"></span>
			<span class="prod-text">냉장 상품</span>
			<span class="prod-fold"><input type="image" src="${pageContext.request.contextPath }/images/fold.png" 
				class="btn-cold-fold btn-fold" value="unfold"></span>
		</div>
		<table class="cold-table"> 
			<c:forEach items="${coldList }" var="cold" varStatus="status">
				<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="cold-prod-table prod-table" id="${cold.prodNo }" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }${cold.prodImgPath }${cold.prodImgNm}" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>${cold.prodNm }</p>
				</td>
				<td style="width:14%;">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<c:choose>
								<c:when test="${loginUser eq null}">
								<td><input type="image" class="minus-btn" src="${pageContext.request.contextPath }/images/minus.png" value="${cold.prodNo }"/></td>
								<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result${cold.prodNo }">${coldQtyList[status.index] }</span></td>
								<td><input type="image" class="plus-btn" src="${pageContext.request.contextPath }/images/plus.png" value="${cold.prodNo }"/></td>
								</c:when>
								<c:otherwise>
								<td><input type="image" class="minus-btn-user" src="${pageContext.request.contextPath }/images/minus.png" value="${cold.prodNo }"/></td>
								<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result${cold.prodNo }">${coldQtyList[status.index] }</span></td>
								<td><input type="image" class="plus-btn-user" src="${pageContext.request.contextPath }/images/plus.png" value="${cold.prodNo }"/></td>
								</c:otherwise>
							</c:choose>
							
						</tr>
					</table>
				</td>
				<td style="width:14%; text-align: right;">
					<input type="hidden" value="${cold.prodPrice }">
					<span id="prod-price${cold.prodNo }" class="allPrice">${cold.prodPrice }</span> 원
				</td>
				<td style="width:13%; text-align: right; padding-right: 1.2%">
					<c:choose>
						<c:when test="${loginUser eq null}">
						<input type="image" class="del-prod" src="${pageContext.request.contextPath }/images/delete.png" value="${cold.prodNo }">
						</c:when>
						<c:otherwise>
						<input type="image" class="del-prod-user" src="${pageContext.request.contextPath }/images/delete.png" value="${cold.prodNo }">
						</c:otherwise>
					</c:choose>
				</td>
				</tr>
			</c:forEach>
			
		</table>
		<div id="frozen-prod">
			<span class="prod-status"><img src="${pageContext.request.contextPath }/images/frozen.png"></span>
			<span class="prod-text">냉동 상품</span>
			<span class="prod-fold"><input type="image" src="${pageContext.request.contextPath }/images/fold.png" 
				class="btn-frozen-fold btn-fold" value="unfold"></span>
		</div>
		<table class="frozen-table">
			<c:forEach items="${frozenList }" var="frozen" varStatus="status">
				<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="frozen-prod-table prod-table" id="${frozen.prodNo}" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }${frozen.prodImgPath }${frozen.prodImgNm}" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>${frozen.prodNm }</p>
				</td>
				<td style="width:14%;">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<c:choose>
								<c:when test="${loginUser eq null}">
								<td><input type="image" class="minus-btn" src="${pageContext.request.contextPath }/images/minus.png" value="${frozen.prodNo }"/></td>
								<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result${frozen.prodNo }">${frozenQtyList[status.index] }</span></td>
								<td><input type="image" class="plus-btn" src="${pageContext.request.contextPath }/images/plus.png" value="${frozen.prodNo }"/></td>
								</c:when>
								<c:otherwise>
								<td><input type="image" class="minus-btn-user" src="${pageContext.request.contextPath }/images/minus.png" value="${frozen.prodNo }"/></td>
								<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result${frozen.prodNo }">${frozenQtyList[status.index] }</span></td>
								<td><input type="image" class="plus-btn-user" src="${pageContext.request.contextPath }/images/plus.png" value="${frozen.prodNo }"/></td>
								</c:otherwise>
							</c:choose>
							
						</tr>
					</table>
				</td>
				<td style="width:14%; text-align: right;">
					<input type="hidden" value="${frozen.prodPrice }">
					<span id="prod-price${frozen.prodNo }" class="allPrice">${frozen.prodPrice }</span> 원
				</td>
				<td style="width:13%; text-align: right; padding-right: 1.2%">
					<c:choose>
						<c:when test="${loginUser eq null}">
						<input type="image" class="del-prod" src="${pageContext.request.contextPath }/images/delete.png" value="${frozen.prodNo }">
						</c:when>
						<c:otherwise>
						<input type="image" class="del-prod-user" src="${pageContext.request.contextPath }/images/delete.png" value="${frozen.prodNo }">
						</c:otherwise>
					</c:choose>
				</td>
				</tr>
			</c:forEach>
			
			
		</table>
		<div id="normal-prod">
			<span class="prod-status"><img src="${pageContext.request.contextPath }/images/normal.png"></span>
			<span class="prod-text">상온 상품</span>
			<span class="prod-fold"><input type="image" src="${pageContext.request.contextPath }/images/fold.png"  
				class="btn-normal-fold btn-fold" value="unfold"></span>
		</div>
		<table class="normal-table" id="normal-table">
			<c:forEach items="${normalList }" var="normal" varStatus="status">
				<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="normal-prod-table prod-table" id="${normal.prodNo }" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }${normal.prodImgPath }${normal.prodImgNm}" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>${normal.prodNm }</p>
				</td>
				<td style="width:14%;">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<c:choose>
								<c:when test="${loginUser eq null}">
								<td><input type="image" class="minus-btn" src="${pageContext.request.contextPath }/images/minus.png" value="${normal.prodNo }"/></td>
								<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result${normal.prodNo }">${normalQtyList[status.index] }</span></td>
								<td><input type="image" class="plus-btn" src="${pageContext.request.contextPath }/images/plus.png" value="${normal.prodNo }"/></td>
								</c:when>
								<c:otherwise>
								<td><input type="image" class="minus-btn-user" src="${pageContext.request.contextPath }/images/minus.png" value="${normal.prodNo }"/></td>
								<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result${normal.prodNo }">${normalQtyList[status.index] }</span></td>
								<td><input type="image" class="plus-btn-user" src="${pageContext.request.contextPath }/images/plus.png" value="${normal.prodNo }"/></td>
								</c:otherwise>
							</c:choose>
							
						</tr>
					</table>
				</td>
				<td style="width:14%; text-align: right;">
					<input type="hidden" value="${normal.prodPrice }">
					<span id="prod-price${normal.prodNo }" class="allPrice">${normal.prodPrice }</span> 원
				</td>
				<td style="width:13%; text-align: right; padding-right: 1.2%">
					<c:choose>
						<c:when test="${loginUser eq null}">
						<input type="image" class="del-prod" src="${pageContext.request.contextPath }/images/delete.png" value="${normal.prodNo }">
						</c:when>
						<c:otherwise>
						<input type="image" class="del-prod-user" src="${pageContext.request.contextPath }/images/delete.png" value="${normal.prodNo }">
						</c:otherwise>
					</c:choose>
				</td>
				</tr>
			</c:forEach>	
		
		</table>
	</div>
<!-- side -->
	<div id="side">
		<table id="table-price">
			<tr>
				<td class="text-price">상품금액</td>
				<td class="num-price prodPrice">${prodPrice }</td>
				<td>원</td>
			</tr>
			<tr>
				<td class="text-price">상품할인금액</td>
				<td class="num-price discountPrice">0</td>
				<td>원</td>
			</tr>
			<tr>
				<td class="text-price">배송비</td>
				<td class="num-price delivery">0</td>
				<td>원</td>
			</tr>
		</table>
		<table id="table-price-all">
			<tr>
				<td class="text-price">결제예정금액</td>
				<td class="num-price price">${totalPrice }</td>
				<td>원</td>
			</tr>
		</table>
		<!-- <table id="table-order">
			<tr>
				<td><input type="button" onclick="location.href='/cart/order.do'"></td>
			</tr>
		</table> -->
		<c:choose>
			<c:when test="${loginUser eq null}">
				<input type="button" onclick="location.href='/user/login.do'" class="temp" id="table-order" value="주문 전 로그인">
			</c:when>
			<c:otherwise>
				<form action="/cart/order.do" method="post" class="orderContainer" id="orderContainer" style="display:none;">
          				<input type="hidden" class="orderInput" id="order" name="order">
          		</form>
				<input type="button" id="table-order-user" class="${loginUser.userNo }" value="주문하기">
			</c:otherwise>
		</c:choose>
		
	</div>
<!-- select-bottom -->
	<div id="select-bottom">
 		<span><input type="image" src="${pageContext.request.contextPath }/images/click-off.png" class="btn-img-all"></span>		
 		<span><input type="button" class="btn-txt-all" value="전체선택 (0/0)"></span>
 		<span style="line-height" class="vertical-line">|</span>
 		<span><input type="button" class="btn-txt-delete" value="선택삭제"></span>
	</div>
<!-- </div> -->
</section>


<header>
	<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
</header>

<script>
	let selectAllFlag = false;
	let foldColdFlag = false;
	let foldFrozenFlag = false;
	let foldNormalFlag = false;
	
	$(function() {
		
		let numOfProd = $(".prod-prod").length;
		
		console.log(numOfProd);
		$("#totalProd").text(numOfProd);
	
		$(".btn-img-all").click(function() {
			if (selectAllFlag == false) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = true;
				$(".prod-table").each(function(index, item){
					$(this).val("off");
				});
				
				$(".prod-table").click();
			} else {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
				$(".prod-table").each(function(index, item){
					$(this).val("on");
				});

				
				$(".prod-table").click();
			}
		});
		
		$(".btn-txt-all").click(function() {
			if (selectAllFlag == false) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = true;
				$(".prod-table").each(function(index, item){
					$(this).val("off");
				});
				$(".prod-table").click();
			} else {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
				$(".prod-table").each(function(index, item){
					$(this).val("on");
				});
				$(".prod-table").click();
			}
		}); 
		
		$(".btn-fold").click(function(e) {
			if ($(this).val() == "unfold") {
				$(this).attr("src", "${pageContext.request.contextPath }/images/unfold.png");
				$(this).val("fold");
				if ($(this).attr("class") == "btn-cold-fold btn-fold") $(".cold-table").hide();
				if ($(this).attr("class") == "btn-frozen-fold btn-fold") $(".frozen-table").hide();
				if ($(this).attr("class") == "btn-normal-fold btn-fold") $(".normal-table").hide();
			} else if ($(this).val() == "fold"){
				$(this).attr("src", "${pageContext.request.contextPath }/images/fold.png");
				$(this).val("unfold");
				if ($(this).attr("class") == "btn-cold-fold btn-fold") $(".cold-table").show();
				if ($(this).attr("class") == "btn-frozen-fold btn-fold") $(".frozen-table").show();
				if ($(this).attr("class") == "btn-normal-fold btn-fold") $(".normal-table").show();
			}
		});
		
		
		$(".prod-table").click(function(e) {
			e.preventDefault();
			
 			console.log($(this).val());
			//console.log($(".prod-table").length); */
			if ($(this).val() == "on") {
				$(this).attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				$(this).val("off");

			} else if ($(this).val() == "off") {
				$(this).attr("src", "${pageContext.request.contextPath }/images/click-on.png");
				$(this).val("on");

			}
			
			let numOfChecked = 0;
			$(".prod-table").each(function(index, item){
				if($(this).val() == "on") {
					numOfChecked += 1;
				}
/* 				console.log($(this).val());
				console.log(numOfChecked); */
			});
			$("#selectProd").text(numOfChecked);
			
			if (numOfChecked == $(".prod-table").length) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-on.png");
				selectAllFlag = true;
			} else if (numOfChecked < $(".prod-table").length){
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
			}


		});
		
		$(".plus-btn").on("click", function() {
			let prodNo = $(this).val();   // prodNo

			let prodQty = parseInt($("#result"+prodNo).text()) + 1;
			updateItemInLocalStorage(prodNo, prodQty);
			let prodPrice = parseInt($("#prod-price"+prodNo).prev().val());
			$("#result"+prodNo).text(prodQty);
			$("#prod-price"+prodNo).text(prodQty * prodPrice);
			$(".allPrice").trigger("change");
		})
		

		$(".minus-btn").on("click", function() {
			
			let prodNo = $(this).val();   // prodNo

			let prodQty = parseInt($("#result"+prodNo).text());
			updateItemInLocalStorage(prodNo, prodQty);
			if (prodQty > 1) prodQty = prodQty- 1;
			let prodPrice = parseInt($("#prod-price"+prodNo).prev().val());
			//console.log(prodQty + " " +prodPrice);
			$("#result"+prodNo).text(prodQty);
			$("#prod-price"+prodNo).text(prodQty * prodPrice);
			$(".allPrice").trigger("change");
		});
		
		$(".plus-btn-user").on("click", function() {
			let prodNo = $(this).val();   // prodNo

			let prodQty = parseInt($("#result"+prodNo).text()) + 1;
			updateItemInLocalStorage(prodNo, prodQty);
			updateItemInCartDB(prodNo, prodQty);
			let prodPrice = parseInt($("#prod-price"+prodNo).prev().val());
			$("#result"+prodNo).text(prodQty);
			$("#prod-price"+prodNo).text(prodQty * prodPrice);
			$(".allPrice").trigger("change");
		})
		

		$(".minus-btn-user").on("click", function() {
			
			let prodNo = $(this).val();   // prodNo

			let prodQty = parseInt($("#result"+prodNo).text());
			
			if (prodQty > 1) prodQty = prodQty- 1;
			let prodPrice = parseInt($("#prod-price"+prodNo).prev().val());
			updateItemInLocalStorage(prodNo, prodQty);
			updateItemInCartDB(prodNo, prodQty);
			//console.log(prodQty + " " +prodPrice);
			$("#result"+prodNo).text(prodQty);
			$("#prod-price"+prodNo).text(prodQty * prodPrice);
			$(".allPrice").trigger("change");
		});
		
		$(".del-prod").on("click", function() {
						
			//$(this).parent().parent("tr").parent("table").hide();
			
			//let prodprice = $("#prod-price" + $(this).val()).text();
			//console.log("price" + prodprice);
			
			
			//let t = parseInt($(".prodPrice").text()) -  parseInt(prodprice);
			//$(".prodPrice").text(t);
			//if (t==0) $(".prodPrice").text("0");
			
			delItemInLocalStorage($(this).val());
			//console.log($(this).parent().parent());
			//console.log($(this).parent().parent().children("tr"));
			//console.log($(this).parent().parent("tr").length);
			//console.log($(".normal-table").children("tr"));
			$(this).parent().parent("tr").remove();
			
			$(".allPrice").trigger("change");
			if ($(".allPrice").length == 0) {
				$(".prodPrice").text(0);
				$(".num-price").trigger("change");
			}
			
			countNumOfSelect();
			countNumOfTotal();
			
		})
		
		$(".del-prod-user").on("click", function() {
			console.log("del prod user: " + $(this).val());
			
			delItemInLocalStorage($(this).val());
			delItemInCartDB($(this).val());
			$(this).parent().parent("tr").remove();
			
			$(".allPrice").trigger("change");
			if ($(".allPrice").length == 0) {
				$(".prodPrice").text(0);
				$(".num-price").trigger("change");
			}
			
			countNumOfSelect();
			countNumOfTotal();
			
		});
		
/* 		//////./////////
		$("#orderContainer").on("submit", function(e) {
			e.preventDefault();
			console.log($("#tmp").val());
		});
		
		/////////////// */
		
		$(".btn-txt-delete").on("click", function(e) {
			console.log("btn test");
			
			$(".prod-table").each(function(index, item){
				if($(this).val() == "on") {
					delItemInLocalStorage($(this).attr("id"));
					delItemInCartDB($(this).attr("id"));
					$(this).parent().parent("tr").remove();
					
				}
			});
			
			$(".allPrice").trigger("change");
			if ($(".allPrice").length == 0) {
				$(".prodPrice").text(0);
				$(".num-price").trigger("change");
			}
			
			countNumOfSelect();
			countNumOfTotal();
			//console.log($(".prod-table").length);
			
			if (selectAllFlag == true) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
				/* $(".prod-table").each(function(index, item){
					$(this).val("on");
				});
				$(".prod-table").click(); */
			}
			
		});
		
		$(".btn-txt-delete-user").on("click", function() {
			console.log("btn test user");
			
			$(".prod-table").each(function(index, item){
				if($(this).val() == "on") {
					delItemInLocalStorage($(this).attr("id"));
					delItemInCartDB($(this).attr("id"));
					$(this).parent().parent("tr").remove();
					
				}
			});
			
			$(".allPrice").trigger("change");
			if ($(".allPrice").length == 0) {
				$(".prodPrice").text(0);
				$(".num-price").trigger("change");
			}
			
			countNumOfSelect();
			countNumOfTotal();
			//console.log($(".prod-table").length);
			
			if (selectAllFlag == true) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
				/* $(".prod-table").each(function(index, item){
					$(this).val("on");
				});
				$(".prod-table").click(); */
			}
			
		});
		
		$(".allPrice").on("change", function() {
			
			let total = 0;

			//console.log($(".allPrice").length);
			$(".allPrice").each(function(index, item){
				total += parseInt($(this).text());
			});

			//console.log(total);
			$(".prodPrice").text(total);
			$(".num-price").trigger("change");
			
		});
		
		$(".num-price").on("change", function() {
			let total = 0;
			//console.log($(".allPrice").length);
			total += parseInt($(".prodPrice").text());
			total += parseInt($(".discountPrice").text());
			total += parseInt($(".delivery").text());
			//console.log(total);
			$(".price").text(total);
		});
		
		function countNumOfSelect() {
			let numOfChecked = 0;
			$(".prod-table").each(function(index, item){
				if($(this).val() == "on") {
					numOfChecked += 1;
				}
			});
			$("#selectProd").text(numOfChecked);
		}
		
		function countNumOfTotal() {
			let numOfProd = $(".prod-prod").length;
			
			console.log(numOfProd);
			$("#totalProd").text(numOfProd);
		}
		
		
		$(".product-function").on("click", function() {

			let tmpId = $(this).parent().prev().attr("src");
			
			let tmpData = {
					"prodNo" : tmpId,
					"prodQty" : "1"
			}
			let tmpArrayStr = new Array();
			
			if (localStorage.getItem('kkurlyNonMembersBasket') == null) {
				tmpArrayStr.push(tmpData);

				localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
			} else {
				let tmpLocalStorage = localStorage.getItem('kkurlyNonMembersBasket');
				
				
				
				tmpArrayStr = JSON.parse(tmpLocalStorage);

				// 장바구니 중복 확인 
				for (let tmp of tmpArrayStr) {
					if (tmp.prodNo === tmpData.prodNo) return;
				}
				
				tmpArrayStr.push(tmpData);
				
				localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
			}
	
		})
		
		
		function delItemInLocalStorage(prodNo) {
			let tmpLocalStorage = localStorage.getItem('kkurlyNonMembersBasket');
			let tmpArrayStr = new Array();
			console.log($("#tmp").val());
			
			tmpArrayStr = JSON.parse(tmpLocalStorage);
			
			for (let idx in tmpArrayStr) {
				console.log(idx);
			
				if (tmpArrayStr[idx].prodNo == prodNo) {
					tmpArrayStr.splice(idx, 1);
					break;
				}
			}
			
			localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
		}
		
		function delItemInCartDB(prodNo) {
			
			$.ajax({
				url: "/cart/deleteItemCart.do",
				type: "post",
				data: (
						"prodNo=" + prodNo
					  ),
				success: function(obj) {
					console.log(obj);
				},
				error: function(e) {
					console.log(e);
				}
			});
			
		}
		
		function updateItemInLocalStorage(prodNo, prodQty) {
			let tmpLocalStorage = localStorage.getItem('kkurlyNonMembersBasket');
			let tmpArrayStr = new Array();
			
			tmpArrayStr = JSON.parse(tmpLocalStorage);
			
			for (let idx in tmpArrayStr) {
				if (tmpArrayStr[idx].prodNo == prodNo) {
					tmpArrayStr[idx].prodQty = prodQty;
					break;
				}
			}
			
			localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
		}
		
		function updateItemInCartDB(prodNo, prodQty) {
			$.ajax({
				url: "/cart/updateItemCart.do",
				type: "post",
				data: (
						"prodNo=" + prodNo + "&prodQty=" + prodQty
					  ),
				success: function(obj) {
					console.log(obj);
				},
				error: function(e) {
					console.log(e);
				}
			});
		}
		
		$("#table-order-user").on("click", function() {
			let userNo = $(this).attr("class");
			let arrProdNo = new Array();
			let arrProdQty = new Array();
			
			let prodInfo = new Array();
			
			$(".prod-table").each(function(index, item){
				if($(this).val() == "on") {
					let prodNo = $(this).attr("id");
					let prodQty = $("#result"+prodNo).text();
					
					console.log("No: " + prodNo + ", Qty: " + prodQty);
				
					let tmp = {
						"prodNo": prodNo,
						"prodQty": prodQty
					};
					prodInfo.push(JSON.stringify(tmp));
					
				}
			});

			
			let tmpJson = {
				"userNo" : userNo,
				"prodInfo": prodInfo
			};
			
			//let jsonParse = JSON.parse(tmpJson);
  			let tmpData = JSON.stringify(tmpJson);
  			
  			console.log(tmpJson);
  			console.log(tmpData);
  			
  			$("#order").val(tmpData);
  			$("#orderContainer").submit();
			
			
		});
		
	});

</script>

</body>
</html>