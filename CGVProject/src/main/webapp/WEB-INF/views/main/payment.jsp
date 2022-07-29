<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
  var a;
  function pay(){
	 
	  document.getElementById("결제확인").innerHTML ="결제완료"
	a = document.getElementById("결제확인").innerText;

	
	  window.resizeTo(1010, 740);
    var IMP = window.IMP; 
    IMP.init('imp99896107'); 
    IMP.request_pay({
    	pg : "kakaopay.TC0ONETIME", 
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '결제',
        amount : opener.document
		.getElementById("bottom_payment_text_").innerText,
        buyer_email : 'gildong@naver.com',
        buyer_name : '홍길동',
        buyer_tel : '010-1234-1234',
 
        m_redirect_url : 'redirect url'
        
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '결제가 완료되었습니다.';
            
    		location.href='';
        } else {
            var msg = '결제에 실패하였습니다.';
            rsp.error_msg;
            
        }
    });

  }
  

    </script>
<style>

.poster {
	float: left;
	width: 110px;
	height: 158px;
	line-height: 158px;
	margin-right: 19px;
	overflow: hidden;
	color: #333;
	font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 12px;
	font-weight: normal;
}

.row {
	width: 52px;
	font-weight: normal;
	text-align: left;
	color: #333;
	font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 12px;
}

.close:hover {
	cursor: pointer;
}

.send:hover {
	cursor: pointer;
}
.payment:hover {
	cursor: pointer;
}


</style>
<script>
	var img;
	window.onload = function() {





		
		document.getElementById("theater1").innerHTML = opener.document
				.getElementById("bottom_movie_span").innerText;
		document.getElementById("theater2").innerHTML = opener.document
				.getElementById("bottom_text1_").innerText;
		document.getElementById("theater3").innerHTML = opener.document
				.getElementById("bottom_text3_").innerText;
		document.getElementById("theater4").innerHTML = opener.document
				.getElementById("bottom_text2_").innerText;
		document.getElementById("theater5").innerHTML = opener.document
				.getElementById("bottom_text4_ad").innerText+opener.document
				.getElementById("bottom_text4_yo").innerText+opener.document
				.getElementById("bottom_text4_se").innerText;
		document.getElementById("theater6").innerHTML = opener.document
				.getElementById("bottom_seat_text_").innerText;
		document.getElementById("theater7").innerHTML = opener.document
				.getElementById("bottom_payment_text_").innerText;

		img = opener.document.getElementById("bottom_movie_span").innerText
		if (img == "탑건-매버릭") {
			poster.style.background = "url(http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82120/82120_185.JPG)";
			poster.style.backgroundSize = "cover";
		} else if (img == "토르-러브앤썬더") {
			poster.style.background = "url(http://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85999/85999_185.JPG)";
			poster.style.backgroundSize = "cover";
		} else if (img == "범죄도시") {
			poster.style.background = "url(http://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85813/85813_185.JPG)";
			poster.style.backgroundSize = "cover";
		}

	
	}
	function send(f){
		
		   $('input[name=movie]').attr('value',opener.document.getElementById("bottom_movie_span").innerText);
   		$('input[name=loc]').attr('value',opener.document.getElementById("bottom_text1_").innerText);
   		$('input[name=theater]').attr('value',opener.document.getElementById("bottom_text3_").innerText);
   		$('input[name=day]').attr('value',opener.document.getElementById("bottom_text2_").innerText);
   		$('input[name=people]').attr('value',opener.document
   				.getElementById("bottom_text4_ad").innerText+opener.document
   				.getElementById("bottom_text4_yo").innerText+opener.document
   				.getElementById("bottom_text4_se").innerText);
   		$('input[name=seat]').attr('value',opener.document.getElementById("bottom_seat_text_").innerText);
   		
   		f.action = "insert.do";
   		f.method = "post";
   		f.submit();
	}
	setInterval(function () {if(a=="결제완료"){
			  payment_.style.pointerEvents ="auto"
			  payment_.style.cursor= "pointer";}}, 1000);
	
	
	
	
</script>


