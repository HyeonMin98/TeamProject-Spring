<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://kit.fontawesome.com/59d34efa84.js"
	crossorigin="anonymous"></script>

<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

/* ---------------------------------상단 시작 ------------------------------- */
.topnavi {
	position: absolute;
	border-bottom: 1px solid #ddd;
	width: 100%;
	top: 0%;
	height: 100px;
	padding: 20px;
	z-index: 50;
}

.title {
	height: 55px;
}

/* ---------------------------------top-end------------------------------- */
#end {
	position: absolute;
	float: right;
	top: 25px;
	right: 40px;
}

#end::after {
	content: "";
	display: block;
	clear: both;
}

#end button {
	border: none;
	background-color: white;
	padding: 10px;
	cursor: pointer;
}

#end .fa-solid {
	font-size: 25px;
}

#end .fa-solid span {
	font-size: 15px;
}

#end a {
	text-decoration: none;
}

.username {
	float: left;
	transform: translate(-45%, 80%);
	font-size: 18px;
	font-weight: bold;
}

/* ---------------------------------tdashedap list------------------------------- */
.taplist {
	z-index: 50;
	position: absolute;
	top: 90px;
	padding: 15px;
	width: 100%;
	border-bottom: 3px solid red;
	height: 60px;
}

.taplist button {
	border: none;
	background-color: white;
	padding: 10px;
	cursor: pointer;
	padding: 10px 25px;
}

.taplist a, .serach {
	text-decoration: none;
	font-size: 15px;
	color: black;
	font-weight: bold;
}

#tap_end {
	float: right;
	transform: translatex(-30%);
}

#tap_end::after {
	content: "";
	display: block;
	clear: both;
}

.search input {
	border: none;
	padding: 10px;
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
}

/* ---------------------------------drop content------------------------------- */
.dropdown {
	display: inline-block;
}

.dropdown:hover .dropdown-content {
	display: block;
	overflow: hidden;
}

.dropdown-content {
	position: absolute;
	z-index: 1;
	border-bottom: solid 1px;
	width: 100%;
	height: 250px;
	position: absolute;
	background-color: white;
	display: none;
	left: 0%;
}

.dropdown table {
	width: 80%;
	text-align: left;
	margin-left: 20px;
}

.dropdown table td {
	border-left: 1px solid #ddd;
	padding-left: 20px;
}

.dropdown table a {
	text-decoration: none;
	color: rgb(131, 131, 131);
}

.dropdown table a:hover {
	text-decoration: underline;
}

/* -----------------------------------------------sticky tap--------------------------------------- -*/
.stikytap nav {
	width: 100%;
	height: 50px;
	background: red;
	color: white;
	top: 0px;
	left: 0;
	z-index: 50;
}

.fix {
	position: fixed;
}

.stickytap {
	z-index: 50;
	position: absolute;
	display: none;
}

.stickynav {
	background-color: #fb4357;
	width: 100%;
	height: 60px;
}

.stickytap button {
	border: none;
	background-color: white;
	padding: 10px;
	cursor: pointer;
	padding: 10px 25px;
}

.stickytap a, .stickytap .serach {
	text-decoration: none;
	font-size: 15px;
	color: black;
	font-weight: bold;
}

.stickydropbtn button {
	background-color: #fb4357;
}

.stickydropbtn a {
	color: white;
	font-weight: bold;
	font-size: 16px;
}

.stickydropdown-btn {
	margin-left: 15px;
	transform: translateY(-23%);
}

.stickydropbtn img {
	width: 70px;
	height: 32px;
	margin-left: 40px;
	margin-top: 14px;
}

.stickysearch {
	border-left: 1px solid;
	border-right: 1px solid;
	background-color: #fb4357;
	margin: 5px;
	padding: 5px 10px 5px 10px;
}

.stickysearch input {
	border: none;
	padding: 10px;
	background-color: #fb4357;
}

@keyframes down {
	0% {
	transform: translateY(-50px);
	}
	100%{
	transform:translateY
	(0px);		
	}
}
</style>


</head>

