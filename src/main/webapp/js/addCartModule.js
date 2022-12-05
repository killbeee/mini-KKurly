/**
 * 
 */
 $(function() {
		$(".product-function").on("click", function() {
			
			//localStorage.setItem("kkurlyNonMembersBasket", "prod-ex");
			//console.log("localstorage test btn");
			//console.log($(this).children("img").attr("src"));
			
			
			//let tmpId = $(this).children("img").attr("src");
			let tmpId = $(this).attr("id");
			//console.log(tmpId);
			let prodNo = tmpId.substring(6);
			//console.log(prodNo);
			
			if (prodNo != null && prodNo !="") {
			
				let tmpData = {
						"prodNo" : prodNo,
						"prodQty" : "1"
				}
				let tmpArrayStr = new Array();
				
				if (localStorage.getItem('kkurlyNonMembersBasket') == null) {
					tmpArrayStr.push(tmpData);
					//tmpArrayStr.push(tmpData);
					localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
				} else {
					let tmpLocalStorage = localStorage.getItem('kkurlyNonMembersBasket');
					
					
					
					tmpArrayStr = JSON.parse(tmpLocalStorage);
					//if (hasDuplicate(tmpArrayStr, "prodNo") == true) return;
					// 장바구니 중복 확인 
					for (let tmp of tmpArrayStr) {
						//console.log(tmp.prodNo);
						if (tmp.prodNo === tmpData.prodNo) return;
					}
					//console.log(tmpArrayStr);
					
					tmpArrayStr.push(tmpData);
					
					//console.log(tmpArrayStr);
					
					localStorage.setItem("kkurlyNonMembersBasket", JSON.stringify(tmpArrayStr));
				}
			}
			 
			 
			/* 
			console.log("json test");
			let tmpJson = {
				"prodNo" : $(this).children("img").attr("src"),
				"prodQty" : "4"
			};
			let tmpJsonArray = [];
			tmpJsonArray.push(tmpJson);
			tmpJson = {
					"prodNo" : "a",
					"prodQty" : "4"
			};
			tmpJsonArray.push(tmpJson);
			tmpJson = {
					"prodNo" : "b",
					"prodQty" : "4"
			};
			tmpJsonArray.push(tmpJson);
			tmpJson = {
					"prodNo" : "c",
					"prodQty" : "4"
			};
			tmpJsonArray.push(tmpJson);
			tmpJsonArray.push(tmpJson);
			
			console.log(tmpJsonArray);
			
			let map = new Map();
			for (let i = 0; i < tmpJsonArray.length; i++) {
				map.set(tmpJsonArray[i].prodNo, tmpJsonArray[i].prodQty);
			}
			console.log(map);
			
			//let str = JSON.stringify(Array.from(map.entries()));
			//let str = JSON.stringify(map.entries());
			let str = JSON.stringify(Object.fromEntries(map));
			
			console.log(str);
			 */
		})
});
	