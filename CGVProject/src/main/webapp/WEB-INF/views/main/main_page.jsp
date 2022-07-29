<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<head>


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/59d34efa84.js"
	crossorigin="anonymous"></script>




<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	height: 100%;
}

#body-wrapper {
	min-height: 100%;
	position: relative;
}

#body-content {
	padding-bottom: 2450px;
}

/* ---------------------------------영화 티저 ------------------------------- */
iframe {
	position: absolute;
	transform: translateX(-50%);
}

.teaser {
	position: absolute;
	width: 100%;
	top: 150px;
	height: 500px;
	text-align: center;
	background-color: black;
}

/* ---------------------------------메인 컨텐츠 ------------------------------- */
.movieContents {
	position: absolute;
	top: 650px;
	width: 100%;
	height: 461px;
	overflow: hidden;
	background-color: rgba(232, 232, 232, 0.37);
}

/* ---------------------------------무비차트 & 상영 예정작------------------------------- */

/* 무비차트---------------------------------------------------------*/
.movieTap {
	position: relative;
	top: 30px;
	width: 1150px;
	font-size: 30px;
	z-index: 20;
	margin: auto;
}

.movieTap a {
	text-decoration: none;
	color: black;
}

.tap {
	font-size: 25px;
	background-color: inherit;
	border: none;
	cursor: pointer;
}

.movieTap span {
	cursor: pointer;
}

.allView {
	float: right;
	padding: 8px 25px;
	border-radius: 25px;
	background-color: white;
	border: 1px solid #ddd;
	cursor: pointer;
}

.movieTap::after {
	content: "";
	display: block;
	clear: both;
}

/* 영화 썸네일 및 슬라이드 부분------------------------------------------- */
li {
	list-style-type: none;
}

.movieSlideShow {
	width: 1150px;
	height: 461px;
	position: relative;
	overflow: hidden;
	margin: auto;
}

.movieSlideShow img {
	width: 170px;
	height: 240px;
	border-radius: 10px;
}

.movieSlideShow img:hover .detail {
	display: none;
}

.movieSlides {
	position: relative;
	top: 60px;
	left: 0;
	width: 2500px;
	transition: left 0.5s ease-out;
	font-weight: bold;
	text-align: center;
}

.movieSlides p {
	font-size: 18px;
	color: #222222;
}

.movieSlides span {
	font-size: 14px;
	color: #444444;
}

.movieSlides li:first-child {
	margin-left: 100px;
}

.movieSlides li:nth-child(6) {
	margin-left: 150px;
}

.movieSlides li:nth-child(11) {
	margin-left: 150px;
}

.movieSlides li:nth-child(16) {
	margin-left: 150px;
}

/* 상세보기, 예매하기 버튼 부분 */
.movieSlideShow img:hover {
	opacity: 0.5;
}

.topgun:hover .topgunD {
	display: block;
}

.topgun:hover .topgunT {
	display: block;
}

.topgunD, .topgunT {
	position: absolute;
	padding: 8px 25px;
	text-align: center;
	border: none;
	border-radius: 5px;
	font-size: 15px;
	cursor: pointer;
	display: none;
	text-decoration: none;
	left: 130px;
}

.topgunD {
	top: 80px;
	background-color: white;
	color: #666;
}

.topgunT {
	top: 120px;
	background-color: red;
	color: white;
}

.topgunD:hover, .topgunT:hover {
	opacity: 0.7;
}

/*  loving 빈센트 상세보기 부분-------------------------------------------*/
.loving:hover .lovingD {
	display: block;
}

.loving:hover .lovingT {
	display: block;
}

.lovingD, .lovingT {
	position: absolute;
	padding: 8px 25px;
	text-align: center;
	border: none;
	border-radius: 5px;
	font-size: 15px;
	cursor: pointer;
	display: none;
	text-decoration: none;
	left: 130px;
}

.lovingD {
	top: 80px;
	background-color: white;
	color: #666;
}

.lovingT {
	top: 120px;
	background-color: red;
	color: white;
}

.lovingD:hover, .lovingT:hover {
	opacity: 0.7;
}

/* 슬라이드들 옆으로 정렬 */
.movieSlides li:not(:last-child)
{
float : left;
margin-right:40px;
}
.movieSlides li {
	float: left;
}

.controller span {
	position: absolute;
	background-color: white;
	color: black;
	text-align: center;
	border-radius: 50%;
	padding: 8px 20px;
	top: 40%;
	transform: translateY(-50%);
	font-size: 1.3em;
	cursor: pointer;
	opacity: 0.8;
}

