<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="css/ticket-check.css" />
<title>조회 | 체크인</title>
</head>

<body id="LoginForm">
	<%@ include file="../layout/navbar.jsp"%>

	<div class="container">
		<div class="plan-text">항공 티켓 조회</div>
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
	</div>

</body>
<%@ include file="../layout/footer.jsp"%>