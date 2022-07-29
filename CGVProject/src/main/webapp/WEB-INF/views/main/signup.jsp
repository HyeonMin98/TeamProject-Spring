<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../includes/header.jsp"%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/59d34efa84.js" crossorigin="anonymous"></script>
<script src="resources/js/httpRequest.js"></script>

<script type="text/javascript">
	var checkFlag = "N";
	var checkEmail = "N";
	var checkTel = "N";

	function create(){
		var f = document.f;
		
		var name = f.name.value;
		var pwd1 = document.getElementById("pwd1").value;
		var pwd2 = document.getElementById("pwd2").value;
		var birth = f.birth.value;
		
		if(name ==''){
			alert("이름을 입력하세요.")
			f.name.focus();
			return;
		}
		if(pwd1 == ''){
			alert("비밀번호를 입력하세요.")
			f.pwd1.focus();
			return;
		}
		if(pwd2 != pwd1){
			alert("비밀번호가 다릅니다.")
			f.pwd2.focus();
			return;
		}
		if(birth == ''){
			alert("주민등록번호 앞 6자리를 입력하세요.")
			f.birth.focus();
			return;
		}
		
		if(checkFlag != "Y"){
			alert("아이디 확인을 해주세요.");
			return;
		}
		if(checkEmail != "Y"){
			alert("이메일 확인을 해주세요.");
			return;
		}
		if(checkTel != "Y"){
			alert("연락처 확인을 해주세요.");
			return;
		}

		f.action= "/join.do";
		f.submit();
	}

	/* 아이디 확인 */
	function fn_checkId(){
	      
	      var id = f.id.value;//form만 사용가능 name을 가져옴 
	      //document.getElementById("id"); id를 가져옴
	      var ori_id = f.ori_id.value;
	     /*  f.action = "checkid.do";
	      f.method = "post"; */
	      
	      var url="/checkid.do";
	      var param = "id="+f.id.value+"";
	      //console.log("param >>>> " + param);
	      
	      if(id ==''){
	         alert("아이디를 입력하세요.")
	         f.id.focus();
	         return;
	      }else if(id.length <= 4){
	         alert("최소 5글자 이상 입력하세요.")
	         f.id.focus();
	         return;
	      }else {
	         sendRequest(url, param, fnCallback, "POST");
	      }

	      function fnCallback(){
	          if(xhr.readyState == 4 && xhr.status == 200){
	              var data = xhr.response;
	              //var data = xhr.responseText;
	              //var json = eval(data);
				if(data =="yes"){
					alert("중복된 아이디 입니다.");
				}else{
					checkFlag = "Y";

					alert("사용가능한 아이디 입니다.");
				}                          
	          }
	      }
	}
	
	function fn_checkEmail(){
	      
	      var email = f.email.value;
	      var ori_id = f.ori_email.value;
	     
	      var email_form = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	     	      
	      var url="/checkemail.do";
	      var param = "email="+f.email.value+"";
	      //console.log("param >>>> " + param);
	      
	      if(email ==''){
	         alert("이메일을 입력하세요.")
	         f.email.focus();
	         return;
	      }else if(!email_form.test(email)){
	         alert("올바른 형식으로 입력하세요.")
	         f.email.focus();
	         return;
	      }else {
	         sendRequest(url, param, fnCallback, "POST");
	      }

	      function fnCallback(){
	          if(xhr.readyState == 4 && xhr.status == 200){
	              var data = xhr.response;
	              //var data = xhr.responseText;
	              //var json = eval(data);
				if(data =="yes"){
					alert("중복된 이메일 입니다.");
				}else{
					checkEmail = "Y";
					alert("사용가능한 이메일 입니다.");
				}                          

	          }
	      }
	}
	function fn_checkTel(){
	      
	      var tel = f.tel.value;
	      var ori_id = f.ori_id.value;
	      var tel_form = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
	     	      
	      var url="/checktel.do";
	      var param = "tel="+f.tel.value+"";
	      //console.log("param >>>> " + param);
	      
	      if(tel ==''){
	         alert("연락처를 입력하세요.")
	         f.tel.focus();
	         return;
	      }else if(!tel_form.test(tel)){
	         alert("올바른 형식으로 입력하세요.")
	         f.tel.focus();
	         return;
	      } else {
	         sendRequest(url, param, fnCallback, "POST");
	      }

	      function fnCallback(){
	          if(xhr.readyState == 4 && xhr.status == 200){
	              var data = xhr.response;
	              //var data = xhr.responseText;
	              //var json = eval(data);
				if(data =="yes"){
					alert("중복된 연락처 입니다.");
				}else{
					checkTel = "Y";
					alert("사용가능한 연락처 입니다.");
				}                          

	          }
	      }
	}