</head>
<body style="margin: 0;">


	<div
		style="display: block; border-bottom: 4px solid #333; height: 51px; padding-top: 0; padding-left: 0; margin-bottom: 0; background-color: #333;">
		<h4
			style="margin-top: 0; margin-bottom: 0; float: none; width: auto; margin-right: 0; background: none; color: #f2f0e5; border: 1px solid #707070; height: 35px; padding-top: 14px; padding-left: 20px; font-family: Nanum Gothic, 나눔고딕, Apple SD Gothic Neo, AppleGothic, 돋움, dotum, Sans-serif; font-size: 22px; line-height: 22px; letter-spacing: -1px;">예매내역
			확인</h4>
	</div>
	<div style="width: 100%; height: 275px; background-color: #f6f6f4;">
		<div
			style="height: 173px; position: relative; margin: 0 auto; padding: 40px 40px 20px 40px;">
			<div
				style="border-bottom: solid 1px #bebebd; width: 452px; height: 257px; border-top: solid 2px #bebebd; float: left; border-left: none;">
				<h5
					style="display: block; height: 35px; line-height: 38px; margin: 0 0; padding: 0 0; padding-left: 23px; border-bottom: solid 1px #bebebd; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/payment_dot_gray.png) no-repeat 10px center #eeeeec;">
					예매정보 <span
						style="color: #666; font-size: 11px; font-family: Dotum, '돋움'; font-weight: normal; padding-left: 19px;">결제하시기
						전 예매내역을 다시 한번 확인해 주세요.</span>
				</h5>
				<div style="padding: 20px 0 40px 0; display: block;">
					<div id="poster" class="poster"></div>

					<form name="form1" method="post">
						<table style="width: 323px; border: none; table-layout: fixed;">
							<tr>
								<th class="row">영화명</th>
								<td id="theater1"
									style="color: #333; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;">
								</td>
								<td><input type="hidden" name="movie"
									value=""></td>

							</tr>
							<tr>
								<th class="row">극장</th>
								<td id="theater2"
									style="color: #333; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;">

								</td>
								<td><input type="hidden" name="loc" value=""></td>

							</tr>
							<tr>
								<th class="row">상영관</th>
								<td id="theater3"
									style="color: #333; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;">

								</td>
								<td><input type="hidden" name="theater" value=""></td>

							</tr>
							<tr>
								<th class="row">일시</th>
								<td id="theater4"
									style="color: #333; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;">


								</td>
								<td><input type="hidden" name="day" value=""></td>

							</tr>
							<tr>
								<th class="row">인원</th>
								<td id="theater5"
									style="color: #333; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;">

								</td>
								<td><input type="hidden" name="people" value=""></td>

							</tr>
							<tr>
								<th class="row">좌석</th>
								<td id="theater6"
									style="color: #333; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;">

								</td>
								<td><input type="hidden" name="seat" value="">
								<td>
							</tr>
						</table>
					</form>







				</div>
			</div>
			<div
				style="border-left: solid 1px #bebebd; border-bottom: solid 1px #bebebd; width: 452px; height: 257px; border-top: solid 2px #bebebd; float: left;">
				<h5
					style="display: block; height: 35px; line-height: 38px; margin: 0 0; padding: 0 0; padding-left: 23px; border-bottom: solid 1px #bebebd; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/payment_dot_gray.png) no-repeat 10px center #eeeeec;">
					결제정보 <span
						style="color: #666; font-size: 11px; font-family: Dotum, '돋움'; font-weight: normal; padding-left: 19px;">
						결제하기 버튼을 클릭하시면 결제가 완료됩니다.</span>
				</h5>
				<div style="padding: 20px 0 40px 0; display: block;">


					<table
						style="position: relative; left: 20px; width: 323px; border: none; table-layout: fixed;">
						<tr>
							<th class="row">결제금액</th>
							<td id="theater7"
								style="color: #333; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;"></td>

						</tr>
						<tr>
							<th class="row">결제수단</th>
							
							<td id="theater8" class="payment" 
								style="color: #333; width:100px;height:50px;font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: bold;" >
								<input type="button"  class="payment"name="pay"  onclick="pay()" value="카카오페이"  
								style="background:yellow;width:100px;height:30px;  vertical-align: middle; position: relative; vertical-align:text-top;   vertical-align:-4px">
								<input id="결제확인"name="결제확인"type="hidden" value="">


							</td>

						</tr>

					</table>










				</div>




			</div>
		</div>
	</div>




	<div
		style="text-align: center; padding: 30px 40px; background-color: #f6f6f4;">
		<a type="submit" onclick="send(form1)"  class="send"  id="payment_"
			style="display: inline-block; zoom: 1; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/payment_btn_payment.png) no-repeat 0 0; width: 130px; height: 45px;"></a>
		<a class="close" onclick="window.close()"
			style="display: inline-block; zoom: 1; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/payment_btn_cancel.png) no-repeat 0 0; width: 75px; height: 45px;"></a>

	</div>

</body>
</html>