<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../includes/header.jsp"%>
<head>

<meta charset="UTF-8">

<title>무비차트</title>


<style>
li {
	list-style-type: none;
}

h3 {
	font-size: 36px;
}

#body-wrapper {
	min-height: 100%;
	position: relative;
}

#body-content {
	padding-bottom: 600px;
	padding-top: 150px;
}

.title-wrap {
	width: 980px;
	height: 93px;
	margin: auto;
	border-bottom: 4px solid;
}

.title-wrap h3 {
	position: relative;
	top: 30px;
}

.title-wrap a {
            float: right;
            position: relative;
        }

        .title-wrap button {
            border: none;
            background-color: white;
            cursor: pointer;
            font-weight: bold;
            margin : 10px;
        }

        .title-wrap a::after {
            content: "";
            display: block;
            clear: both;
        }

.movies {
	width: 1044px;
	margin: auto;
}

.movies ul {
	width: 1044px;
	margin-left: 30px;
	margin-top: 10px;
}

.movies li {
	display: inline-block;
	width: 24%;
	margin-right: 5px;
}

.movies img {
	width: 197px;
	height: 260px;
}

.toprank {
	width: 197px;
	height: 26px;
	margin: 0px 0px 4px;
	text-align: center;
	background-color: #fb4357;
	color: white;
	font-size: 19px;
}

.rank {
	width: 197px;
	height: 26px;
	margin: 0px 0px 4px;
	text-align: center;
	background-color: #333333;
	color: white;
	font-size: 19px;
}

.movies a {
	text-decoration: none;
	background-color: #fb4357;
	border-radius: 5px;
	color: white;
	font-weight: bold;
	width: 95px;
	height: 25px;
	text-align: center;
	padding: 2px 15px;
	font-size: small;
}

.movies p {
	font-weight: bold;
}

.movies span {
	font-size: small;
}

.giftAd {
	height: 360px;
	width : 197px;
	background-color: #212120;;
	margin: auto;
	text-align: center;
	transform: translateX(-14.5%);
}

.giftAd img {
	width: 140px;
	height: 260px;
	margin-top: 20px;
}

.giftAd span {
	display: inline-block;
	color: white;
	font-size: 14px;
	border-bottom: 2px solid white;
	padding-top: 15px;
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

</head>

<body>

	<div id="body-wrapper">
		<div id="body-content">

            <div class="title-wrap">
                <h3>무비차트</h3>

                <div class="chart-btn">
                    <a>
                        <button> &raquo; 상영 예정작</button>
                    </a> 
                    <a>
                        <button>&raquo; 무비차트</button>
                    </a>
                </div>
            </div>

			<div class="movies">

				<ul>

					<li>
						<div class="toprank">
							<strong>NO.1</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82120/82120_320.jpg">
						<p>탑건-매버릭</p> <span>99%</span> <span>| 예매율 49.0%</span> <br>
						<a href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="toprank">
							<strong>NO.2</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85999/85999_320.jpg">
						<p>토르-러브 앤 썬더</p> <span>99%</span> <span>| 예매율 17.7%</span> <br>
						<a href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="toprank">
							<strong>NO.3</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85852/85852_320.jpg">
						<p>헤어질 결심</p> <span>99%</span> <span>| 예매율 10.4%</span> <br>
						<a href="ticketing.do" class="ticketing">예매하기</a>
					</li>

					<li>
						<div class="giftAd">
							<img
								src="https://adimg.cgv.co.kr/images/202111/cgvgift/1221_160x300.jpg">
							<span>CGV기프트카드</span> <span>감사의 마음을 선물하세요!</span>
						</div>
					</li>
				</ul>




				<ul class="movies">

					<li>
						<div class="rank">
							<strong>NO.4</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85871/85871_320.jpg">
						<p>마녀 Part2.</p> <span>83%</span> <span>| 예매율 7.4%</span> <br>
						<a href="ticketing.do" class="ticketing">예매하기</a>
					</li>

					<li>
						<div class="rank">
							<strong>NO.5</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85813/85813_320.jpg">
						<p>범죄도시2</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="rank">
							<strong>NO.6</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85829/85829_320.jpg">
						<p>브로커</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="rank">
							<strong>NO.7</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85920/85920_320.jpg">
						<p>컴온컴온</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>


				</ul>


				<ul class="movies">
					<li>
						<div class="rank">
							<strong>NO.8</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85977/85977_320.jpg">
						<p>버즈 라이트이어</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="rank">
							<strong>NO.9</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85951/85951_320.jpg">
						<p>월벤져스</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="rank">
							<strong>NO.10</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86000/86000_320.jpg">
						<p>비욘드 라이브 더 무비</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="rank">
							<strong>NO.11</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85939/85939_320.jpg">
						<p>?</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>


				</ul>

				<ul class="movies">
					<li>
						<div class="rank">
							<strong>NO.12</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85922/85922_320.jpg">
						<p>로어</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="rank">
							<strong>NO.13</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85689/85689_320.jpg">
						<p>쥬라기 월드</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li>
						<div class="rank">
							<strong>NO.14</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80117/80117_320.jpg">
						<p>러빙 빈센트</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>
					<li> 
						<div class="rank">
							<strong>NO.15</strong>
						</div> <img
						src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79145/79145_320.jpg">
						<p>아가씨</p> <span>98%</span> <span>| 예매율 4.8%</span> <br> <a
						href="ticketing.do" class="ticketing">예매하기</a>
					</li>


				</ul>
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
			</div>
	</footer>
		
		
	</div>
	
	
	
	
	




</body>

</html>