.prev {
	left: 75px;
	z-index: 10;
	box-shadow: -2px 2px 5px #ddd;
}

.next {
	right: 15px;
	z-index: 10;
	box-shadow: 2px 2px 5px #ddd;
}

/* 상영 예정작-------------------------------------------------------------------*/
.reserMovieSlideShow {
	width: 1150px;
	height: 461px;
	position: relative;
	overflow: hidden;
	margin: auto;
}

.reserMovieSlideShow img {
	width: 170px;
	height: 240px;
	border-radius: 10px;
}

.reserMovieSlides {
	position: relative;
	top: 60px;
	left: 0;
	width: 2500px;
	transition: left 0.5s ease-out;
	text-align: center;
	font-weight: bold;
	text-align: center;
}

.reserMovieSlides p {
	font-size: 18px;
	color: #222222;
}

.reserMovieSlides span {
	font-size: 14px;
	color: #444444;
}

.reserMovieSlides li:first-child {
	margin-left: 100px;
}

.reserMovieSlides li:nth-child(3){
	margin-left : -10px;
}

.reserMovieSlides li:nth-child(6) {
	margin-left: 150px;
}

.reserMovieSlides li:nth-child(11) {
	margin-left: 150px;
}

.reserMovieSlides li:nth-child(16) {
	margin-left: 150px;
}

.reserMovieSlideShow img:hover {
	opacity: 0.5;
}

/* 슬라이드들 옆으로 정렬------------------------------------------------ */
.reserMovieSlides li:not(:last-child){
	float:left;

	margin-right : 40px;
}

.reserMovieSlides li {
	float: left;
}

.resercontroller span {
	position: absolute;
	background-color: white;
	color: black;
	text-align: center;
	border-radius: 50%;
	padding: 8px 20px;
	top: 40%;
	transform: translateY(-50%);
	font-size: 1.3em;
	cursor: pointer;
	opacity: 0.8;
}

.reserprev {
	left: 75px;
	z-index: 10;
	box-shadow: -2px 2px 5px #ddd;
}

.resernext {
	right: 15px;
	z-index: 10;
	box-shadow: 2px 2px 5px #ddd;
}

/* -------------------------------------------- 특별관 --------------------------------------------------------- */
.specialHall {
	position: absolute;
	top: 1100px;
	width: 100%;
	height: 400px;
}

.special-wrap {
	width: 1150px;
	height: 100%;
	margin: auto;
}

.specialTap {
	margin: 40px auto;
	width: 1150px;
}

.specialTap a {
	text-decoration: none;
	color: black;
}

.specialTap span {
	font-size: 30px;
	margin-left: 100px;
}

.allViewHall {
	float: right;
	padding: 8px 25px;
	border-radius: 25px;
	background-color: white;
	border: 1px solid #ddd;
	cursor: pointer;
	margin-right: 40px;
}

.allViewHall::after {
	content: "";
	display: block;
	clear: both;
}

.specialContents {
	margin: auto;
	width: 1150px;
	margin-left: 20px;
}

.specialContents img {
	width: 500px;
	height: 264px;
	position: absolute;
	top: 100px;
	margin-left: 80px;
}

.specialHall_list {
	position: relative;
	left: 630px;
	width: 460px;
	height: 50px;
	top: -10px;
}

.specialHall_list li {
	padding: 20px;
	border-radius: 10px;
}

.specialHall_list li:hover {
	border: 1px solid;
}

.specialHall_list a {
	font-weight: bold;
}

.specialHall_list span {
	padding: 5px;
	border-radius: 5px;
	background-color: #e7e7e7;
	float: right;
	transform: translateY(-20%);
	font-size: small;
}

/* ---------------------------------기프트콘------------------------------- */
.giftcon_wrap {
	position: absolute;
	top: 1500px;
	width: 100%;
	height: 440px;
}

.giftContents {
	width: 1150px;
	height: 100%;
	margin: auto;
}

.giftcon_wrap li {
	width: 310px;
	height: 376px;
	float: left;
	border: 1px solid #ddd;
	border-radius: 10px;
	margin: 12px;
}

.giftcon_wrap li::after {
	content: "";
	display: block;
	clear: both;
}

.giftcon_wrap li:first-child {
	margin-left: 100px;
}

.giftcon_list_wrap {
	display: inline;
	width: 25%;
}