<body>

	<nav class="topnavi">

		<div id="start">
			<a href="main.do"><img class="title"
				src=" https://img.cgv.co.kr/R2014/images/common/logo/logoRed.png"></a>
			<span>C U L T U R E P L E X</span>
		</div>

		<div id="end">

	<!-- 로그인을 안했을 경우 -->
			<c:if test="${empty res}">
				<a href="login_form.do">
					<button class="login">
						<i class="fa-solid fa-lock"> <br> <span>로그인</span></i>
					</button>
				</a>
				<a href="user_list.do">
					<button class="join">
						<i class="fa-solid fa-user"> <br> <span>회원가입</span>
						</i>
					</button>
				</a>
			</c:if>
			
	<!-- 로그인을 했을 경우 -->
			<c:if test="${!empty res}">
				<p class="username">${res.name}님 환영합니다.</p>

				<a href="logout.do">
					<button class="logout">
						<i class="fa-solid fa-user"> <br> <span>로그아웃</span>
						</i>
					</button>
				</a>
			</c:if>

			<a>
				<button>
					<i class="fa-solid fa-user"> <br> <span>MY CGV</span>
					</i>
				</button>
			</a> <a>
				<button>
					<i class="fa-solid fa-user"> <br> <span>고객센터</span>
					</i>
				</button>
			</a>
		</div>
	</nav>

	<!----------------------------------------------- tap list --------------------------------------------------->


	<nav class="taplist">

		<div class="dropdown">

			<div class="dropbtn">
				<button class="dropdown-btn">
					<a href="moviechart.do">영화</a>
				</button>
				<button class="dropdown-btn">
					<a href="">극장</a>
				</button>
				<button class="dropdown-btn">
					<a href="ticketing.do">예매</a>
				</button>
				<button class="dropdown-btn">
					<a href="store.do">스토어</a>
				</button>
			</div>
			<div class="dropdown-content">
				<div class="container">
					<table>
						<tr>
							<th>영화</th>
							<th>극장</th>
							<th>예매</th>
							<th>스토어</th>
						</tr>
						<tr>
							<td><a href="moviechart.do">무비차트</a></td>
							<td><a href="">CGV 극장</a></td>
							<td><a href="ticketing.do">빠른 예매</a></td>
							<td><a href="store.do">영화 관람권</a></td>
						</tr>
						<tr>
							<td><a href="">아트하우스</a></td>
							<td><a href="">특별관</a></td>
							<td><a href="">상영 스케줄</a></td>
							<td><a href="store.do">기프트 카드</a></td>
						</tr>
						<tr>
							<td><a href="">ICECON</a></td>
							<td><a href=""></a></td>
							<td><a href="">English Ticketing</a></td>
							<td><a href="store.do">콤보</a></td>
						</tr>
						<tr>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href="">English Schedule</a></td>
							<td><a href="store.do">팝콘</a></td>
						</tr>
						<tr>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href="store.do">음료</a></td>
						</tr>
						<tr>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href="store.do">스낵</a></td>
						</tr>
						<tr>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href="store.do">플레이존</a></td>
						</tr>
						<tr>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href=""></a></td>
							<td><a href="store.do">씨네샵</a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

		<div id="tap_end">
			<div class="search">
				<input type="text">
				<button class="glassbtn">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</div>

		</div>
	</nav>

	<!----------------------------------------------- sticky tap list --------------------------------------------------->
	<div class="stickytap">

		<nav class="stickynav">

			<div class="dropdown">

				<div class="stickydropbtn">
					<img
						src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png">
					<button class="stickydropdown-btn">
						<a href="moviechart.do">영화</a>
					</button>
					<button class="stickydropdown-btn">
						<a href="">극장</a>
					</button>
					<button class="stickydropdown-btn">
						<a href="">예매</a>
					</button>
					<button class="stickydropdown-btn">
						<a href="store.do">스토어</a>
					</button>
				</div>
				<div class="dropdown-content">
					<div class="container">
						<table>
							<tr>
								<th>영화</th>
								<th>극장</th>
								<th>예매</th>
								<th>스토어</th>
							</tr>
							<tr>
								<td><a href="moviechart.do">무비차트</a></td>
								<td><a href="">CGV 극장</a></td>
								<td><a href="ticketing.do">빠른 예매</a></td>
								<td><a href="">영화 관람권</a></td>
							</tr>
							<tr>
								<td><a href="http://www.cgv.co.kr/arthouse/">아트하우스</a></td>
								<td><a href="">특별관</a></td>
								<td><a href="">상영 스케줄</a></td>
								<td><a href="store.do">기프트 카드</a></td>
							</tr>
							<tr>
								<td><a href="">ICECON</a></td>
								<td><a href=""></a></td>
								<td><a href="">English Ticketing</a></td>
								<td><a href="store.do">콤보</a></td>
							</tr>
							<tr>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href="">English Schedule</a></td>
								<td><a href="store.do">팝콘</a></td>
							</tr>
							<tr>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href="store.do">음료</a></td>
							</tr>
							<tr>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href="store.do">스낵</a></td>
							</tr>
							<tr>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href="store.do">플레이존</a></td>
							</tr>
							<tr>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href=""></a></td>
								<td><a href="store.do">씨네샵</a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<div id="tap_end">
				<div class="stickysearch">
					<input type="text"> <i class="fa-solid fa-magnifying-glass"></i>
				</div>

			</div>
		</nav>
	</div>




	<script>
		function navigo() {
			const header = document.querySelector('.stickytap');
			const headerheight = 100;

			document.addEventListener('scroll', onScroll, {
				passive : true
			});

			function onScroll() {

				const scrollposition = pageYOffset;
				const nav = document.querySelector('.stickynav');

				if (headerheight <= scrollposition) {
					nav.classList.add('fix')
					header.style.display = "block";
				} else {
					nav.classList.remove('fix');
					header.style.display = "none";
				}
			}

		}
		navigo()
	</script>



</body>

</html>