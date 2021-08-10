<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="css/check-in.css" />
<title>조회 | 체크인</title>
</head>

<body id="LoginForm">
	<%@ include file="../layout/navbar.jsp"%>
	<div class="container">
		<div class="plan-text">온라인 체크인</div>
		<div class="plan-text2">언제 어디서나 공항 도착 전에 홈페이지와 모바일웹/앱에서 미리 탑승 수속을 할 수 있습니다. 빠르고 간편한 온라인 체크인을 이용해 기다리는 시간을 절약 하세요.</div>
		<div class="plan-text2">
			<a style="color: #e60000">*</a>이용 시간 : 항공편 출발 48시간~30분 전
		</div>
		<div class="plan-text2">
			<a style="color: #e60000">*</a>이용 대상 : 예약이 확인된 전자항공권(E-티켓) 소지 승객
		</div>
		<div class="plan">
			<div class="plan-text">체크인 가능한 항공권 목록(?)</div>
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
			<a href="" type="button" class="confirm_table_box2">온라인 체크인 하기</a>
		</div>
		<!-- 여정 정보 끝 -->

	</div>


	<!-- 푸터시작 -->
	<%@ include file="../layout/footer.jsp"%>