.btn_more {
	border: 1px solid #ddd;
	border-radius: 25px;
	float: right;
	text-decoration: none;
	font-size: 13px;
	padding: 2px 15px 3px;
}

.btn_more::after {
	content: "";
	display: block;
	clear: both;
}

.giftcon_list dt {
	font-size: 20px;
	font-weight: bold;
	margin: 20px 15px 25px 15px;
}

.giftcon_list dd {
	margin-left: 20px;
	margin-bottom: -20px;
}

.giftcon_list dd span {
	font-size: 14px;
	font-weight: bold;
}

.img_wrap img {
	height: 75px;
	width: 76px;
}

.giftcon_info_wrap {
	transform: translate(35%, -160%);
}

/* ---------------------------------footer------------------------------- */
footer {
	width: 100%;
	height: 500px;
	position: absolute;
	bottom: 0;
	left: 0;
}

.footer-wrap {
	width: 980px;
	margin: auto;
}

.footerAd {
	height: 240px;
	margin: auto;
	background-color: #ffa443;
}

.policy_list {
	width: 100%;
	display: inline-block;
	border-bottom: 1px solid #ddd;
	padding: 23px 0px 23px 0px;
}

.policy_list li {
	display: inline-block;
	margin: 7px;
	font-size: 13px;
	font-weight: bold;
	color: #666;
}

.company_info_wrap {
	position: absolute;
	top: 340px;
	width: 980px;
}

.company_info {
	font-size: 12px;
	margin-bottom: 20px;
	padding: 5px 0px;
}

.company_info_list {
	padding-bottom: 5px;
}

.company_info span {
	margin-bottom: 5px;
}

.company_info_list dt, .company_info_list dd {
	float: left;
}

.company_info_list dt::after  .company_info_list dd::after {
	content: "";
	display: block;
	clear: both;
}

.familysite_wrap {
	padding: 30px;
	float: right;
}

.familysite_wrap::after {
	content: "";
	display: block;
	clear: both;
}

.btn_familysite {
	padding: 5px;
	background-color: #666;
	color: white;
	cursor: pointer
}
</style>


<!-- --------------------------------------------style태그 끝 --------------------------- -->


<title>영화 그 이상의 감동 짭GV</title>


</head>



<!-----------------------------------------------body --------------------------------------------------->

<body>

	<div id="body-wrapper">
		<div id="body-content">

			<%@ include file="../includes/header.jsp"%>

			<!----------------------------------------------- 영화 티저 자동재생 --------------------------------------------------->

			<div class="teaser">
				<iframe width="1250" height="500"
					src="https://www.youtube.com/embed/Dlfp3K11C_o?autoplay=1&mute=1&amp;playlist=Dlfp3K11C_o&loop=1"
					title="[토르: 러브 앤 썬더] 메인 예고편" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen> </iframe>
			</div>



<!----------------------------------------------- main content --------------------------------------------------->

