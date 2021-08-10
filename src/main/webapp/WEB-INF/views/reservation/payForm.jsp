<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="css/pay.css" />
<title>결제하기</title>
</head>

<body>
<body id="LoginForm">
	<%@ include file="../layout/navbar.jsp"%>
</body>
<!-- 헤더 부분 끝 -->

<body>
	<div class="container">

		<div class="plan-text">여정 정보</div>

		<!-- 여정 정보 시작 -->
		<div class="plan">
			<div class="plan-box">
				<!-- 가는 편 정보 -->
				<div class="plan-go">
					<div class="plan-text1">
						<span class="plan-title1">가는 편</span>
					</div>
					<div>
						<span class="plan-en">FROM</span> <span class="plan-kr">출발지</span> <img src="images/icon4.jpg"> <span class="plan-en">TO</span> <span class="plan-kr">도착지</span>

						<div class="plan-data">
							<span class="plan-data-date">날짜와 시간&nbsp;</span> <span class="plan-data-time1">&nbsp;출발 시간&nbsp;</span> <span class="plan-data-time2">-&nbsp;도착시간&nbsp;</span> <span class="plan-data-air">&nbsp;항공기
								정보&nbsp;</span> <span class="plan-data-seat">&nbsp;좌석등급&nbsp;</span>
						</div>
					</div>
				</div>
			</div>

			<!-- 오는 편 정보 -->
			<div class="plan-box">
				<div class="plan-return">
					<div class="plan-text1">
						<span class="plan-title1">오는 편</span>
					</div>
					<div>
						<span class="plan-en">FROM</span> <span class="plan-kr">출발지</span> <img src="images/icon4.jpg"> <span class="plan-en">TO</span> <span class="plan-kr">도착지</span>

						<div class="plan-data">
							<span class="plan-data-date">날짜와 시간&nbsp;</span> <span class="plan-data-time1">&nbsp;출발 시간&nbsp;</span> <span class="plan-data-time2">&nbsp;-&nbsp;도착시간&nbsp;</span> <span class="plan-data-air">&nbsp;항공기
								정보&nbsp;</span> <span class="plan-data-seat">&nbsp;좌석등급&nbsp;</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 여정 정보 끝 -->

		<!-- 정보 입력 박스 시작 -->
		<div class="plan-text">승객 정보</div>

		<div class="plan-input-box">

			<div class="plan-people">성인 1</div>

			<div class="plan-people-box">
				<div class="guide">
					<p>
						예약 후 성명 변경은 <span style="color: #2e64de">불가</span>하오니 실제 탑승하실 분의 <span style="color: #2e64de">신분증상 성명</span>으로 입력하시기 바랍니다.
					</p>
				</div>

				<form>
					<div class="form">
						<label class="form-label">국적</label> <input type="text" class="form-control" id="country" placeholder="대한민국" readonly>
						<div id="emailHelp" class="form-text">
							본 사이트는 한국에 거주하는 내국인을 위한 사이트로, <br />한국 거주 외국인 또는 해외거주 내국인은 국가/언어 설정을 변경하여 해당 사이트로 이동하시기 바랍니다.
						</div>
					</div>

					<div class="form">
						<label class="form-label">승객 성</label> <input type="text" class="form-control" id="familyname" placeholder="예) 김 또는 KIM">
						<div id="emailHelp" class="form-text">*&nbsp;공항에서 제시할 신분증 상 언어와 반드시 일치해야 합니다.</div>
					</div>

					<div class="form">
						<label class="form-label">승객 성</label> <input type="text" class="form-control" id="firstname" placeholder="예) 대한 또는 DEAHAN">
						<div id="emailHelp" class="form-text">*&nbsp;공항에서 제시할 신분증 상 언어와 반드시 일치해야 합니다.</div>
					</div>

					<div class="form">
						<p>
						<div>성별</div>

						<label for="male">남성</label> <input id="male" type="radio" value="남성" name="ss"> <label for="female">여성</label> <input id="female" type="radio" checked value="여성" name="ss">
						</p>
					</div>

					<div class="form-birthday">
						<label class="form-label">생년월일 (YYYY.MM.DD.)</label> <input type="number" class="form-control" id="birthday">
					</div>

					<a href="" button type="button" class="btn btn-primary btn">확인</a>
			</div>

			<div class="plan-tel">연락처 정보</div>
			<div class="plan-note">유의 사항</div>
		</div>

	</div>

	<!-- 푸터 부분 시작 -->
	<div class="container">
		<div class="footer">
			<span class="total-price">예상 결제 금액</span>
			<div class="totla-price2">데이터 원</div>

			<button type="button" class="btn btn-primary btn-lg" id="payment" onclick="pay()">결제하기</button>

		</div>
	</div>
	<!-- 푸터 부분 끝 -->

	<script>
	 function pay(){
		    // const를 function으로 바꾼다.
		    const IMP = window.IMP; // 생략해도 괜찮습니다.
		    IMP.init("imp33242811"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

		    // IMP.request_pay(param, callback) 호출
		    IMP.request_pay({ // param
   			 pg: "html5_inicis",
   			 pay_method: "card",
	 		 merchant_uid: "ORD20180131-0000017",
   		 	name: "회전 의자",
   			 amount: 100,
   			 buyer_email: "gildong@gmail.com",
   			 buyer_name: "홍길동",
   		 	buyer_tel: "010-4242-4242",
		    buyer_addr: "서울특별시 강남구 신사동",
		    buyer_postcode: "01181"
		  }, rsp => { // callback
		    if (rsp.success) {
		        console.log("결제 성공");
		        console.log(rsp);
		        // 결제 성공 시 로직,
		       
		    } else {
		        console.log("결제 실패");
		        console.log(rsp);
		        
		        // 결제 실패 시 로직,
		      
		             }
		        });
		    }	
	</script>

	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</body>