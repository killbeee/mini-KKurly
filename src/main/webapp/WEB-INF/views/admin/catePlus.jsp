<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 관리</title>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<style>

   #body{background-color: gray; padding-left: 5%;}
   #container2, #container3,#container0{width: 1300px; background-color: white;
    padding: 30px;
    border-radius: 10px;
    }
   #container3{padding-bottom: 20px} 
    .sort{background-color: white;}
    #blank{width: 1000px; height: 50px ; background-color: gray}
   #m_menu_ctg,#p_name, #img_div{float: left;}
   .sort{
    float: left;
    display: inline-block;
    width: 200px;
    margin: 30px 0;
    border: 1px solid black;
   }
   #hr{clear: both;}
   li{list-style: none;  cursor: pointer;}


   li:nth-child(1){visibility: inherit}
   input{height: 20px; width: 400px;}
   h3{cursor: pointer; }
   /*이미지 부분*/
   #img_div,.image-container{display: inline-block;}
   #sub_input{margin-left: 300px;}
   
   /*분류 숨기기*/
   #s_m_1,#s_m_2,#s_m_3{display:none;};
   
   nav ul ul ul {
    position: absolute;
    top:0;
    left:100%;
}

</style>
  <script>
//jquery
/*     $(function(){
        $("#sub_prodNm").on("keyup",function(){
            $("#prodNm").val($("#sub_prodNm").val())
          }) 
        $("#sub_price").on("keyup",function(){
            $("#prodPrice").val($("#sub_price").val())
        })
        $("#sub_qty").on("keyup",function(){
            $("#prodQty").val($("#sub_qty").val())
          })
          $("#sub_unit").on("change",function(){
           $("#prodUnit").val($("#sub_unit").val())
       })
       $("#sub_vol1").on("keyup",function(){
           $("#prodVol").val($("#sub_vol1").val()+$("#sub_vol2").val())
         })
      $("#sub_vol2").on("change",function(){
           $("#prodVol").val($("#sub_vol1").val()+$("#sub_vol2").val())
         })  
         

         
         
         
    }) */
   