<!--영화 차트 부분 --------------------------------------------------->


			<div class="movieContents">

				<div class="movieTap">
					<span class="movieChartView" style="margin-left: 100px;">
						<button class="tap">무비차트</button>
					</span> <span>|</span> <span class="reserMovieView">
						<button class="tap">상영 예정작</button>
					</span> <a href="moviechart.do">
						<button class="allView" style="margin-right: 40px;">전체보기</button>
					</a>
				</div>

				<div class="movieSlideShow">

					<ul class="movieSlides">
						<li class="topgun"><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82120/82120_320.jpg">
							<a href="" class="topgunD">상세보기</a> <a href="ticketing.do" class="topgunT">예매하기</a>
							<p>탑건-매버릭</p> <span>99%</span> <span>| 예매율 49.0%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85999/85999_320.jpg">
							<p>토르-러브 앤 썬더</p> <span>99%</span> <span>| 예매율 17.7%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85852/85852_320.jpg">
							<p>헤어질 결심</p> <span>99%</span> <span>| 예매율 10.4%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85871/85871_320.jpg">
							<p>마녀 Part2.</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85813/85813_320.jpg">
							<p>범죄도시2</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85829/85829_320.jpg">
							<p>브로커</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85920/85920_320.jpg">
							<p>컴온컴온</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85977/85977_320.jpg"> 
							<p>버즈 라이트이어</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85951/85951_320.jpg">
							<p>윌벤져스</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86000/86000_320.jpg">
							<p>비욘드 라이브</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82616/82616_320.jpg">
							<p>펄프픽션</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85238/85238_320.jpg">
							<p>빅샤크</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86008/86008_320.jpg">
							<p>명탐정 코난</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80957/80957_320.jpg">
							<p>레베카</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
						<li><img
							src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86017/86017_320.jpg">
							<p>멘</p> <span>98%</span> <span>| 예매율 4.8%</span></li>
					</ul>

					<p class="controller">
						<span class="prev">&lang;</span> <span class="next">&rang;</span>
					</p>
				</div> 

				<!--상영 예정작 ------------------------------------------------------------------->

				<div class="reserMovie">

					<div class="reserMovieSlideShow">
						<ul class="reserMovieSlides">

							<li class="loving"><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80117/80117_320.jpg">
								<p>러빙 빈센트</p> <a href="" class="lovingD">상세보기</a> <a href=""
								class="lovingT">예매하기</a> <span>98%</span> <span>| 예매율
									0.5%</span></li>

							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85852/85852_320.jpg">
								<p>헤어질 결심</p> <span>99%</span> <span>| 예매율 10.4%</span></li>

							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86000/86000_320.jpg">
								<p>비욘드 라이브 더 무비</p> <span>99%</span> <span>| 예매율 1.7%</span></li>

							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85881/85881_320.jpg">
								<p>미친능력</p> <span>99%</span> <span>| 예매율 0.1%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85871/85871_320.jpg">
								<p>마녀 Part2.</p> <span>83%</span> <span>| 예매율 7.4%</span></li>

							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86012/86012_320.jpg">
								<p>분노</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86013/86013_320.jpg">
								<p>은혼</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86009/86009_320.jpg">
								<p>철벽선생</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86018/86018_320.jpg">
								<p>듀얼-나를 죽여라</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85984/85984_320.jpg">
								<p>사이다경제</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86008/86008_320.jpg">
								<p>명탐정 코난</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86017/86017_320.jpg">
								<p>멘</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85950/85950_320.jpg">
								<p>엘비스</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80117/80117_320.jpg">
								<p>러빙 빈센트</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
							<li><img
								src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79145/79145_320.jpg">
								<p>아가씨</p> <span>83%</span> <span>| 예매율 7.4%</span></li>
						</ul>

						<p class="resercontroller"> 
							<span class="reserprev">&lang;</span> <span class="resernext">&rang;</span>
						</p>
					</div>


				</div>

			</div>

			<!-------------------------------------------------- 특별관 ------------------------------------------>


			<div class="specialHall">

				<div class="special-wrap">

					<div class="specialTap">
						<span>특별관</span> <a href=""><button class="allViewHall">전체보기</button></a>
					</div>

					<div class="specialContents">
						<img class="suite"
							src="https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png">
						<img class="room"
							src="https://img.cgv.co.kr//Front/Main/2022/0616/16553622935690.png">
						<img class="fourdx"
							src="https://img.cgv.co.kr//Front/Main/2021/1130/16382612660240.png">
						<img class="chef"
							src="https://img.cgv.co.kr//Front/Main/2021/1130/16382612660560.png">
						<ul class="specialHall_list ">
							<li id="suiteBtn"><a>SUITE CINEMA</a><span>#호텔 컨셉의
									프리미엄관</span></li>
							<li id="cineBtn"><a>CINE & LIVINGROOM</a><span>#신개념
									소셜 상영관</span></li>
							<li id="4dxBtn"><a>4DX</a><span>#모션시트 #오감체험</span></li>
							<li id="chefBtn"><a>CINE de CHEF</a><span>#쉐프가 있는 영화관</span>
							</li>
						</ul>
					</div>
				</div>

			</div>

			<!-------------------------------------------------- 기프트콘 ------------------------------------------>

			<div class="giftcon_wrap">

				<div class="giftContents">

					<ul class="giftcon_list_wrap">
						<li>
							<dl class="giftcon_list">
								<dt>
									영화관람권<a href="store.do" class="btn_more">더보기</a>
								</dt>

								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/16094706927780.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>CGV 영화관람권</span><br> <strong>12,000원</strong>
										</div>
									</a>
								</dd>

								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15458911951520.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>CGV 골드클래스</span><br> <strong>40,000원</strong>
										</div>
									</a>
								</dd>

								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/16105061088530.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>4DX관람권</span><br> <strong>19,000원</strong>
										</div>
									</a>
								</dd>

							</dl>
						</li>

						<li>
							<dl class="giftcon_list">
								<dt>
									기프트카드<a href="store.do" class="btn_more">더보기</a>
								</dt>

								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15814124358590.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>PACONNIE A형</span><br> <strong>금액충전형</strong>
										</div>
									</a>
								</dd>

								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15814158039890.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>PACONNIE B형</span><br> <strong>금액충전형</strong>
										</div>
									</a>
								</dd>

								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15814162227570.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>PACONNIE C형</span><br> <strong>금액충전형</strong>
										</div>
									</a>
								</dd>

							</dl>
						</li>

						<li>

							<dl class="giftcon_list">

								<dt>
									콤보<a href="store.do" class="btn_more">더보기</a>
								</dt>
								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15463252009160.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>CGV콤보</span><br> <strong>9,000원</strong>
										</div>
									</a>
								</dd>
								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15463251537260.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>더블콤보</span><br> <strong>12,000원</strong>
										</div>
									</a>
								</dd>
								<dd>
									<a>
										<div class="img_wrap">
											<img
												src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15464065561050.jpg">
										</div>
										<div class="giftcon_info_wrap">
											<span>스몰세트</span><br> <strong>6,500원</strong>
										</div>
									</a>
								</dd>
							</dl>
						</li>

					</ul>
				</div>
			</div>



		</div>

		<footer class="footer">

			<div class="footer-wrap">

				<div class="footerAd">
					<img
						src="https://adimg.cgv.co.kr/images/202111/cgvgift/0119_980x240.png">
				</div>

				<ul class="policy_list">
					<li><a>회사소개</a></li>
					<li><a>IR</a></li>
					<li><a>채용정보</a></li>
					<li><a>광고/제휴/출점문의</a></li>
					<li><a>이용약관</a></li>
					<li><a>편성기준</a></li>
					<li><a>개인정보처리방침</a></li>
					<li><a>법적고지</a></li>
					<li><a>이메일주소무단수집거부</a></li>
					<li><a>윤리경영</a></li>
					<li><a>사이버감사실</a></li>
				</ul>

				<div class="company_info_wrap">
					<section class="company_info">
						<span>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</span>
						<dl class="company_info_list">
							<dt>대표이사</dt>
							<dd>허민회</dd>
							<dt>사업자등록번호</dt>
							<dd>104-81-45690</dd>
							<dt>통신판매업신고번호</dt>
							<dd>
								2017-서울용산-0662
								<aclass="btn_goFtc">사업자정보확인</a> <a></a>
							</dd>
							<br>
						</dl>
						<dl class="company_info_list">
							<dt>호스팅사업자</dt>
							<dd>CJ올리브네트웍스</dd>
							<dt>개인정보보호 책임자</dt>
							<dd>심준범</dd>
							<dt>대표이메일</dt>
							<dd>cjcgvmaster@cj.net</dd>
							<br>
						</dl>
						<p class="copyright">© CJ CGV. All Rights Reserved</p>
					</section>

					<section class="familysite_wrap">
						<select id="familysite">
							<option class="familysiteTitle">계열사 바로가기</option>
							<optgroup label="CJ그룹">
								<option>CJ주식회사</option>
							</optgroup>
							<optgroup label="식품 &amp; 식품서비스">
								<option>CJ제일제당</option>
								<option>CJ푸드빌</option>
								<option>CJ프레시웨이</option>
							</optgroup>
							<optgroup label="생명공학">
								<option>CJ제일제당 BIO사업부문</option>
								<option>CJ Feed&amp;Card</option>
							</optgroup>
							<optgroup label="물류 &amp; 신유통">
								<option>CJ대한통운</option>
								<option>CJ대한통운 건설부문</option>
								<option>CJ올리브영</option>
								<option>CJ올리브네트웍스</option>
								<option>CJ ENM 커머스부문</option>
							</optgroup>
							<optgroup label="엔터테인먼트 &amp; 미디어">
								<option>CJ ENM 엔터테인먼트부문</option>
								<option>CJ CGV</option>
							</optgroup>

						</select> <a class="btn_familysite">GO</a>
					</section>
				</div>
		</footer>
	</div>


	<!--------------------------------------------------------- 스크립트 부분 -------------------------------------------------------------------------------->


	<script>
		//무비차트 슬라이드 넘기기
		const movieSlides = document.querySelector('.movieSlides'); //전체 슬라이드 컨테이너
		const movieSlideImg = document.querySelectorAll('.movieSlides li'); //모든 슬라이드들
		let currentIdx = 0; //현재 슬라이드 index
		const movieSlideCount = movieSlideImg.length; // 슬라이드 개수
		const prev = document.querySelector('.prev'); //이전 버튼
		const next = document.querySelector('.next'); //다음 버튼
		const movieSlideWidth = 200; //한개의 슬라이드 넓이
		const movieSlideMargin = 40; //슬라이드간의 margin 값

		//상영 예정작 슬라이드 넘기기
		const reserMovieSlides = document.querySelector('.reserMovieSlides'); //전체 슬라이드 컨테이너
		const reserMovieSlideImg = document
				.querySelectorAll('.reserMovieSlides li'); //모든 슬라이드들
		let reserCurrentIdx = 0; //현재 슬라이드 index
		const reserMovieSlideCount = reserMovieSlideImg.length; // 슬라이드 개수
		const reserprev = document.querySelector('.reserprev'); //이전 버튼
		const resernext = document.querySelector('.resernext'); //다음 버튼
		const reserMovieSlideWidth = 200; //한개의 슬라이드 넓이
		const reserMovieSlideMargin = 40; //슬라이드간의 margin 값

		const movieChartView = document.querySelector('.movieChartView');
		const reserMovieView = document.querySelector('.reserMovieView');
		const MSS = document.querySelector('.movieSlideShow');
		const RSS = document.querySelector('.reserMovieSlideShow');

		const suiteBtn = document.getElementById("suiteBtn");
		const cineBtn = document.getElementById("cineBtn");
		const fourdxBtn = document.getElementById("4dxBtn");
		const chefBtn = document.getElementById("chefBtn");
		const suiteImg = document.querySelector('.suite');
		const roomImg = document.querySelector('.room');
		const fourdxImg = document.querySelector('.fourdx');
		const chefImg = document.querySelector('.chef');

		movieChartView.addEventListener('click', function() {
			MSS.style.display = "block";
			RSS.style.display = "none";

		});

		reserMovieView.addEventListener('click', function() {
			MSS.style.display = "none";
			RSS.style.display = "block";
		});

		//전체 슬라이드 컨테이너 넓이 설정
		movieSlides.style.width = (movieSlideWidth + movieSlideMargin)
				* movieSlideCount + 'px';

		function movemovieSlide(num) {
			movieSlides.style.left = -num * 1200 + 'px';
			currentIdx = num;
		}

		prev.addEventListener('click', function() {

			if (currentIdx !== 0)
				movemovieSlide(currentIdx - 1);
		});

		next.addEventListener('click', function() {
			if (currentIdx !== movieSlideCount - 13) {
				movemovieSlide(currentIdx + 1);
			}
		});

		//예정작 전체 슬라이드 컨테이너 넓이 설정
		reserMovieSlides.style.width = (reserMovieSlideWidth + reserMovieSlideMargin)
				* reserMovieSlideCount + 'px';

		function reserMovemovieSlide(num) {
			reserMovieSlides.style.left = -num * 1200 + 'px';
			reserCurrentIdx = num;
		}

		reserprev.addEventListener('click', function() {

			if (reserCurrentIdx !== 0)
				reserMovemovieSlide(reserCurrentIdx - 1);
		});

		resernext.addEventListener('click', function() {

			if (reserCurrentIdx !== reserMovieSlideCount - 13) {
				reserMovemovieSlide(reserCurrentIdx + 1);
			}
		});

		//특별관 버튼

		roomImg.style.display = "none";
		fourdxImg.style.display = "none";
		chefImg.style.display = "none";

		suiteBtn.addEventListener('click', function() {

			suiteImg.style.display = "block";
			roomImg.style.display = "none";
			fourdxImg.style.display = "none";
			chefImg.style.display = "none";

		});
		cineBtn.addEventListener('click', function() {
			suiteImg.style.display = "none";
			roomImg.style.display = "block";
			fourdxImg.style.display = "none";
			chefImg.style.display = "none";
		});
		fourdxBtn.addEventListener('click', function() {
			suiteImg.style.display = "none";
			roomImg.style.display = "none";
			fourdxImg.style.display = "block";
			chefImg.style.display = "none";
		});
		chefBtn.addEventListener('click', function() {
			suiteImg.style.display = "none";
			roomImg.style.display = "none";
			fourdxImg.style.display = "none";
			chefImg.style.display = "block";
		});
	</script>
</body>




</html>