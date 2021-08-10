<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="css/ticket-go.css" />
<title>예매하기</title>
</head>
<body>
<body id="LoginForm">
	<%@ include file="../layout/navbar.jsp"%>
</body>

<body>
	<div class="container">
		<!-- 제목 + 출발지, 도착지 정보 박스 -->
		<div class="text_box">
			<span class="text-title">가는 편</span>

			<!-- 출발지 정보 받아와야함 -->
			<span class="form-rute">&nbsp;&nbsp;</span> <img src="images/icon1.jpg" />
			<!-- 도착지 정보 받아와야함 -->
			<span class="to-rute">&nbsp;도착지&nbsp;</span>
		</div>
		<!-- 제목 + 출발지, 도착지 정보 끝 -->

		<!-- 티켓 목록 박스 -->
		<div class="button">
			<!-- 정렬 박스 -->
			<div class="dropdown">
				<a class="btn btn-outline-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false"> 정렬 </a>

				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><a class="dropdown-item" href="#">최저 요금 순</a></li>
					<li><a class="dropdown-item" href="#">출발 시간 순</a></li>
					<li><a class="dropdown-item" href="#">도착 시간 순</a></li>
				</ul>
			</div>
			<!-- 정렬 박스 끝-->
		</div>
		
		<c:forEach var="airportList" items="${KJairportListDto}">
		
		<div class="list-box">
			<!-- 시간, 항공기 정보 -->
			<span class="ticket-list-box">
				<div class="ticket-list-text-box">
					<div class="ticket-list-time-box">
						<span class="form-time">&nbsp;${airportList.getDepPlandTime()}&nbsp;</span>

						<div class="form_time_box">
							<!-- 소요 시간 박스 -->
							<span class="form-to-time">&nbsp;소요시간&nbsp;</span> <img src="images/icon3.png" />
						</div>
						<!-- 소요 시간 박스 끝 -->
						<span class="form-time">&nbsp;${airportList.getArrPlandTime()}&nbsp;</span>
					</div>
					<div class="air-data">&nbsp;항공기정보&nbsp;</div>
				</div> <!-- 시간, 항공기 정보 끝 -->
			</span>

			<!-- 좌석 등급 별 정보 -->
			<!-- 특가 -->
			<div class="sale-seat" onclick="choice">
				<div>특가운임</div>
				<span class="sale-seat-price">가격정보</span>
			</div>
			<!-- 정상 -->
			<div class="seat">
				<div>정상운임</div>
				<span class="seat-price">가격정보</span>
			</div>
			<!-- 프레스티지 -->
			<div class="prestige-seat">
				<div>프레스티지</div>
				<span class="prestige-seat-price">가격정보</span>
			</div>
		</div>
		<!-- 티켓 목록 박스 끝-->
		</c:forEach>
	</div>

	<!-- 푸터 부분 시작 -->
	<div class="container">
		<div class="footer">
			<sapn class="total-price">예상 결제 금액</sapn>
			<div class="totla-price2">데이터 원</div>

			<a href="/ticketreturn" type="button" class="btn btn-primary btn-lg">다음 여정 </a>
		</div>
	</div>
	<!-- 푸터 부분 끝 -->
</body>

<script>
      function choice() {
        alert("선택되었습니다.");
      }
    </script>
</body>
</html>