</script>

<style>
h1 {
	font-size:20px;
}

label {
	width: 100px;
    height: 30px;
    display: inline-block;
}

input {
	width: 150px;
    height: 25px;
}

.join-data {
	margin-top: 20px;
}

.box-login .btn-chk {
    width: 85px;
    height: 25px;
    left: 0;
    position: static;
    margin-top: 5px;
    padding: 2px;
    background: #EAEAEA;
    text-align: center;
    border-width: thin;
}
	
.box-login .btn-join {
    width: 100px;
    height: 30px;
    left: 0;
    position: static;
    margin-top: 20px;
    padding: 2px;
    background: #F15F5F;
    text-align: center;
    border-width: thin;
    color: #ffffff;
}
	
.box-login .btn-cancel {
    width: 100px;
    height: 30px;
    left: 0;
    position: static;
    margin-top: 20px;
    padding: 2px;
    background: #D5D5D5;
    text-align: center;
    border-width: thin;
}
.box-login {
	padding: 30px 0 0 132px;
	border-bottom: 2px solid #898987;
	height: 330px;
}

<style>


* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

#body-wrapper {
	min-height: 100%;
	position: relative;
}

#body-content {
	padding-bottom: 1250px;
}

.tab-menu-round {
	clear: both;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_tabmenu_grade.gif')
		0 bottom repeat-x;
}

.tab-menu-round:after {
	content: '';
	clear: both;
	display: block;
}

*+html .tab-menu-round {
	zoom: 1;
}

.tab-menu-round>li {
	float: left;
	position: relative;
	line-height: 37px;
	margin-left: 1px;
	background: #898987;
	color: #fdfcf0;
	text-align: center;
}

.tab-menu-round>li:before, .tab-menu-round>li:after {
	content: '';
	position: absolute;
	top: 0;
	display: block;
	width: 5px;
	height: 5px;
	background:
		url('https://img.cgv.co.kr/R2014/images/common/bg/bg_tab_corner.png')
		no-repeat;
}

.tab-menu-round>li:before {
	left: 0;
	background-position: 0 0;
}

.tab-menu-round>li:after {
	right: 0;
	background-position: -5px 0;
}

.tab-menu-round>li:first-child {
	margin-left: 0;
}

.tab-menu-round>li>a {
	display: block;
	color: #ffffff;
	font-size: 13px;
	font-weight: 500;
}

.tab-menu-round>li.on {
	background: #fb4357;
}

#login-wrapper {
	position: absolute;
	width: 100%;
	top: 200px;
}

.wrap-login {
	width : 600px;
	margin:auto;
}
  
.wrap-login h3 {
	height: auto; 
	margin: 0; 
	background: none;
	line-height: 1.2;
	text-align: left;
	color: #222222;
	font-size: 15px;
}

.wrap-login h3>strong {
	color: #fb4357;
}

.sect-login {
	width: 541px;
}

.sect-loginguide {
	margin-top: 40px;
}

.wrap-login .tab-menu-round>li {
	width: 100px;
}

.box-login {
	padding: 30px 0 0 132px;
	border-bottom: 2px solid #898987;
	height: 330px;
}
 
.btn_loginNaver {
	display: inline-block;
	margin-top: 35px;
}

.box-login .login {
	position: relative;
	margin-top: 15px
}

.box-login .login input[type="text"], .box-login .login input[type="password"]
	{
	display: block;
	width: 135px;
	height: 35px;
	padding: 0 5px 0 40px;
	border: 2px solid #b5b5b5;
	line-height: 33px;
}

.box-login .login input[type="text"] {
	margin-bottom: 5px;
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png') 12px
		-230px no-repeat;
}