</script>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
    <!--카테고리는 DB에서 불러오기-->
       <div id="container0">
        <h3 title="상품의 카테고리를 지정하는 곳입니다.">카테고리 - 상품명</h3>
        <hr>
        <!--카테고리-->
		    <nav>
			    <ul><a href="#">상온</a>
			   		<li>메뉴 1</li>
			    	<li>메뉴 1</li>
			    	<li>메뉴 1</li>
			    	<li>메뉴 1</li>
			    	<li>메뉴 1</li>
			    </ul>
			</nav>
        <hr id="hr">
            <!--상품명 중복되지않게 확인하는 로직 db연동해서 하기-->
        <div id="p_name">상품명<span style="color:red">*</span>&ensp;&ensp;</div>
        <div id="p_name_input">
        <input type="text" id="sub_prodNm">
        <button type="button"id="btnCheck" style="height: 30px; width: 150px;">상품 이름 중복 확인</button>
        </div>
        <hr>
    </div>
    <div id="blank"></div>
    <div id="container2">
        <h3 title="상품의 원하는 판매가를 기입합니다.">주문옵션 - 판매가</h3><hr><br>
            판매가&ensp;&ensp;: <input type="text" id="sub_price"><br><br><hr>
            판매수량: <input type="text" name="" id="sub_qty"><br><br><hr>
            판매단위: <select style="width:300px;height:30px;" id="sub_unit">
                     <option value="not">--판매단위을 선택해주세요--</option>           
                     <option value="개">개</option>
                     <option value="캔">캔</option>
                     <option value="단">단</option>
                     <option value="봉">봉</option>             
                  </select><br><br><hr>
            판매중량: <input type="text" name="" id="sub_vol1">
            		<select style="width:50px;height:30px;" id="sub_vol2"> 
                     		<option value="not">--판매중량을 선택해주세요--</option>           
                     		<option value="g">g</option>
                     		<option value="kg">kg</option>
                     </select>
           
            
    </div>
    
    <div id="blank"></div>

        <!--이미지는 db에 저장,  상품정보도 DB에서 저장-->
   	<div id="container3">
        <h3 title="상품의 메인 이미지를 등록하고 작성한 내용이 바르게 작성되었는지 확인합니다.">상품 이미지 등록 및 미리보기 </h3><hr><br>
        <div id="img_div" style="padding-right: 20px;"><h4>이미지 등록</h4></div>
        
        
         	<form action="/product/prodInsert.do" method="post" id="insertForm" enctype="multipart/form-data">
	         	<div id="image_preview" style="margin-bottom: 50px"> 
					<input type="file" id="btnAtt" name="uploadFiles" multiple="multiple">
					<div id="attZone" data-placeholder="파일을 첨부하려면 파일선택 버튼을 누르세요."></div>
				</div>
	
		        카테고리: <input type="text" id="sub_cat" name="sub_cat"> <br><br>
		        상품명&ensp;&ensp;: <input type="text" id="prodNm"  name="prodNm" readonly value="${sub_prodNm }" style="background-color: lightgray;"> <br><br>
		        판매가&ensp;&ensp;: <input type="text" id="prodPrice"  name="prodPrice" readonly style="background-color: lightgray;"> <br><br>
		        판매수량: <input type="text" id="prodQty"  name="prodQty" readonly style="background-color: lightgray;"> <br><br>
		        판매단위: <input type="text" id="prodUnit"   name="prodUnit" readonly style="background-color: lightgray;"> <br><br>
		        판매중량: <input type="text" id="prodVol"  name="prodVol" readonly style="background-color: lightgray;"> <br><br>
				<button type="submit">새 글 등록</button>
        </form>
    </div>
   <jsp:include page="/footer_admin.jsp"></jsp:include>   
      <script>
      //물건이름 중복체크
      $(function(){
         $("#btnCheck").on("click",function(){
            var prodNm = $('#prodNm').val();
            $.ajax({
            url: '/product/prodNameCheck.do',
            type : 'post',
            data :{
               "prodNm" : prodNm
            },
            success : function(obj){
               console.log("Check :"+ obj);
               if(!obj){
                  alert("이미 사용 중인 상품명 입니다!");
                  $('#prodNm').val('');
                  $('#prodNm').focus();
               } else {
                  alert("사용 가능한 상품명 입니다!");
                  }
            },
            error : function(e){
               console.log(e);
            }
            });
         });
      });//물건이름 체크 끝
      
    //파일 담기   
	//추가된 파일들을 담아줄 배열. File객체로 하나씩 담음
	let uploadFiles = [];

	$(function() {
		//input type=file이 변경되면 미리보기 동작
		$("#btnAtt").on("change", function(e) {
			//input type=file에 추가된 파일들을 변수로 받아옴
			const files = e.target.files;

			//변수로 받아온 파일들을 배열 형태로 변환
			const fileArr = Array.prototype.slice.call(files);
			
			//배열에 있는 파일들을 하나씩 꺼내서 처리
			for(f of fileArr) {
				imageLoader(f);
			}
		});
		
		$("#insertForm").on("submit", function() {
			//마지막으로 btnAtt에 uploadFiles에 있는 파일들을 담아준다.
			dt = new DataTransfer();
			
			for(f in uploadFiles) {
				const file = uploadFiles[f];
				dt.items.add(file);
			}
			
			$("#btnAtt")[0].files = dt.files;
		});
	});
	
	//미리보기 영역에 들어갈 img태그 생성 및 선택된 파일을 Base64 인코딩된 문자열 형태로 변환하여
	//미리보기가 가능하게 해줌
	function imageLoader(file) {
		uploadFiles.push(file);
		
		let reader = new FileReader();
		
		reader.onload = function(e) {
			//이미지를 표출해줄 img태그 선언
			let img = document.createElement("img");
			img.setAttribute("style", "width: 100%; height: 100%; z-index: none;");
			
			//이미지 파일인지 아닌지 체크
			if(file.name.toLowerCase().match(/(.*?)\.(jpg|jpeg|png|gif|svg|bmp)$/)) {
				//이미지 파일 미리보기 처리
				img.src = e.target.result;
			} else {
				//일반 파일 미리보기 처리
				img.src = "/images/defaultFileImg.png";
			}
			
			//미리보기 영역에 추가
			//미리보기 이미지 태그와 삭제 버튼 그리고 파일명을 표출하는 p태그를 묶어주는 div 만들어서
			//미리보기 영역에 추가
			$("#attZone").append(makeDiv(img, file));
		};
		
		//파일을 Base64 인코딩된 문자열로 변경
		reader.readAsDataURL(file);
	}
	
	//미리보기 영역에 들어가 div(img+button+p)를 생성하고 리턴
	function makeDiv(img, file) {
		//div 생성
		let div = document.createElement("div");
		div.setAttribute("style", "display: inline-block; position: relative;"
		+ " width: 150px; height: 120px; margin: 5px; border: 1px solid #00f; z-index: 1;");
		
		//button 생성
		let btn = document.createElement("input");
		btn.setAttribute("type", "button");
		btn.setAttribute("value", "x");
		btn.setAttribute("delFile", file.name);
		btn.setAttribute("style", "width: 30px; height: 30px; position: absolute;"
		+ " right: 0px; bottom: 0px; z-index: 999; background-color: rgba(255, 255, 255, 0.1);"
		+ " color: #f00;");
		
		//버튼 클릭 이벤트
		//버튼 클릭 시 해당 파일이 삭제되도록 설정
		btn.onclick = function(e) {
			//클릭된 버튼
			const ele = e.srcElement;
			//delFile(파일이름) 속성 꺼내오기: 삭제될 파일명
			const delFile = ele.getAttribute("delFile");
			
			for(let i = 0; i < uploadFiles.length; i++) {
				//배열에 담아놓은 파일들중에 해당 파일 삭제
				if(delFile == uploadFiles[i].name) {
					//배열에서 i번째 한개만 제거
					uploadFiles.splice(i, 1);
				}
			}
			
			//버튼 클릭 시 btnAtt에 첨부된 파일도 삭제
			//input type=file은 첨부된 파일들을 fileList 형태로 관리
			//fileList에 일반적인 File객체를 넣을 수 없고
			//DataTransfer라는 클래스를 이용하여 완전한 fileList 형태로 만들어서
			//input.files에 넣어줘야 된다.
			dt = new DataTransfer();
			
			for(f in uploadFiles) {
				const file = uploadFiles[f];
				dt.items.add(file);
			}
			
			$("#btnAtt")[0].files = dt.files;
			
			//해당 img를 담고있는 부모태그인 div 삭제
			const parentDiv = ele.parentNode;
			$(parentDiv).remove();
		}
		
		//파일명 표출할 p태그 생성
		const fName = document.createElement("p");
		fName.setAttribute("style", "display: inline-block; font-size: 8px;");
		fName.textContent = file.name;
		
		//div에 하나씩 추가
		div.appendChild(img);
		div.appendChild(btn);
		div.appendChild(fName);
		
		//완성된 div 리턴
		return div;
	} 

   </script>   
</body>
</html>