<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.hidden {
    display: none;
}
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}
</style>
<div class="header-placeholder"></div>

<main> <%--name : ${vendorInfo.name } <br>

phone : ${vendorInfo.phone } <br>
business_name : ${vendorInfo.business_name } <br>
vendorInfo.zipcode : ${vendorInfo.zipcode } <br>
vendorInfo.basic_address : ${vendorInfo.basic_address } <br>
vendorInfo.detail_address : ${vendorInfo.detail_address } <br>
vendorInfo.business_type : ${vendorInfo.business_type } <br>
 --%>


<input type="hidden" id="placeEmail" value="${placeInfo.email}">
<input type="hidden" id="placeRegiNum" value="${placeInfo.business_regi_num}">

<c:if test="${not empty imageList}">
<div id="myCarousel" class="carousel slide" data-ride="false" style="width: 80%; margin: auto;"><%-- data-ride="carousel" data-interval="3000"> --%>
  <ul class="carousel-indicators">
	<c:forEach items="${imageList}" var="image" varStatus="status">
    	<li data-target="#myCarousel" data-slide-to="${status.index}"></li>
	</c:forEach>
  </ul>
  <div class="carousel-inner">
	<c:forEach items="${imageList}" var="image" varStatus="status">
		    <div class="carousel-item">
		      <%--<img src="data:image/jpeg;base64,${image.encodedImage}" alt="${placeInfo.business_name}_${status.index}" width="1100" height="500">--%>
		      <img src="data:image/jpeg;base64,${image.encodedImage}" alt="${placeInfo.business_name}_${status.index}" class="d-block w-100 h-100" style="max-height: 500px; object-fit: contain;">
		    </div>
	</c:forEach>
  </div>
  <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</c:if>

<c:if test="${empty imageList}">
</c:if>



<div class="form-group" style="width: 70%; margin: 0 auto;">
    <div id="placeInfo" class="form-control-plaintext text-center mx-auto" style="white-space: pre-wrap; width: 100%;">
        ${placeInfo.place_info}
    </div>
</div>





<div class="container mt-4">
    <div class="row">
        <c:forEach var="serviceItem" items="${serviceItems}" varStatus="status">
        <%--<label>--%>
		    <div class="col-md-4 mb-4">
		    <div class="card serviceItem-card" data-serviceItemId="${serviceItem.item_id }"
                     data-serviceName="${serviceItem.service_name }"
                     data-serviceDescription="${serviceItem.service_description }"
                     data-requiredTime="${serviceItem.required_time }"
                     data-servicePrice="${serviceItem.service_price }">
		      <div class="card-header">${serviceItem.service_name}</div>
		      <div class="card-body">${serviceItem.service_description}<br>
		      <div class="small text-right">소요 시간: 약 ${serviceItem.required_time * 30}분<br>
		      <div style="font-size: 1rem;">가격: ${serviceItem.service_price}원</div></div>
		      </div> 
		      <div class="card-footer"><label><input type="checkbox" class="item_idChkBox" id="item_idChkBox_${status.index}"
		                                 name="item_idChkBox" value="asdasdasd" /> 선택하기</label></div>
		    </div>
		    </div>
	    <%--</label>--%>
        </c:forEach>
    </div>
</div>


<input type="button" class="btn btn-primary d-block mx-auto" id="nextBtn" value="다음단계" /> <!-- 값 가져갈거 가격,시간,벤더이메일,사업자번호,선택된아이템id들 -->
<br>

<div id="reviews" style="width: 80%; margin: auto;"></div>







<%--
data = { //SelectedItemsDto 다음페이지로 넘어가면서 세션에 저장 <br>
email: email, 벤더이메일 <br>
business_regi_num: businessRegiNum, 벤더사업자번호<br>
totalRequiredTime: totRequiredTimes, 선택된시간총합<br>
totalServicePrice: totServicePrices, 선택된가격총합<br>
selectedItems: selectedItemIdsAry //cardObjDto 선택한메뉴각각의정보객체배열<br>
};<br>

${sessionScope.loginName}<br>
${sessionScope.loginEmail}<br>
${sessionScope.loginAuthority}<br>
 --%>
</main>

<script>
$(function() {
	var placeEmail = $('#placeEmail').val();
    var placeRegiNum = $('#placeRegiNum').val();
    
	//console.log(" vendor_email : ", placeEmail,	" business_regi_num: ", placeRegiNum);
	//========================================================================
	$.ajax({
        url: "/ex/reviews/selectFiveLatestReviews",
        method: "GET",
        contentType: "application/json",
        data: {
        	vendor_email : placeEmail,
        	business_regi_num: placeRegiNum
        },
        success: function(response) {
            console.log(response);
            drawReviews(response.dto);
        },
        error: function(xhr, status, error) {
            console.error("Error :", error);
            console.log(response);
        }
    });
	
	function drawReviews(dto){
	    var reviewForm = $('#reviews');
		console.log("length : " , dto.length);
		
		var starS = `<i class="fa-solid fa-star"></i>`;
		var starR = `<i class="fa-regular fa-star"></i>`;
		
		var reviewDivStr = '<div>최근 리뷰</div>';
		
		for(let i=0;i<dto.length;i++){
			reviewDivStr +=`
		    	    <div class="row comment-form">
		    	        <div class="col text-left">
		    	            <div>별점 : <span id="star">`;
		    	            
		    	let starPoint = parseInt(dto[i].star_point)
		    	for(let j=1;j<=5;j++){
		    		if(j<=starPoint){
		    			reviewDivStr += starS;
		    		}else {
		    			reviewDivStr += starR;
		    		}
		    	}
		    
		    	reviewDivStr +=`</span></div>
		    	        </div>
		    	        <div class="col text-left">
		    	            <div>작성일 : <span id="r_date">`+ dto[i].review_date +`</span></div>
		    	        </div>
		    	    </div>
		    	    <textarea id="m_content" class="form-control mt-2" rows="1" readonly>`+ 
		    	    dto[i].member_content
		    	    +`</textarea>
		    	`;
		}
		reviewDivStr += `<br>`;
		reviewForm.html(reviewDivStr);
		
		
		
		
	}
	
	
	

});
</script>


<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c665e334713bdbedf11d514849fcb54b&libraries=services,clusterer,drawing"></script>
<script>



document.addEventListener("DOMContentLoaded", function() {
    // 첫 번째 <li> 요소 선택
    const firstIndicator = document.querySelector(".carousel-indicators li:first-child");
    
    // 'active' 클래스 추가
    if (firstIndicator) {
        firstIndicator.classList.add("active");
    }
    
	const firstCarouselItem = document.querySelector(".carousel-inner .carousel-item:first-child");
    
    // 'active' 클래스 추가
    if (firstCarouselItem) {
        firstCarouselItem.classList.add("active");
    }
});














	const vendorInfo = {
		address : '${vendorInfo.basic_address}', // 업체의 기본 주소
		businessName : '${vendorInfo.business_name}', // 업체명
		mainImg : '${pageContext.request.contextPath}' + '${mainImg}' // 이미지 경로
	};
	console.log('Vendor Info:', vendorInfo); // 객체가 제대로 정의되었는지 확인 -->
</script>
<div id="map" class="d-block mx-auto" style="width: 80%; height: 500px;"></div>
<script src="../resources/js/mapUtils.js"></script>
<script src="../resources/js/vendorMap.js"></script>
<script src="../resources/js/mbusinessplaceinfo.js"></script>
<%@include file="../include/footer.jsp"%>