.box-login .login input[type="password"] {
	background:
		url('https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png') 12px
		-261px no-repeat;
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

.box-login>p {
	font-size: 11px;
}

.box-login .btn-login>span {
	display: block;
	width: 258px;
	height: 36px;
	border: 1px solid #ffff;
	color: #f8f8f8;
	font-size: 15px;
	font-weight: 500;
}

.box-login .login .btn-login {
	position: absolute;
	top: 0;
	left: 198px;
	display: block;
	width: 100px;
	height: 86px;
	padding: 2px;
	background: #fb4357;
	line-height: 78px;
	text-align: center;
}

.box-login .btn-login {
	width: 264px;
	height: 42px;
	line-height: 37px;
	left: 0;
	position: static;
	margin-top: 5px;
	padding: 2px;
	background: #fb4357;
	text-align: center;
}

.sect-login>.box-login fieldset {
	position: relative;
}

.box-login .login input[type="text"], .box-login .login input[type="password"]
	{
	width: 264px
}

.box-login fieldset>.login-option {
	position: absolute;
	bottom: -24px;
	left: 108px; /*top:169px; right:145px;*/
	padding-left: 0 !important;
}

.box-login fieldset>.login-option a {
	background-position: right 4px !important;
}

.sect-login>.box-login fieldset .save-id {
	position: absolute;
	top: 166px;
	left: -3px
}

.sect-login>.box-login fieldset .save-id input[type="checkbox"],
	.sect-login>.box-login fieldset .save-id label {
	cursor: pointer
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup,
	tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table,
	caption, tbody, tfoot, thead, tr, th, td {
	font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum,
		sans-serif;
	font-size: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
	word-break: break-all;
	font-size: 13px;
}

ol, ul {
	list-style: none;
}

a {
	color: inherit;
	text-decoration: none;
}

.hidden {
	font: 0/0 a;
	height: 0;
	overflow: hidden;
	position: absolute;
	visibility: hidden;
	width: 0;
	zoom: 1;
}

legend {
	font: 0/0 a;
	position: absolute;
	right: -999em;
	top: -999em;
	zoom: 1;
}


</style>







</style>
</head>

<body>
	<div id="body-wrapper">
	
	<div id = "body-content">
	
		<div id="login-wrapper">
			<div class="wrap-login">
				<div class="sect-login">
					<div class="box-login">
						<h1>회원가입</h1>
						<form name="f" action="user_list.do" items="${list}" method="post" align="left">
						<fieldset>
							<legend>회원가입</legend>
							<div class="join-data">
								<p>
									<label for="id">아이디</label>
									<input type="text" id="id" name="id" required="required" placeholder="최소 5자 이상"/>
									<button type="button" class="btn-chk" id="idCheck" onclick="fn_checkId();">아이디확인</button>
									<input type="hidden" name="ori_id" value="${vo.id}">
								</p>
								<p>
									<label for="name">이름</label>
									<input type="text" id="name" name="name"/>
								</p>
								<p>
									<label for="pwd1">비밀번호</label>
									<input type="password" id="pwd1"/>
								</p>
								<p>
									<label for="pwd2">비밀번호 확인</label>
									<input type="password" id="pwd2" name="pwd"/>
								</p>
								<p>
									<label for="birth">생년월일</label>
									<input type="text" id="birth" name="birth" placeholder="ex)990101"/>
								</p>
								<p>
									<label for="email">이메일</label>
									<input type="text" id="email" name="email" placeholder="abc@naver.com"/>
									<button type="button" class="btn-chk" id="emailCheck" onclick="fn_checkEmail();">이메일 확인</button>
									<input type="hidden" name="ori_email" value="${vo.email}">
								</p>
								<p>
									<label for="tel">연락처</label>
									<input type="text" id="tel" name="tel" placeholder="ex)010-1111-1111"/>
									<button type="button" class="btn-chk" id="telCheck" onclick="fn_checkTel();">연락처 확인</button>
									<input type="hidden" name="ori_tel" value="${vo.tel}">
								</p>
							</div>
							<button type="submit" class="btn-join" onclick="create();return false;">회원가입</button>
							<button type="button" class="btn-cancel" onclick="location.href='main.do'">취소</button>
						</fieldset>
					</div>
				</div>
<!-- 				<div class="sect-loginguide"> -->
<!-- 					<div class="box-useguide"> -->
<!-- 						<strong>CJ ONE 회원이 아니신가요?</strong> <span>회원가입하시고 다양한 혜택을 -->
<!-- 							누리세요!</span> <strong> <a title="새창" target="_blank" -->
<!-- 							href="https://www.cjone.com/cjmweb/join.do?coopco_cd=7010&amp;brnd_cd=1000" -->
<!-- 							class="round red"><span>CJ ONE 회원가입하기</span></a> -->
<!-- 						</strong> <em> </em> <em> <a -->
<!-- 							href="http://www.cjone.com/cjmweb/about-cjone.do" -->
<!-- 							class="round black" target="_blank"><span>CJ ONE -->
<!-- 									멤버십이란?</span></a> -->
<!-- 						</em> -->
<!-- 					</div> -->
<!-- 				</div> -->
			</div>
		</div>
		<!-- </form> -->

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