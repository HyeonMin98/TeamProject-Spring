<%@ page import="vo.MovieVO"%>
<%@ page import="dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


.seat_btn:hover{
	cursor: pointer;
}
.head{
	width:auto;
	height:240px;
}
.middle{
	width:auto;
	height:739px;
	text-align:center;
	position: relative;

}
.middle_top{
	width:996px;
	height:44px;
	margin:auto;
	margin-top: 30px;
	position:relative;
	top: -90px;
	
}
.middle_middle{
    width: 1324px;
    height: 100%;
    margin: 0 auto;
    display: flex;
    position: relative;
    
}


.movie_select_top{
	position: relative;
    float: left;
    margin-top: 10px;
    height: 28px;
    line-height: 28px;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_body_off.png) repeat-x left;
    color: #333;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
}
.movie_select_top_side_on{
	background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_side_on.png) no-repeat;
	float: left;
    margin-top: 10px;
    height: 28px;
    width: 2px;
  
}
.movie_select_top_side_off{
	background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_side_off.png) no-repeat;
	float: left;
    margin-top: 10px;
    height: 28px;
    width: 2px;
}
.arrow{
	 vertical-align: middle;
    display: inline-block;
    zoom: 1;
    width: 7px;
    height: 4px;
    margin-left: 6px;
    margin-bottom: 2px;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_arrow.png) no-repeat;
}
.sequence{
	color: #333;
	float: left;
    min-width: 50px;
    height: 32px;
    line-height: 32px;
    padding: 0 5px;
       font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
}
.movie{
	width: 244px;
    height: 35px;
    line-height: 35px;
    margin-bottom: 1px;
    position: relative;
    display: block;
    background-color:none;
}
.bottom_text{
  font-weight: bold;

    float:left;

    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 11px;
	
}
.icon{
	width: 32px;
    height: 35px;
    display: inline-block;
    background-repeat: no-repeat;
    margin-right: 1px;
    float:left;
}
.text{
	 color: #333;
    font-weight: bold;
    padding-right: 5px;
    line-height: 35px;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
	position: relative;
}
.textprice{
	 color: #333;
    font-weight: bold;
    padding-right: 5px;
    line-height: 20px;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
	position: relative;
}
.text2{
	 color: #5a5a5a;
    font-weight: bold;
    padding-right: 5px;
    line-height: 35px;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
 
    font-size: 1.9em;	
}

.banner1{
	width: 160px;
    height: 300px;
    flex:1;
  
}

.banner2{
	width: 160px;
    height: 300px;
    
 
}

.movie_list::-webkit-scrollbar {
    width: 6px; 
      height: 30px;  
}

.movie_list::-webkit-scrollbar-thumb {
   border-radius: 3px;
  background-color: gray;

}

.movie_list::-webkit-scrollbar-track {
     background-color: transparent;  
}
.movie_list::-webkit-scrollbar-button {
  width: 0;
  height: 95%;
  float: left;
}
.time {
	width: 49px;
	height: 23px;
	line-height: 23px;
	border: 1px solid #d6d3ce;
	color: #333;
	font-size: 12px;
	font-weight: bold;
	font-family: Verdana;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/timelist_item_none.png)
		no-repeat;
	float: left;
}

.seatsN {
	padding-left: 19px;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_morning_night.png)
		no-repeat left;
	background-position: 2px 6px;
	float: left;
	height: 20px;
	line-height: 25px;
	text-align: left;
	color: #3d7c35;
	font-size: 12px;
	overflow: hidden;
}
.seatsN_{
	position:relative;
	padding-left: 3px;
	background-position: 2px 6px;
	float: left;
	height: 20px;
	line-height: 25px;
	text-align: left;
	color: #3d7c35;
	font-size: 12px;
	overflow: hidden;
}

.button {
	display: block;
	vertical-align: middle;
	width: 103px;
	height: 25px;
	text-decoration: none;
	text-align: center;
	cursor: pointer;
	border: none;
	padding: 0 0;
	background: none;
	white-space: nowrap;
}
.button:hover{
	cursor: pointer;
}
.selected{
	height: 25px;
    line-height: 20px;
  	position:relative;
	text-align:left;
    display: block;
   	width:122px;
    color:white;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    margin-left: 7px;

}
.selected_person{
	height: 22px;
    line-height: 25px;
  	position:relative;
    display: block;
   	width:22px;
    color:white;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    float:left;
    margin-right: 3px;
    border: 1px solid #d6d3ce;
}
.selected_person_{
	height: 22px;
    line-height: 25px;
  	position:relative;
    display: block;
   	width:22px;
    color:black;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    float:left;
    margin-right: 3px;
border: 1px solid #d6d3ce;
}

.selected:hover{
	cursor: pointer;
}
.momth_area{
    float: left;
    width: 64px;
    height: 67px;
    margin-bottom: 1px;
    margin-left: 7px;
}
.year{
	display: block;
    margin-top: 12px;
    text-align: center;
    color: #666;
    font-size: 11px;
    font-family: Verdana;
    font-weight: bold;
    line-height: 11px;
}
.month{
	    display: block;
    margin-top: 3px;
    text-align: center;
    color: #666;
    font-size: 30px;
    font-family: Verdana;
    font-weight: bold;
    line-height: 30px;
}
li.day{
	margin-left: 10px;
    width: 60px;
	position: relative;
    clear: both;
    float: left;
    height: 35px;
    line-height: 35px;
    margin-bottom: 1px;
    
}
a.day {
	width: 100%;
	height: 100%;
}

a.day:hover {
	cursor: pointer;
}

span.day{
	    float: right;
    color: #333;
    font-family: Verdana;
    font-size: 14px;
    font-weight: bold;
    cursor: pointer;
}
span.sat{
	    float: right;
    color: #333;
    font-family: Verdana;
    font-size: 14px;
    font-weight: bold;
    cursor: pointer;
    color: #31597e;
}
span.sun{
	    float: right;
    color: #333;
    font-family: Verdana;
    font-size: 14px;
    font-weight: bold;
    cursor: pointer;
    color: #ad2727;
}
.dayweek{
	    float: left;
    color: #333;
    font-size: 12px;
    cursor: pointer;
    line-height: 35px;
    
}
.satweek{
	    float: left;
    color: #333;
    font-size: 12px;
    cursor: pointer;
    line-height: 35px;
        color: #31597e;
}
.sunweek{
	    float: left;
    color: #333;
    font-size: 12px;
    cursor: pointer;
    line-height: 35px;
    color: #ad2727;
}
.morning{
	color: #333;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    font-weight: normal;
}
.night{
	color: #333;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    font-weight: normal;
}
@-webkit-keyframes fadein {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
.personscreen{
	position: relative;
    border-bottom: 2px solid #d4d3c9;
    display: inline-block;
    padding: 17px 0 3px 0;
    width: 993px; 
    height: 132px;
    margin-right:10px;
    margin-left: 5px;
    z-index:1;
    opacity:0;
    background:#f2f0e5;
    top: -30px;
}
.booking_head{
	background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/titles.png);
	background-color: black;
	margin: 0px 1px 0px 1px;
	float:left;
	 box-shadow:0px 1px 0px 1px silver; 
	 position:relative;
}
.movie:hover{
	cursor: pointer;
}
.booking_middle{
	margin: 0px 1px 0px 1px;
    background-color: #f2f0e5;
    float:left;
    box-shadow:0px 1px 0px 1px silver; 
    z-index: 2;
    position: relative;
    top: -132px;
}
.bottom{
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    float: left; 
   
}
.row{
    position: absolute;
    height: 15px;
    line-height: 15px;
}
.label{
    position: relative;
    left: 0px;
    margin-bottom: 1px;
    width: 15px; 
    height: 14px; 
    line-height: 14px; 
    border-top: 1px solid #d4d3c9;
    font-size: 11px;
    font-family: Verdana;
    font-weight: bold;
    text-align: center;
    float:left;
}
.step{
	width:158px;
	height:66px;
	display: block;
	
}
.guide_tab{
	width:222px; 
	height:66px; 
	padding: 0 33px; 
	border: 2px solid black; 
	border-collapse : collapse; 
	float: left;
	
}


.닫기{
	display: block;
    margin: 1px;
    line-height: 25px;
    border: 1px solid black;
    border-radius: 3px;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    background-color: #fff;
}
.닫기버튼{
	margin-right: 3px;
    letter-spacing: -1px;
    font-weight: bold;
    background-color: #333;
    border-radius: 4px;
    display: inline-block;
    width: 54px;


}
.sequence:hover{
	cursor: pointer;
}
.닫기버튼:hover{
	text-decoration:underline
}
.movie_select_top:hover{
	cursor: pointer;
}
.step1_물음표:hover{
	cursor: pointer;
}
.step1_물음표2:hover{
	cursor: pointer;
}
.step1_물음표3:hover{
	cursor: pointer;
}
.step1_물음표4:hover{
	cursor: pointer;
}
.step1_물음표5:hover{
	cursor: pointer;
}
.step2_물음표:hover{
	cursor: pointer;
}
.step2_물음표2:hover{
	cursor: pointer;
}
.step3_물음표:hover{
	cursor: pointer;
}
.step3_물음표2:hover{
	cursor: pointer;
}
.step3_물음표3:hover{
	cursor: pointer;
}
.step3_물음표4:hover{
	cursor: pointer;
}
.step3_물음표5:hover{
	cursor: pointer;
}
.말풍선_top{
	display: block;
    height: 26px;
    position: relative;
    opacity: 0;
}
.no:hover{
cursor: pointer;
}
.말풍선_middle{
	width:128px;
	display: block;
    height: auto;
    position: relative;
    text-align: left;
    opacity: 0;
}

.말풍선_bottom{
	display: block;
    height: 26px;
    position: relative;
    opacity: 0;
}

.예매다시하기{
	width:113px;
	height:30px;
	float: right;
	background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/top_buttons.png);
	background-position: 0 -120px;
	margin-left : 5px;

}
.제휴할인혜택{
	width:88px;
	height:30px;
	float: right;
	background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/top_buttons.png);
	background-position: 0 -60px;
	margin-left : 5px;

}
.예매가이드{
	width:81px;
	height:30px;
	float: right;
	background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/top_buttons.png);
	background-position: 0 -30px;
	margin-left : 5px;

	}
.theater_minimap{
    position: relative;
    width: 993px;
    padding-top: 20px;
    height: 220px;
	margin-right: 10px;
    margin-left: 5px;
    background: #f2f0e5;
    top: -33px;
    opacity: 0.4;
}
.screen{
	height: 25px;
    margin: 0 auto;
    line-height: 25px;
    text-align: center;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_bg.png) repeat-x left;
	width: 652px;
}
</style>
<style>
.selected_person:hover{
	cursor: pointer;
}
.selected_person_:hover{
	cursor: pointer;
}
.icon_{
    position: relative;
    padding-left:15px;
    height: 16px;
    color: #666;    
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons_20210617.png) no-repeat;
    color: #333;
  
   
}
.again:hover{
cursor: pointer;
}
.icon_text{
position: relative;
  font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    font-weight: normal;
     margin-top:8px;
  text-align: left;
}

.icon_text:first-child{
	margin-top: 0;
}
.no{
	background-color: #666;
    background-position: 1000px 1000px;
    display: block;
    width: 15px;
    text-align: center;
    color: #fff;
    font-size: 10px;
    position:relative;
    float:left;
	border: 1px solid #e6e6e6;
}

</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>
	function booking_guide() {
		main.style.zIndex = 1;
		backscreen.style.zIndex = 7;
		main.style.opacity = 0.5;
		backscreen.style.opacity = 1;
	}
	function 닫기() {
		main.style.zIndex = 2;
		backscreen.style.zIndex = 1;
		main.style.opacity = 1;
		backscreen.style.opacity = 0;

	}
	function step_first() {
		step1_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab01_on.png) no-repeat";
		step2_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab02.png) no-repeat";
		step3_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab03.png) no-repeat";
		step1.style.borderTop = "2px solid rgba(0,0,0,1)";
		step1.style.borderLeft = "2px solid rgba(0,0,0,1)";
		step1.style.borderRight = 0;
		step1.style.borderBottom = 0;
		step2.style.border = "2px solid rgba(0,0,0,0.3)";
		step2.style.borderRight = 0;
		step2.style.borderLeft = "2px solid rgba(0,0,0,1)"
		step2.style.borderBottom = "2px solid rgba(0,0,0,1)"
		step3.style.border = "2px solid rgba(0,0,0,0.3)";
		step3.style.borderLeft = "2px solid rgba(0,0,0,0.3)";
		step3.style.borderBottom = "2px solid rgba(0,0,0,1)"
		step1_image1.style.zIndex = 3;
		step1_image2.style.zIndex = 2;
		step1_image3.style.zIndex = 1;
		step1_image1.style.opacity = 1;
		step1_image2.style.opacity = 0;
		step1_image3.style.opacity = 0;
		backscreen.style.overflow = "hidden";
		backscreen.scrollTop = 0;
	}
	function step_second() {
		step1_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab01.png) no-repeat";
		step2_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab02_on.png) no-repeat";
		step3_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab03.png) no-repeat";
		step1.style.border = "2px solid rgba(0,0,0,0.3)";
		step1.style.borderRight = "2px solid rgba(0,0,0,1)";
		step1.style.borderBottom = "2px solid rgba(0,0,0,1)";
		step2.style.borderTop = "2px solid rgba(0,0,0,1)";
		step2.style.borderLeft = 0;
		step2.style.borderRight = 0;
		step2.style.borderBottom = 0;
		step3.style.border = "2px solid rgba(0,0,0,0.3)"
		step3.style.borderLeft = "2px solid rgba(0,0,0,1)"
		step3.style.borderBottom = "2px solid rgba(0,0,0,1)"
		step1_image1.style.zIndex = 1;
		step1_image2.style.zIndex = 3;
		step1_image3.style.zIndex = 2;
		step1_image1.style.opacity = 0;
		step1_image2.style.opacity = 1;
		step1_image3.style.opacity = 0;
		backscreen.style.overflow = "hidden";
		backscreen.scrollTop = 0;
	}

	function step_third() {
		step1_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab01.png) no-repeat";
		step2_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab02.png) no-repeat";
		step3_span.style.background = "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab03_on.png) no-repeat";
		step1.style.border = "2px solid rgba(0,0,0,0.3)";
		step1.style.borderBottom = "2px solid rgba(0,0,0,1)"
		step2.style.borderTop = "2px solid rgba(0,0,0,0.3)";
		step2.style.borderRight = "2px solid rgba(0,0,0,1)";
		step2.style.borderBottom = "2px solid rgba(0,0,0,1)"
		step2.style.borderLeft = 0;
		step3.style.borderTop = "2px solid rgba(0,0,0,1)";
		step3.style.borderRight = "2px solid rgba(0,0,0,1)";
		step3.style.borderLeft = 0;
		step3.style.borderBottom = 0;
		step1_image1.style.zIndex = 1;
		step1_image2.style.zIndex = 2;
		step1_image3.style.zIndex = 3;
		step1_image1.style.opacity = 0;
		step1_image2.style.opacity = 0;
		step1_image3.style.opacity = 1;
		backscreen.style.overflowY = "scroll";
		backscreen.style.overflowX = "hidden";
	}

	function step1_opa() {
		step1_first.style.opacity = 1;
		step1_first2.style.opacity = 1;
		step1_first3.style.opacity = 1;
		물음표3.style.opacity = 0;
	}
	function step1_opa_() {
		step1_first.style.opacity = 0;
		step1_first2.style.opacity = 0;
		step1_first3.style.opacity = 0;
		물음표3.style.opacity = 1;
	}
	function step1_opa2() {
		step1_second.style.opacity = 1;
		step1_second2.style.opacity = 1;
		step1_second3.style.opacity = 1;
		물음표5.style.opacity = 0;

	}
	function step1_opa2_() {
		step1_second.style.opacity = 0;
		step1_second2.style.opacity = 0;
		step1_second3.style.opacity = 0;
		물음표5.style.opacity = 1;
	}
	function step1_opa3() {
		step1_third.style.opacity = 1;
		step1_third2.style.opacity = 1;
		step1_third3.style.opacity = 1;
	}
	function step1_opa3_() {
		step1_third.style.opacity = 0;
		step1_third2.style.opacity = 0;
		step1_third3.style.opacity = 0;
	}
	function step1_opa4() {
		step1_fourth.style.opacity = 1;
		step1_fourth2.style.opacity = 1;
		step1_fourth3.style.opacity = 1;
	}
	function step1_opa4_() {
		step1_fourth.style.opacity = 0;
		step1_fourth2.style.opacity = 0;
		step1_fourth3.style.opacity = 0;
	}
	function step1_opa5() {
		step1_fifth.style.opacity = 1;
		step1_fifth2.style.opacity = 1;
		step1_fifth3.style.opacity = 1;
	}
	function step1_opa5_() {
		step1_fifth.style.opacity = 0;
		step1_fifth2.style.opacity = 0;
		step1_fifth3.style.opacity = 0;
	}
	function step2_opa() {
		step2_first.style.opacity = 1;
		step2_first2.style.opacity = 1;
		step2_first3.style.opacity = 1;
	}
	function step2_opa_() {
		step2_first.style.opacity = 0;
		step2_first2.style.opacity = 0;
		step2_first3.style.opacity = 0;
	}
	function step2_opa2() {
		step2_second.style.opacity = 1;
		step2_second2.style.opacity = 1;
		step2_second3.style.opacity = 1;
	}
	function step2_opa2_() {
		step2_second.style.opacity = 0;
		step2_second2.style.opacity = 0;
		step2_second3.style.opacity = 0;
	}
	function step3_opa() {
		step3_first.style.opacity = 1;
		step3_first2.style.opacity = 1;
		step3_first3.style.opacity = 1;
		스텝3_물음표3.style.opacity = 0;
	}
	function step3_opa_() {
		step3_first.style.opacity = 0;
		step3_first2.style.opacity = 0;
		step3_first3.style.opacity = 0;
		스텝3_물음표3.style.opacity = 1;
	}
	function step3_opa2() {
		step3_second.style.opacity = 1;
		step3_second2.style.opacity = 1;
		step3_second3.style.opacity = 1;
	}
	function step3_opa2_() {
		step3_second.style.opacity = 0;
		step3_second2.style.opacity = 0;
		step3_second3.style.opacity = 0;
	}
	function step3_opa3() {
		step3_third.style.opacity = 1;
		step3_third2.style.opacity = 1;
		step3_third3.style.opacity = 1;
	}
	function step3_opa3_() {
		step3_third.style.opacity = 0;
		step3_third2.style.opacity = 0;
		step3_third3.style.opacity = 0;
	}
	function step3_opa4() {
		step3_fourth.style.opacity = 1;
		step3_fourth2.style.opacity = 1;
		step3_fourth3.style.opacity = 1;
	}
	function step3_opa4_() {
		step3_fourth.style.opacity = 0;
		step3_fourth2.style.opacity = 0;
		step3_fourth3.style.opacity = 0;
	}
	function step3_opa5() {
		step3_fifth.style.opacity = 1;
		step3_fifth2.style.opacity = 1;
		step3_fifth3.style.opacity = 1;
	}
	function step3_opa5_() {
		step3_fifth.style.opacity = 0;
		step3_fifth2.style.opacity = 0;
		step3_fifth3.style.opacity = 0;
	}
	function reload(){
		location.reload();	
	}
	</script>
<script>
	function 가나다순(){
		asc_sort.style.background= "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/sortmenu_btn_on.png) no-repeat 50% 100%";
		filmrating_sort.style.background= "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/sortmenu_border_bottom.png) repeat-x bottom";
		filmrating.style.opacity = 0;
		asc.style.opacity = 1;
		filmrating.style.zIndex = 1;
		asc.style.zIndex = 2;
		}
	function 예매율순(){
		filmrating_sort.style.background= "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/sortmenu_btn_on.png) no-repeat 50% 100%";
		asc_sort.style.background= "url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/sortmenu_border_bottom.png) repeat-x bottom";
		filmrating.style.opacity = 1;
		asc.style.opacity = 0;
		filmrating.style.zIndex = 2;
		asc.style.zIndex = 1;
		}
	function 서울(){
		seo.style.background="url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/theaterarealist_item_selected.png) no-repeat right";
		kyu.style.background= "none";
		inc.style.background= "none";
		seo.style.backgroundColor= "#f2f0e5";
		kyu.style.backgroundColor= "#e6e4d9";
		inc.style.backgroundColor= "#e6e4d9";
		seo_loc.style.opacity = 1;
		seo_loc.style.zIndex = 2;
		inc_loc.style.opacity = 0;
		inc_loc.style.zIndex = 1;
		kyu_loc.style.opacity = 0;
		kyu_loc.style.zIndex = 1;
	}
	function 경기(){
		seo.style.background= "none";
		kyu.style.background="url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/theaterarealist_item_selected.png) no-repeat right";
		inc.style.background="none";
		seo.style.backgroundColor= "#e6e4d9";
		kyu.style.backgroundColor= "#f2f0e5";
		inc.style.backgroundColor= "#e6e4d9";
		seo_loc.style.opacity = 0;
		seo_loc.style.zIndex = 1;
		inc_loc.style.opacity = 0;
		inc_loc.style.zIndex = 1;
		kyu_loc.style.opacity = 1;
		kyu_loc.style.zIndex = 2;
	}
	function 인천(){
		seo.style.background= "none";
		kyu.style.background="none";
		inc.style.background="url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/theaterarealist_item_selected.png) no-repeat right";
		seo.style.backgroundColor= "#e6e4d9";
		kyu.style.backgroundColor= "#e6e4d9";
		inc.style.backgroundColor= "#f2f0e5";
		seo_loc.style.opacity = 0;
		seo_loc.style.zIndex = 1;
		inc_loc.style.opacity = 1;
		inc_loc.style.zIndex = 2;
		kyu_loc.style.opacity = 0;
		kyu_loc.style.zIndex = 1;
	}
	var mo;
	var lo;
	var da;
	var ti;
	
	function movie_param(f){
		mo = f;
		bottom_movie_.style.background="none";
		
		
		if(f==1){
			bottom_movie_img.style.background="url(http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82120/82120_185.JPG)";
			bottom_movie_img.style.top="-20px";
			bottom_movie_img.style.width= "74px";
			bottom_movie_img.style.height= "104px";
			bottom_movie_img.style.backgroundSize= "cover";
			document.getElementById("bottom_movie_span").innerHTML = "탑건-매버릭";
			movie1.style.backgroundColor ="black";
			movie_1.style.backgroundColor ="black";
			movie_text1.style.color ="white";
			movie_text_1.style.color ="white";
			movie2.style.backgroundColor ="transparent";
			movie_2.style.backgroundColor ="transparent";
			movie_text2.style.color ="black";
			movie_text_2.style.color ="black";
			movie3.style.backgroundColor ="transparent";
			movie_3.style.backgroundColor ="transparent";
			movie_text3.style.color ="black";
			movie_text_3.style.color ="black";
		}
		else if(f==2){
			bottom_movie_img.style.background="url(http://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85999/85999_185.JPG)";
			bottom_movie_img.style.top="-20px";
			bottom_movie_img.style.width= "74px";
			bottom_movie_img.style.height= "104px";
			bottom_movie_img.style.backgroundSize= "cover";
			document.getElementById("bottom_movie_span").innerHTML = "토르-러브앤썬더";
			movie2.style.backgroundColor ="black";
			movie_2.style.backgroundColor ="black";
			movie_text2.style.color ="white";
			movie_text_2.style.color ="white";
			movie1.style.backgroundColor ="transparent";
			movie_1.style.backgroundColor ="transparent";
			movie_text1.style.color ="black";
			movie_text_1.style.color ="black";
			movie3.style.backgroundColor ="transparent";
			movie_3.style.backgroundColor ="transparent";
			movie_text3.style.color ="black";
			movie_text_3.style.color ="black";
		}else if(f==3){
			bottom_movie_img.style.background="url(http://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85813/85813_185.JPG)";
			bottom_movie_img.style.top="-20px";
			bottom_movie_img.style.width= "74px";
			bottom_movie_img.style.height= "104px";
			bottom_movie_img.style.backgroundSize= "cover";
			document.getElementById("bottom_movie_span").innerHTML = "범죄도시2";
			movie3.style.backgroundColor ="black";
			movie_3.style.backgroundColor ="black";
			movie_text3.style.color ="white";
			movie_text_3.style.color ="white";
			movie2.style.backgroundColor ="transparent";
			movie_2.style.backgroundColor ="transparent";
			movie_text2.style.color ="black";
			movie_text_2.style.color ="black";
			movie1.style.backgroundColor ="transparent";
			movie_1.style.backgroundColor ="transparent";
			movie_text1.style.color ="black";
			movie_text_1.style.color ="black";
		}else{
			alert("오류")
		}
		
		if(!(lo==null)){
			if(!(da==null)){
				
			
			document.getElementById("time_table").remove();
			time_table_back.style.opacity = 1;
			
			
			}
		
	}
	}
	function 지역(loc){
		lo = loc;
		bottom_theater_.style.background ="none";
		bottom_text1.style.color ="white";
		bottom_text2.style.color ="white";
		bottom_text3.style.color ="white";
		bottom_text4.style.color ="white";
		강남_.style.background= "#f2f0e5";
		강남_a.style.color ="black"; 
		구로_.style.background= "#f2f0e5";
		구로_a.style.color ="black"; 
		명동_.style.background= "#f2f0e5";
		명동_a.style.color ="black"; 
		구리_.style.background= "#f2f0e5";
		구리_a.style.color ="black"; 
		김포_.style.background= "#f2f0e5";
		김포_a.style.color ="black"; 
		동탄_.style.background= "#f2f0e5";
		동탄_a.style.color ="black"; 
		계양_.style.background= "#f2f0e5";
		계양_a.style.color ="black"; 
		부평_.style.background= "#f2f0e5";
		부평_a.style.color ="black"; 
		청라_.style.background= "#f2f0e5";
		청라_a.style.color ="black"; 
	 	if(loc=="강남_a"){
		document.getElementById("bottom_text1_").innerHTML = "강남";
		강남_.style.background ="black";
		강남_a.style.color ="white"; 
		}
	 	else if(loc=="구로_a"){
			document.getElementById("bottom_text1_").innerHTML = "구로";
			구로_.style.background ="black";
			구로_a.style.color ="white"; 
			}
	 	else if(loc=="명동_a"){
			document.getElementById("bottom_text1_").innerHTML = "명동";
			명동_.style.background ="black";
			명동_a.style.color ="white"; 
			}
	 	else if(loc=="구리_a"){
			document.getElementById("bottom_text1_").innerHTML = "구리";
			구리_.style.background ="black";
			구리_a.style.color ="white"; 
			}
	 	else if(loc=="김포_a"){
			document.getElementById("bottom_text1_").innerHTML = "김포";
			김포_.style.background ="black";
			김포_a.style.color ="white"; 
			}
	 	else if(loc=="동탄_a"){
			document.getElementById("bottom_text1_").innerHTML = "동탄";
			동탄_.style.background ="black";
			동탄_a.style.color ="white"; 
			}
	 	else if(loc=="계양_a"){
			document.getElementById("bottom_text1_").innerHTML = "계양";
			계양_.style.background ="black";
			계양_a.style.color ="white"; 
			}
	 	else if(loc=="부평_a"){
			document.getElementById("bottom_text1_").innerHTML = "부평";
			부평_.style.background ="black";
			부평_a.style.color ="white"; 
			}
	 	else if(loc=="청라_a"){
			document.getElementById("bottom_text1_").innerHTML = "청라";
			청라_.style.background ="black";
			청라_a.style.color ="white"; 
			}
	 	if(!(mo==null)){
			if(!(da==null)){
				
			document.getElementById("time_table").remove();
			time_table_back.style.opacity = 1;
			
			
			}
		
	}
	 
	}
	function 날짜(day){
		da = day;
		bottom_theater_.style.background ="none";
		bottom_text1.style.color ="white";
		bottom_text2.style.color ="white";
		bottom_text3.style.color ="white";
		bottom_text4.style.color ="white";
		금1.style.background ="#f2f0e5";
		금1_.style.color ="#333"; 
		금1__.style.color ="#333"; 
		토2.style.background ="#f2f0e5";
		토2_.style.color ="#31597e"; 
		토2__.style.color ="#31597e"; 
		일3.style.background ="#f2f0e5";
		일3_.style.color ="#ad2727"; 
		일3__.style.color ="#ad2727"; 
		월4.style.background ="#f2f0e5";
		월4_.style.color ="#333"; 
		월4__.style.color ="#333"; 
		화5.style.background ="#f2f0e5";
		화5_.style.color ="#333"; 
		화5__.style.color ="#333"; 
		수6.style.background ="#f2f0e5";
		수6_.style.color ="#333"; 
		수6__.style.color ="#333"; 
		목7.style.background ="#f2f0e5";
		목7_.style.color ="#333"; 
		목7__.style.color ="#333"; 
		금8.style.background ="#f2f0e5";
		금8_.style.color ="#333"; 
		금8__.style.color ="#333"; 
		토9.style.background ="#f2f0e5";
		토9_.style.color ="#31597e"; 
		토9__.style.color ="#31597e"; 
		일10.style.background ="#f2f0e5";
		일10_.style.color ="#ad2727"; 
		일10__.style.color ="#ad2727"; 
		
		if(day=="금1"){
			document.getElementById("bottom_text2_").innerHTML = "2022.7.1(금)";
			금1.style.background ="black";
			금1_.style.color ="white"; 
			금1__.style.color ="white"; 
			}else if(day=="토2"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.2(토)";
				토2.style.background ="black";
				토2_.style.color ="white"; 
				토2__.style.color ="white"; 
				}
			else if(day=="일3"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.3(일)";
				일3.style.background ="black";
				일3_.style.color ="white"; 
				일3__.style.color ="white"; 
				}
			else if(day=="월4"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.4(월)";
				월4.style.background ="black";
				월4_.style.color ="white"; 
				월4__.style.color ="white"; 
				}
			else if(day=="화5"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.5(화)";
				화5.style.background ="black";
				화5_.style.color ="white"; 
				화5__.style.color ="white"; 
				}
			else if(day=="수6"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.6(수)";
				수6.style.background ="black";
				수6_.style.color ="white"; 
				수6__.style.color ="white"; 
				}
			else if(day=="목7"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.7(목)";
				목7.style.background ="black";
				목7_.style.color ="white"; 
				목7__.style.color ="white"; 
				}
			else if(day=="금8"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.8(금)";
				금8.style.background ="black";
				금8_.style.color ="white"; 
				금8__.style.color ="white"; 
				}
			else if(day=="토9"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.9(토)";
				토9.style.background ="black";
				토9_.style.color ="white"; 
				토9__.style.color ="white"; 
				}
			else if(day=="일10"){
				document.getElementById("bottom_text2_").innerHTML = "2022.7.10(일)";
				일10.style.background ="black";
				일10_.style.color ="white"; 
				일10__.style.color ="white"; 
				}
		if(!(lo==null)){
			if(!(mo==null)){
				
				document.getElementById("time_table").remove();
			time_table_back.style.opacity = 1;
			
			
			}
		
	}
	}
	var count = 0;
	var adu_count_=0;
	var you_count_=0;
	var sen_count_=0;
	var price_adu = 0;
	var price_you = 0;
	var price_sen = 0;
	function again(){
		 $('#seat_list').load(location.href+' #seat_list');
		 $('#people_list').load(location.href+' #people_list');
		 document.getElementById("bottom_payment_text_").innerHTML = "";
		 document.getElementById("bottom_seat_text_").innerHTML = "";
		 document.getElementById("bottom_text4_ad").innerHTML = "";
		 document.getElementById("bottom_text4_yo").innerHTML = "";
		 document.getElementById("bottom_text4_se").innerHTML = "";
		 adu_count_=0;
		 you_count_=0;
		 sen_count_=0;
		 count = 0;
		price_adu = 0;
		price_you = 0;
		price_sen = 0;
	}
	
	</script>
<script>
	function 시간(time){
	ti = time;
	일관10_span.style.color="black";
	일관10_span.style.background="#f2f0e5";
	일관12_span.style.color="black";
	일관12_span.style.background="#f2f0e5";
	일관15_span.style.color="black";
	일관15_span.style.background="#f2f0e5";
	일관17_span.style.color="black";
	일관17_span.style.background="#f2f0e5";
	일관20_span.style.color="black";
	일관20_span.style.background="#f2f0e5";
	일관22_span.style.color="black";
	일관22_span.style.background="#f2f0e5";
	이관10_span.style.color="black";
	이관10_span.style.background="#f2f0e5";
	이관12_span.style.color="black";
	이관12_span.style.background="#f2f0e5";
	이관15_span.style.color="black";
	이관15_span.style.background="#f2f0e5";
	이관17_span.style.color="black";
	이관17_span.style.background="#f2f0e5";
	이관20_span.style.color="black";
	이관20_span.style.background="#f2f0e5";
	if(time=="일관10"){
		document.getElementById("bottom_text3_").innerHTML = "1관";
		일관10_span.style.color="white";
		일관10_span.style.background="black";
	}
	else if(time=="일관12"){
		document.getElementById("bottom_text3_").innerHTML = "1관";
		일관12_span.style.color="white";
		일관12_span.style.background="black";
	}
	else if(time=="일관15"){
		document.getElementById("bottom_text3_").innerHTML = "1관";
		일관15_span.style.color="white";
		일관15_span.style.background="black";
	}
	else if(time=="일관17"){
		document.getElementById("bottom_text3_").innerHTML = "1관";
		일관17_span.style.color="white";
		일관17_span.style.background="black";
	}
	else if(time=="일관20"){
		document.getElementById("bottom_text3_").innerHTML = "1관";
		일관20_span.style.color="white";
		일관20_span.style.background="black";
	}
	else if(time=="일관22"){
		document.getElementById("bottom_text3_").innerHTML = "1관";
		일관22_span.style.color="white";
		일관22_span.style.background="black";
	}
	else if(time=="이관10"){
		document.getElementById("bottom_text3_").innerHTML = "2관";
		이관10_span.style.color="white";
		이관10_span.style.background="black";
	}
	else if(time=="이관12"){
		document.getElementById("bottom_text3_").innerHTML = "2관";
		이관12_span.style.color="white";
		이관12_span.style.background="black";
	}
	else if(time=="이관15"){
		document.getElementById("bottom_text3_").innerHTML = "2관";
		이관15_span.style.color="white";
		이관15_span.style.background="black";
	}
	else if(time=="이관17"){
		document.getElementById("bottom_text3_").innerHTML = "2관";
		이관17_span.style.color="white";
		이관17_span.style.background="black";
	}
	else if(time=="이관20"){
		document.getElementById("bottom_text3_").innerHTML = "2관";
		이관20_span.style.color="white";
		이관20_span.style.background="black";
	}
	seat_div.style.backgroundPosition = "-150px -220px";
	
}
	function seat_btn(){
		if(mo==null){
			return alert("영화를 선택해주세요")
		}
		else if(lo==null){
				return alert("극장을 선택해주세요")
			}
		else	if(da==null){
					return alert("날짜을 선택해주세요")
				}
		else	if(ti==null){
						return alert("시간을 선택해주세요")
						}
					
			/* if((document.getElementById("login").innerText)=="로그인"){
				return alert("로그인해주세요")
			} */
			
			theater_minimap.style.opacity= 1;
			personscreen.style.opacity= 1;
			theater_minimap.style.zIndex= 3;
			personscreen.style.zIndex= 3;
			if(lo=="구로_a"){
			document.getElementById("site").innerHTML = "CGV구로";
			}else if(lo=="명동_a"){
			document.getElementById("site").innerHTML = "CGV명동";
			}else if(lo=="강남_a"){
			document.getElementById("site").innerHTML = "CGV강남";
			}else if(lo=="구리_a"){
			document.getElementById("site").innerHTML = "CGV구리";
			}else if(lo=="동탄_a"){
			document.getElementById("site").innerHTML = "CGV동탄";
			}else if(lo=="김포_a"){
			document.getElementById("site").innerHTML = "CGV김포";
			}else if(lo=="계양_a"){
			document.getElementById("site").innerHTML = "CGV계양";
			}else if(lo=="부평_a"){
			document.getElementById("site").innerHTML = "CGV부평";
			}else if(lo=="청라_a"){
			document.getElementById("site").innerHTML = "CGV청라";
			}
			
			
			if(ti=="일관10"||"일관12"||"일관15"||"일관17"||"일관20"||"일관22"){				
			document.getElementById("screen").innerHTML = "1관";
			}else if(ti="이관10"||"이관12"||"이관15"||"이관17"||"이관20"){
				document.getElementById("screen").innerHTML = "2관";
			}
			  
			
			
			
			
			document.getElementById("seatNum").innerHTML = "남은좌석 /20";
			
			
			
			
			
			if(da=="금1"){
				document.getElementById("screen_day").innerHTML = "2022.7.1(금)";
			}else if(da=="토2"){
				document.getElementById("screen_day").innerHTML = "2022.7.2(토)";
			}else if(da=="일3"){
				document.getElementById("screen_day").innerHTML = "2022.7.3(일)";
			}else if(da=="월4"){
				document.getElementById("screen_day").innerHTML = "2022.7.4(월)";
			}else if(da=="화5"){
				document.getElementById("screen_day").innerHTML = "2022.7.5(화)";
			}
			else if(da=="수6"){
				document.getElementById("screen_day").innerHTML = "2022.7.6(수)";
			}else if(da=="목7"){
				document.getElementById("screen_day").innerHTML = "2022.7.7(목)";
			}else if(da=="금8"){
				document.getElementById("screen_day").innerHTML = "2022.7.8(금)";
			}else if(da=="토9"){
				document.getElementById("screen_day").innerHTML = "2022.7.9(토)";
			}else if(da=="일10"){
				document.getElementById("screen_day").innerHTML = "2022.7.10(일)";
			}
			if(ti=="일관10"){
				document.getElementById("screen_time").innerHTML = "10:00";
			}else if(ti=="일관12"){
				document.getElementById("screen_time").innerHTML = "12:00";
			}else if(ti=="일관15"){
				document.getElementById("screen_time").innerHTML = "15:00";
			}else if(ti=="일관17"){
				document.getElementById("screen_time").innerHTML = "17:00";
			}else if(ti=="일관20"){
				document.getElementById("screen_time").innerHTML = "20:00";
			}else if(ti=="일관22"){
				document.getElementById("screen_time").innerHTML = "22:00";
			}else if(ti=="이관12"){
				document.getElementById("screen_time").innerHTML = "12:00";
			}else if(ti=="이관15"){
				document.getElementById("screen_time").innerHTML = "15:00";
			}else if(ti=="이관17"){
				document.getElementById("screen_time").innerHTML = "17:00";
			}else if(ti=="이관20"){
				document.getElementById("screen_time").innerHTML = "20:00";
			}else if(ti=="이관10"){
				document.getElementById("screen_time").innerHTML = "10:00";
			}
			document.getElementsByClassName("booking_head")[0].style.zIndex=3;
			booking_middle1.style.opacity= 0;
			booking_middle3.style.opacity= 0;
			booking_middle2.style.opacity= 0;
			booking_middle4.style.opacity= 0;
			bottom_black.style.top= "-395px";
			bottom_banner.style.top= "-395px";
			seat_div2.style.zIndex = 3;
			seat_div2.style.backgroundPosition = "0 -330px";
			
			no20.style.pointerEvents= "none"; 
			
	}
	
	
	
	</script>
	<script>
	var peoplecount = 0;
	
	
		var adu;
		var adu_count=0;
		
		function 일반(adult){
			adu = adult;
			adu_count = 0;
			adu_count_= 0;
			if(adu_count_+you_count_+sen_count_ <= count && !(adu_count_+you_count_+sen_count_ == 0)){
				return alert("선택한 좌석이 예매 인원 보다 많습니다.");
			}
			if(adult=="일반1"||adult=="일반2"||adult=="일반3"){
				bottom_text4_ad.style.position="relative";
				if(you=="청소년0"){
				bottom_text4_yo.style.position="absolute";
				}
	
			} if(adu=="일반0"){
				bottom_text4_ad.style.position="absolute";
				if(you=="청소년0"){
				bottom_text4_yo.style.position="absolute";
				}
			}
			 
			if(adult=="일반0"){
				document.getElementsByClassName("selected_person")[0].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person")[0].style.color ="white";
				document.getElementsByClassName("selected_person_")[0].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[0].style.color ="black";
				document.getElementsByClassName("selected_person_")[1].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[1].style.color ="black";
				document.getElementsByClassName("selected_person_")[2].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[2].style.color ="black";
				document.getElementById("bottom_text4_ad").innerHTML = null;
			
			} else if(adult=="일반1"){
				document.getElementsByClassName("selected_person")[0].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[0].style.color ="black";
				document.getElementsByClassName("selected_person_")[0].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[0].style.color ="white";
				document.getElementsByClassName("selected_person_")[1].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[1].style.color ="black";
				document.getElementsByClassName("selected_person_")[2].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[2].style.color ="black";
				document.getElementById("bottom_text4_ad").innerHTML = "일반 1명";
				adu_count += 1;
				adu_count_ += 1;
			}else if(adult=="일반2"){
				document.getElementsByClassName("selected_person")[0].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[0].style.color ="black";
				document.getElementsByClassName("selected_person_")[0].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[0].style.color ="black";
				document.getElementsByClassName("selected_person_")[1].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[1].style.color ="white";
				document.getElementsByClassName("selected_person_")[2].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[2].style.color ="black";
				document.getElementById("bottom_text4_ad").innerHTML = "일반 2명";
				adu_count += 2;
				adu_count_ += 2;
			}else if(adult=="일반3"){
				document.getElementsByClassName("selected_person")[0].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[0].style.color ="black";
				document.getElementsByClassName("selected_person_")[0].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[0].style.color ="black";
				document.getElementsByClassName("selected_person_")[1].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[1].style.color ="black";
				document.getElementsByClassName("selected_person_")[2].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[2].style.color ="white";
				document.getElementById("bottom_text4_ad").innerHTML = "일반 3명";
				adu_count += 3;
				adu_count_ += 3;
			}
			
			
		}
		var you;
		var you_count=0;
		
		function 청소년(youth){
			you = youth;
			you_count = 0;
			you_count_ = 0;
			if(adu_count_+you_count_+sen_count_ <= count && !(adu_count_+you_count_+sen_count_ == 0)){
				return alert("선택한 좌석이 예매 인원 보다 많습니다.");
			} 
			if(youth=="청소년1"||youth=="청소년2"||youth=="청소년3"){
				bottom_text4_yo.style.position="relative";
				
			} 
			if(adu=="일반0"){
				bottom_text4_ad.style.position="absolute";
				if(you=="청소년0"){
				bottom_text4_yo.style.position="absolute";
				}
			}
			
			if(youth=="청소년0"){
				document.getElementsByClassName("selected_person")[1].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person")[1].style.color ="white";
				document.getElementsByClassName("selected_person_")[3].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[3].style.color ="black";
				document.getElementsByClassName("selected_person_")[4].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[4].style.color ="black";
				document.getElementsByClassName("selected_person_")[5].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[5].style.color ="black";
				document.getElementById("bottom_text4_yo").innerHTML = null;
				if(adu=="일반1"||adu=="일반2"||adu=="일반3"){
					bottom_text4_yo.style.position="absolute";
					
				}
			} else if(youth=="청소년1"){
				document.getElementsByClassName("selected_person")[1].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[1].style.color ="black";
				document.getElementsByClassName("selected_person_")[3].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[3].style.color ="white";
				document.getElementsByClassName("selected_person_")[4].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[4].style.color ="black";
				document.getElementsByClassName("selected_person_")[5].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[5].style.color ="black";
				document.getElementById("bottom_text4_yo").innerHTML = "청소년 1명";
				you_count +=1;
				you_count_ +=1;
			}else if(youth=="청소년2"){
				document.getElementsByClassName("selected_person")[1].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[1].style.color ="black";
				document.getElementsByClassName("selected_person_")[3].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[3].style.color ="black";
				document.getElementsByClassName("selected_person_")[4].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[4].style.color ="white";
				document.getElementsByClassName("selected_person_")[5].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[5].style.color ="black";
				document.getElementById("bottom_text4_yo").innerHTML = "청소년 2명";
				you_count +=2;
				you_count_ +=2;
			}else if(youth=="청소년3"){
				document.getElementsByClassName("selected_person")[1].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[1].style.color ="black";
				document.getElementsByClassName("selected_person_")[3].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[3].style.color ="black";
				document.getElementsByClassName("selected_person_")[4].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[4].style.color ="black";
				document.getElementsByClassName("selected_person_")[5].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[5].style.color ="white";
				document.getElementById("bottom_text4_yo").innerHTML = "청소년 3명";
				you_count +=3;
				you_count_ +=3;
			}
			
			
		}
		var sen;
		var sen_count=0;
		
		function 경로(senior){
			sen =senior;
			sen_count = 0;
			sen_count_ = 0;
			if(adu_count_+you_count_+sen_count_ <= count && !(adu_count_+you_count_+sen_count_ == 0)){
				return alert("선택한 좌석이 예매 인원 보다 많습니다.");
			} 
			if(senior=="경로1"||senior=="경로2"||senior=="경로3"){
				bottom_text4_se.style.position="relative";
	
			} if(adu=="일반0"){
				bottom_text4_ad.style.position="absolute";
				if(you=="청소년0"){
				bottom_text4_yo.style.position="absolute";
				}
			}
			
			
			if(senior=="경로0"){
				document.getElementsByClassName("selected_person")[2].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person")[2].style.color ="white";
				document.getElementsByClassName("selected_person_")[6].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[6].style.color ="black";
				document.getElementsByClassName("selected_person_")[7].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[7].style.color ="black";
				document.getElementsByClassName("selected_person_")[8].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[8].style.color ="black";
				document.getElementById("bottom_text4_se").innerHTML = null;
			} else if(senior=="경로1"){
				document.getElementsByClassName("selected_person")[2].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[2].style.color ="black";
				document.getElementsByClassName("selected_person_")[6].style.backgroundColor ="#333";
			document.getElementsByClassName("selected_person_")[6].style.color ="white";
				document.getElementsByClassName("selected_person_")[7].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[7].style.color ="black";
				document.getElementsByClassName("selected_person_")[8].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[8].style.color ="black";
				document.getElementById("bottom_text4_se").innerHTML = "경로 1명";
				sen_count +=1;
				sen_count_ +=1;
			}else if(senior=="경로2"){
				document.getElementsByClassName("selected_person")[2].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[2].style.color ="black";
				document.getElementsByClassName("selected_person_")[6].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[6].style.color ="black";
				document.getElementsByClassName("selected_person_")[7].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[7].style.color ="white";
				document.getElementsByClassName("selected_person_")[8].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[8].style.color ="black";
				document.getElementById("bottom_text4_se").innerHTML = "경로 2명";
				sen_count +=2;
				sen_count_ +=2;
			}else if(senior=="경로3"){
				document.getElementsByClassName("selected_person")[2].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person")[2].style.color ="black";
				document.getElementsByClassName("selected_person_")[6].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[6].style.color ="black";
				document.getElementsByClassName("selected_person_")[7].style.backgroundColor ="#f2f0e5";
				document.getElementsByClassName("selected_person_")[7].style.color ="black";
				document.getElementsByClassName("selected_person_")[8].style.backgroundColor ="#333";
				document.getElementsByClassName("selected_person_")[8].style.color ="white";
				document.getElementById("bottom_text4_se").innerHTML = "경로 3명";	
				sen_count +=3;
				sen_count_ +=3;
			}
			if(adu_count+you_count+sen_count==1){
				seat_div2.style.backgroundPosition ="0 -330px";
			}
			
		}
	
	
		
	function no(num){
		bottom_seat_.style.background ="none";
		bottom_seat_text.style.color ="white";
		bottom_seat_text_.style.color ="white";
		bottom_payment_.style.background ="none";
		bottom_payment_text.style.color ="white";
		bottom_payment_text_.style.color ="white";
		peoplecount = 0;
		count = 0;
		
		
	var i;
	var j;
	var adult = [];
	var color = [];
	
	
	for(i=0; i<=8; i++){
	adult[i] = document.getElementsByClassName("selected_person_")[i]
	
	}
	
	if(adult[0].style.backgroundColor=="rgb(51, 51, 51)"){
	peoplecount += 1;
		}
	else if(adult[1].style.backgroundColor=="rgb(51, 51, 51)"){
	peoplecount += 2;
		}
	else if(adult[2].style.backgroundColor=="rgb(51, 51, 51)"){
	peoplecount += 3;
		} if(adult[3].style.backgroundColor=="rgb(51, 51, 51)"){
	peoplecount += 1;
		}
	else if(adult[4].style.backgroundColor=="rgb(51, 51, 51)"){
		peoplecount += 2;
		}
	else if(adult[5].style.backgroundColor=="rgb(51, 51, 51)"){
		peoplecount += 3;
		} if(adult[6].style.backgroundColor=="rgb(51, 51, 51)"){
			peoplecount += 1;
		}
	else if(adult[7].style.backgroundColor=="rgb(51, 51, 51)"){
	peoplecount += 2;
		}
	else if(adult[8].style.backgroundColor=="rgb(51, 51, 51)"){
		peoplecount += 3;
		}
		
		
		if(peoplecount == 0){
			return alert("인원을 선택해주세요")
		}
		for(j=0; j<=19; j++){
			color[j] = document.getElementsByClassName("no")[j]
			
			}
		if(color[0].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[1].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[2].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[3].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[4].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[5].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[6].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[7].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[8].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[9].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[10].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[11].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[12].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[13].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[14].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[15].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[16].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[17].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[18].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} if(color[19].style.backgroundColor=="rgb(173, 23, 18)"){
	 		count++;
	 	} 
	 
	 	if(adu_count+you_count+sen_count==1){
			bottom_black.style.zIndex= 5;
			seat_div2.style.backgroundPosition ="-150px -330px";
			seat_div2.style.zIndex = 3;
			
		}
	 	 if(count >= peoplecount){
				return alert("이미좌석을 모두 선택하셨습니다.");
			} 
	 	 
	 	
		
	if(num=="no1"){
			document.getElementsByClassName("no")[0].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[0].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" a1"
			no1.style.pointerEvents= "none"; 
	}else if(num=="no2"){
			document.getElementsByClassName("no")[1].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[1].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" a2"
			no2.style.pointerEvents= "none"; 
	}else if(num=="no3"){
			document.getElementsByClassName("no")[2].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[2].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" a3"
			no3.style.pointerEvents= "none"; 
	}else if(num=="no4"){
			document.getElementsByClassName("no")[3].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[3].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" a4"
			no4.style.pointerEvents= "none"; 
	}else if(num=="no5"){
			document.getElementsByClassName("no")[4].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[4].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" a5"
			no5.style.pointerEvents= "none"; 
	}else if(num=="no6"){
			document.getElementsByClassName("no")[5].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[5].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" b1"
			no6.style.pointerEvents= "none"; 
	}else if(num=="no7"){
			document.getElementsByClassName("no")[6].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[6].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" b2"
			no7.style.pointerEvents= "none"; 
	}else if(num=="no8"){
			document.getElementsByClassName("no")[7].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[7].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" b3"
			no8.style.pointerEvents= "none"; 
	}else if(num=="no9"){
			document.getElementsByClassName("no")[8].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[8].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" b4"
			no9.style.pointerEvents= "none"; 
	}else if(num=="no10"){
			document.getElementsByClassName("no")[9].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[9].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" b5"
			no10.style.pointerEvents= "none"; 
	}else if(num=="no11"){
			document.getElementsByClassName("no")[10].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[10].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" c1"
			no11.style.pointerEvents= "none"; 
	}else if(num=="no12"){
			document.getElementsByClassName("no")[11].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[11].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" c2"
			no12.style.pointerEvents= "none"; 
	}else if(num=="no13"){
			document.getElementsByClassName("no")[12].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[12].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" c3"
			no13.style.pointerEvents= "none"; 
	}else if(num=="no14"){
			document.getElementsByClassName("no")[13].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[13].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" c4"
			no14.style.pointerEvents= "none"; 
	}else if(num=="no15"){
			document.getElementsByClassName("no")[14].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[14].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" c5"
			no15.style.pointerEvents= "none"; 
	}else if(num=="no16"){
			document.getElementsByClassName("no")[15].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[15].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" d1"
			no16.style.pointerEvents= "none"; 
	}else if(num=="no17"){
			document.getElementsByClassName("no")[16].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[16].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" d2"
			no17.style.pointerEvents= "none"; 
	}else if(num=="no18"){
			document.getElementsByClassName("no")[17].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[17].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" d3"
			no18.style.pointerEvents= "none"; 
	}else if(num=="no19"){
			document.getElementsByClassName("no")[18].style.backgroundColor= "#ad1712";
		document.getElementsByClassName("no")[18].style.backgroundPosition= "0 0";
		document.getElementById("bottom_seat_text_").innerHTML +=" d4"
			no19.style.pointerEvents= "none"; 
	}
	
	if(adu_count>0){
		adu_count -= 1;
		 price_adu += 30;
		return document.getElementById("bottom_payment_text_").innerHTML = price_adu+price_you+price_sen+"원";
	}if(you_count>0){
				you_count -= 1;
				 price_you += 20;
				return document.getElementById("bottom_payment_text_").innerHTML = price_adu+price_you+price_sen+"원";
	} if(sen_count>0){
						sen_count -= 1;
					 price_sen += 10;
						return document.getElementById("bottom_payment_text_").innerHTML = price_adu+price_you+price_sen+"원";
					}
	
	
	
	}
	var openwin;
	function seat_btn2(){
		openwin = window.open('payment.do','결제하기','width=1010,height=450, left=500, top=300','resizable=no');
	}
	
	
	</script>

</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="head"></div>
	<div class="middle">
		<div class="middle_top">
			<span class="top_button" onmouseover="this.style.cursor='pointer'">
				<a class="예매다시하기" onclick="reload()"></a> <a class="제휴할인혜택"
				href="http://www.cgv.co.kr/discount/discountlist.aspx?#1"
				target="_blank"></a> <a class="예매가이드"
				onclick="booking_guide(); step_first()"></a>
			</span>
		</div>
		<div id="backscreen" class="back"
			style="width: 757px; height: 810px; position: relative; top: -100px; margin: 0 auto; z-index: 1; background-color: #f2f0e5; padding: 50px 39px 0; border: 5px solid #333; opacity: 0">
			<div id="guide_head" style="width: 669px; height: 53px;">
				<h4
					style="width: 459x; height: 33px; margin: 0 0 9px 210px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/hd01.gif) no-repeat;"></h4>
				<p
					style="height: 11px; margin: 0 0 16px 213px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/hd02.gif) no-repeat;">
			</div>
			<a
				style="background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/close.gif) no-repeat; position: absolute; top: 17px; right: 16px; width: 18px; height: 18px;"
				onmouseover="this.style.cursor='pointer'" onclick="닫기()"> </a>
			<div style="width: 670px; height: 591px; margin-top: 16px;">
				<div style="width: 670px; height: 66px; margin-bottom: 20px">
					<div id="step1" class="guide_tab"
						style="border-bottom: 0; border-right: 0"
						onmouseover="this.style.cursor='pointer'">
						<span id="step1_span" class="step"
							style="background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab01_on.png) no-repeat;"
							onclick="step_first()"></span>
					</div>
					<div id="step2" class="guide_tab"
						style="border-right: 2px solid rgba(0, 0, 0, 0.3); border-top: 2px solid rgba(0, 0, 0, 0.3);"
						onmouseover="this.style.cursor='pointer'">
						<span id="step2_span" class="step"
							style="background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab02.png) no-repeat;"
							onclick="step_second()"></span>
					</div>
					<div id="step3" class="guide_tab"
						style="border-left: 0; border-right: 2px solid rgba(0, 0, 0, 0.3); border-top: 2px solid rgba(0, 0, 0, 0.3);"
						onmouseover="this.style.cursor='pointer'">
						<span id="step3_span" class="step"
							style="background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/tab03.png) no-repeat;"
							onclick="step_third()"></span>
					</div>
				</div>

				<div id="step1_image1"
					style="width: 669px; height: 505px; position: relative; z-index: 3;">
					<div style="width: 669px; height: 25px;">
						<p
							style="width: 350px; height: 19px; margin: 0; float: left; margin-rignt: 0; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/txt01.gif) no-repeat;"></p>
						<span
							style="font: normal 12px dotum; float: right; padding-top: 2px">를
							오버시 해당 설명을 볼 수 있습니다.</span>
						<p
							style="width: 21px; height: 19px; margin: 0; float: right; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape01.png) no-repeat;"></p>
					</div>
					<div style="width: 663px; height: auto;">
						<div
							style="width: 663px; height: 480px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/step01_bg.gif) no-repeat;">


							<a id="물음표5" class="step1_물음표5"
								style="z-index: 2; width: 30px; height: 28px; top: 55px; left: 413px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step1_opa5()" onmouseout="step1_opa5_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step1_fifth" class="말풍선_top"
									style="top: 48px; left: 366px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step1_fifth2" class="말풍선_middle"
									style="top: 48px; left: 366px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">조조/심야
									영화 시간에 대해 쉽게 확인할 수 있어요!</span> <span id="step1_fifth3"
									class="말풍선_bottom"
									style="top: 48px; left: 366px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

							<a class="step1_물음표4"
								style="width: 30px; height: 28px; top: 46px; left: 189px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step1_opa4()" onmouseout="step1_opa4_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step1_fourth" class="말풍선_top"
									style="top: 39px; left: 142px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step1_fourth2" class="말풍선_middle"
									style="top: 39px; left: 142px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">자주
									가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span> <span id="step1_fourth3"
									class="말풍선_bottom"
									style="top: 39px; left: 142px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

							<a id="물음표3" class="step1_물음표3"
								style="z-index: 2; width: 30px; height: 28px; display: block; position: relative; top: 0px; left: 49px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step1_opa3()" onmouseout="step1_opa3_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step1_third" class="말풍선_top"
									style="top: -7px; left: 2px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step1_third2" class="말풍선_middle"
									style="top: -7px; left: 2px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">무비꼴라쥬,
									특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span> <span id="step1_third3"
									class="말풍선_bottom"
									style="top: -7px; left: 2px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

							<a class="step1_물음표2"
								style="width: 30px; height: 28px; top: -86px; left: 326px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step1_opa2()" onmouseout="step1_opa2_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step1_second" class="말풍선_top"
									style="top: -93px; left: 279px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step1_second2" class="말풍선_middle"
									style="top: -93px; left: 279px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">영문
									버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span> <span
									id="step1_second3" class="말풍선_bottom"
									style="top: -93px; left: 279px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>



							<a class="step1_물음표"
								style="width: 30px; height: 28px; top: -108px; left: 20px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step1_opa()" onmouseout="step1_opa_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step1_first" class="말풍선_top"
									style="top: -108px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step1_first2" class="말풍선_middle"
									style="top: -108px; left: -27px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">전체
									화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span> <span
									id="step1_first3" class="말풍선_bottom"
									style="top: -108px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

						</div>
						<div>
							<div
								style="z-index: 5; width: 589px; height: 20px; padding: 30px 40px;">
								<a style="z-index: 5;" class="닫기버튼"
									onmouseover="this.style.cursor='pointer'" onclick="닫기()"> <span
									class="닫기">닫기</span>
								</a>
							</div>

						</div>

					</div>
				</div>
				<div id="step1_image2"
					style="width: 669px; height: 505px; top: 205px; position: absolute; z-index: 2">
					<div style="width: 669px; height: 25px;">
						<p
							style="width: 350px; height: 19px; margin: 0; float: left; margin-rignt: 0; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/txt02.gif) no-repeat;"></p>
						<span
							style="font: normal 12px dotum; float: right; padding-top: 2px">를
							오버시 해당 설명을 볼 수 있습니다.</span>
						<p
							style="width: 21px; height: 19px; margin: 0; float: right; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape01.png) no-repeat;"></p>
					</div>
					<div style="width: 663px; height: auto;">
						<div
							style="width: 663px; height: 480px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/step02_bg.gif) no-repeat;">

							<a class="step2_물음표2"
								style="width: 30px; height: 28px; top: 48px; left: 396px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step2_opa2()" onmouseout="step2_opa2_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step2_second" class="말풍선_top"
									style="top: 41px; left: 349px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step2_second2" class="말풍선_middle"
									style="top: 41px; left: 349px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">선택한
									상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span> <span id="step2_second3"
									class="말풍선_bottom"
									style="top: 41px; left: 349px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>



							<a class="step2_물음표"
								style="width: 30px; height: 28px; top: 113px; left: 551px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step2_opa()" onmouseout="step2_opa_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step2_first" class="말풍선_top"
									style="top: 106px; left: 504px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step2_first2" class="말풍선_middle"
									style="top: 106px; left: 504px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">좌석도
									크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span> <span
									id="step2_first3" class="말풍선_bottom"
									style="top: 106px; left: 504px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>
						</div>
					</div>
					<div
						style="z-index: 5; width: 589px; height: 20px; padding: 30px 40px;">
						<a style="z-index: 5;" class="닫기버튼"
							onmouseover="this.style.cursor='pointer'" onclick="닫기()"> <span
							class="닫기">닫기</span>
						</a>
					</div>
				</div>

				<div id="step1_image3"
					style="width: 669px; height: 505px; top: 205px; position: absolute; z-index: 1">
					<div style="width: 669px; height: 25px;">
						<p
							style="width: 350px; height: 19px; margin: 0; float: left; margin-rignt: 0; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/txt03.gif) no-repeat;"></p>
						<span
							style="font: normal 12px dotum; float: right; padding-top: 2px">를
							오버시 해당 설명을 볼 수 있습니다.</span>
						<p
							style="width: 21px; height: 19px; margin: 0; float: right; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape01.png) no-repeat;"></p>
					</div>
					<div style="width: 663px; height: auto;">
						<div
							style="width: 663px; height: 836px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/step03_bg.gif) no-repeat;">


							<a class="step3_물음표5"
								style="width: 30px; height: 28px; top: 372px; left: 484px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step3_opa5()" onmouseout="step3_opa5_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step3_fifth" class="말풍선_top"
									style="top: 365px; left: 437px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step3_fifth2" class="말풍선_middle"
									style="top: 365px; left: 437px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">다양한
									CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span> <span id="step3_fifth3"
									class="말풍선_bottom"
									style="top: 365px; left: 437px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

							<a class="step3_물음표4"
								style="width: 30px; height: 28px; top: 260px; left: 20px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step3_opa4()" onmouseout="step3_opa4_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step3_fourth" class="말풍선_top"
									style="top: 253px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step3_fourth2" class="말풍선_middle"
									style="top: 253px; left: -27px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">다양한
									CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span> <span
									id="step3_fourth3" class="말풍선_bottom"
									style="top: 253px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

							<a id="스텝3_물음표3" class="step3_물음표3"
								style="z-index: 2; width: 30px; height: 28px; top: 12px; left: 20px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step3_opa3()" onmouseout="step3_opa3_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step3_third" class="말풍선_top"
									style="top: 5px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step3_third2" class="말풍선_middle"
									style="top: 5px; left: -27px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">주요
									할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가
									가능해졌어요!</span> <span id="step3_third3" class="말풍선_bottom"
									style="top: 5px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

							<a class="step3_물음표2"
								style="width: 30px; height: 28px; top: -49px; left: 500px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step3_opa2()" onmouseout="step3_opa2_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step3_second" class="말풍선_top"
									style="top: -56px; left: 453px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step3_second2" class="말풍선_middle"
									style="top: -56px; left: 453px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">내가
									적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span> <span id="step3_second3"
									class="말풍선_bottom"
									style="top: -56px; left: 453px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>

							<a class="step3_물음표"
								style="width: 30px; height: 28px; top: -95px; left: 20px; display: block; position: relative; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/shape02.png) no-repeat;"
								onmouseover="step3_opa()" onmouseout="step3_opa_()"></a>
							<div style="position: absolute; width: auto;">
								<span id="step3_first" class="말풍선_top"
									style="top: -102px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/top_bg.png) no-repeat;"></span>
								<span id="step3_first2" class="말풍선_middle"
									style="top: -102px; left: -27px; background: #fff; border-left: 2px solid #333; border-right: 2px solid #333; font: bold 12px 'Nanum Gothic'; color: #000; padding: 0 13px;">좌석도
									크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span> <span
									id="step3_first3" class="말풍선_bottom"
									style="top: -102px; left: -27px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/guide/bottom_bg.png) no-repeat;">
								</span>
							</div>






							<div
								style="width: 589px; height: 29px; padding: 30px 40px; position: absolute; top: 861px;">
								<a class="닫기버튼" onmouseover="this.style.cursor='pointer'"
									onclick="닫기()"> <span class="닫기">닫기</span>
								</a>
							</div>



						</div>
					</div>
				</div>




			</div>


		</div>
		<div id="main" class="middle_middle"
			style="position: relative; top: -900px; z-index: 2">
			<div class="banner1">
				<a
					href="http://www.cgv.co.kr/culture-event/popcorn-store/store-category.aspx?CategoryIdx=3"
					target="_blank"> <img
					src="https://adimg.cgv.co.kr/images/202111/cgvgift/1221_160x300.jpg"
					width="160" height="300" border="0"
					style="width: 160px; height: 300px; animation: fadein 1.5s; -webkit-animation: fadein 1.5s; animation-delay: 2s; opacity: 0; animation-fill-mode: forwards;">
				</a>
			</div>

			
			<div class="booking" style="width: 1008px; height: 695px;">
				<div class="booking_head" 
					style="background-color: #333; background-repeat: no-repeat; background-position: 50% -124px; width: 993px; margin-right: 10px; margin-left: 5px; height: 33px;">
					<a id="again"class="again" onclick="again();"
						style="display: block; position: absolute; height: 20px; line-height: 24px; top: 7px; right: 16px; padding-right: 20px; color: #e6e6e6; font-size: 12px; font-weight: bold; letter-spacing: -1px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step3/step_refresh_btn.png) no-repeat 100% 50%;">다시하기</a>
				</div>

				<div class="booking_head"
					style="background-position: 50% 8px;top:-33px; width: 284px; height: 33px; margin-left: 5px;"></div>
				<div class="booking_head"
					style="background-position: 50% -25px;top:-33px;  width: 265px; height: 33px"></div>
				<div class="booking_head"
					style="background-position: 50% -58px;top:-33px;  width: 91px; height: 33px"></div>
				<div class="booking_head"
					style="background-position: 50% -91px;top:-33px;  width: 346px; height: 33px; margin-right: 5px"></div>

				<div id="personscreen"class="personscreen">
						<div id="people_list"style="position: relative; float:left;margin-right:0;border-right: 1px solid #d4d3c9;width:500px; height:100%">
							<div style="   width:500px;height:22px;
						float: left;  margin-bottom: 8px;">
							<span class="text" style="    float: left; width: 55px;height: 22px;line-height: 22px;color: #666;letter-spacing: -0.1em;">일반</span>
							<ul style="float:left;list-style: none;">
								<li id="일반0"data-count="0" class="selected_person" style="background-color: #333;" onclick="일반(this.id)">0</li>
								<li id="일반1"data-count="1" class="selected_person_"style="background-color: #f2f0e5;"onclick="일반(this.id)">1</li>
								<li id="일반2"data-count="2" class="selected_person_"style="background-color: #f2f0e5;"onclick="일반(this.id)">2</li>
								<li id="일반3"data-count="3" class="selected_person_"style="background-color: #f2f0e5;"onclick="일반(this.id)">3</li>
								<li id="일반price" class="textprice" style="float:left;width:70px; height:20px">30원</li>
							</ul>
							
							
							
						</div><div style="   width:500px;height:22px;
						float: left;  margin-bottom: 8px;">
							
						<span class="text" style="    float: left; width: 55px;height: 22px;line-height: 22px;color: #666;letter-spacing: -0.1em;">청소년</span>
							<ul style="float:left;list-style: none;">
								<li id="청소년0"data-count="0" class="selected_person" style="background-color: #333;"onclick="청소년(this.id)">0</li>
								<li id="청소년1"data-count="1" class="selected_person_" style="background-color: #f2f0e5;"onclick="청소년(this.id)">1</li>
								<li id="청소년2"data-count="2" class="selected_person_" style="background-color: #f2f0e5;"onclick="청소년(this.id)">2</li>
								<li id="청소년3"data-count="3" class="selected_person_" style="background-color: #f2f0e5;"onclick="청소년(this.id)">3</li>
							<li id="청소년price" class="textprice" style="float:left;width:70px; height:20px">20원</li>
							</ul></div><div style="   width:500px;height:22px;
						float: left;  margin-bottom: 8px;">
							
							<span class="text" style="    float: left; width: 55px;height: 22px;line-height: 22px;color: #666;letter-spacing: -0.1em;">경로</span>
							<ul style="float:left;list-style: none;">
								<li id="경로0"data-count="0" class="selected_person" style="background-color: #333;"onclick="경로(this.id)" >0</li>
								<li id="경로1"data-count="1" class="selected_person_"style="background-color: #f2f0e5;"onclick="경로(this.id)">1</li>
								<li id="경로2"data-count="2" class="selected_person_"style="background-color: #f2f0e5;"onclick="경로(this.id)">2</li>
								<li id="경로3"data-count="3" class="selected_person_"style="background-color: #f2f0e5;"onclick="경로(this.id)">3</li>
								<li id="경로price" class="textprice" style="float:left;width:70px; height:20px">10원</li>
							</ul>
						</div>
						</div>
						<div
							style="position: relative; float: left; width: 400px; height: 100%; letter-spacing: -1px; margin-left:20px">
							<div id="info"
								style="position: relative; height: 100%; letter-spacing: -1px;">
								<p id="theater_info" style="height:35px">
								<span id="site"class="text"style="border-right: 1px solid #ccc;float:left;padding-right:10px"></span>
								<span id="screen"class="text"style="border-right: 1px solid #ccc;float:left;padding-right:10px;padding-left:10px"></span>
								<span id="seatNum"class="text"style="border-right: 1px solid #ccc;float:left;padding-right:10px;padding-left:10px"></span>
								</p>
								<p id="theater_info2" style="height:35px">
								<span id="screen_day"class="text2"style="border-right: 1px solid #ccc;float:left;padding-right:10px"></span>
								<span id="screen_time"class="text2"style="border-right: 1px solid #ccc;float:left;padding-right:10px;padding-left:10px"></span>
					
								</p>
							</div>
						</div>




					</div>
					<div id="theater_minimap" class="theater_minimap">
					<div
						style="margin-left: 20px; width: 826px; height: 200px; position: relative;">
						<div id="screen_"class="screen">
							<span
								style="width: 57px; height: 25px; display: inline-block; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_text.png) no-repeat;"></span>
						</div>
						<div class="seat_list" id="seat_list"
							style="width: 90px; height: 176px; position: relative; margin: 56px auto 40px auto;">
						<div style="width: 90px; height: 15px;">
						<div class="label">A</div>
						<div id="no1" class="no" onclick="no(this.id)">1</div>
						<div id="no2" class="no" onclick="no(this.id)">2</div>
						<div id="no3" class="no" onclick="no(this.id)">3</div>
						<div id="no4" class="no" onclick="no(this.id)">4</div>
						<div id="no5" class="no" onclick="no(this.id)">5</div></div>
						<div style="width: 90px; height: 15px;">
						<div class="label">b</div>
						<div id="no6" class="no" onclick="no(this.id)">1</div>
						<div id="no7" class="no" onclick="no(this.id)">2</div>
						<div id="no8" class="no" onclick="no(this.id)">3</div>
						<div id="no9" class="no" onclick="no(this.id)">4</div>
						<div id="no10" class="no"onclick="no(this.id)">5</div></div>
						<div style="width: 90px; height: 15px;">
						<div class="label">c</div>
						<div id="no11" class="no"onclick="no(this.id)">1</div>
						<div id="no12" class="no"onclick="no(this.id)">2</div>
						<div id="no13" class="no"onclick="no(this.id)">3</div>
						<div id="no14" class="no"onclick="no(this.id)">4</div>
						<div id="no15" class="no"onclick="no(this.id)">5</div></div>
							<div style="width: 90px; height: 15px;">
								<div class="label">d</div>
								<div id="no16" class="no"onclick="no(this.id)">1</div>
								<div id="no17" class="no"onclick="no(this.id)">2</div>
								<div id="no18" class="no"onclick="no(this.id)">3</div>
								<div id="no19" class="no"onclick="no(this.id)">4</div>
								<div id="no20" class="no"onclick="no(this.id)"
									style="background-color: #bbb; background-position: -25px 0; text-indent: -9999px; background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons_20220314.png);">5</div>
							</div>





						</div>








					</div>
						<div
							style="position: absolute; top: 20px; right: 15px; height: 100%; width: 125px;">
						<div class="seat-icon-desc" style="    margin-left: 5px;width:120px; height:61px;">
										<span class="icon_text" style="display: block;"><span class="icon_"></span>선택</span> <span class="icon_text" style="display: block;"><span
								class="icon_"
								style="background-color: #bbb; background-image: none;"></span>예매완료</span> <span class="icon_text" style="display: block;"><span
								class="icon_"
								style="background-position: -25px 0; background-color: #bbb;"></span>선택불가</span>

							<span class="icon distanced" style="display: none;"><span class="icon"></span>거리두기 좌석</span>
									</div>






					</div>
				


				</div>
			
				<div class="booking_middle" id="booking_middle1"
					style="position:relative;top:-389px;position: relative; width: 284px; height: 660px; margin-left: 5px">
					
					
					<div id="movie_select"
						style="position:absolute; float: left; position: relative; margin-left: 20px; margin-top: 9px; width: 254px; height: 100%;">

						<div
							style="float: left; width: 254px; margin-top: 3px; height: 100%; opacity: 1;">
							<div
								style="margin-top: 2px; float: left; width: 244px; position: relative; height: 32px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/sortmenu_border_bottom.png) repeat-x bottom;">
								<a id="filmrating_sort" class="sequence"
									style="background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/sortmenu_btn_on.png) no-repeat 50% 100%;"
									onclick="예매율순()">예매율순</a> <a id="asc_sort" class="sequence"
									style="background: none;" onclick="가나다순()">가나다순</a>
							</div>
							<div id="asc" class="movie_list"
								style="position: relative; margin-top: 3px; float: left; width: 254px; z-index: 2; height: 84%; overflow-y: scroll; overflow-x: hidden; opacity: 0;">
								<ul id="lists"
									style="list-style: none; padding-left: 0px; margin-top: 0px;">
									<c:forEach var="vo" items="${list_asc}">
										<li><a id="movie${vo.idx}" class="movie"
											onclick="movie_param(${vo.idx})"> <c:choose>
													<c:when test='${vo.filmrating.equals("12")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px -29px;"></span>
													</c:when>
													<c:when test='${vo.filmrating.equals("15")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px -64px;"></span>
													</c:when>
													<c:when test='${vo.filmrating.equals("전체")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px 6px;"></span>
													</c:when>
													<c:when test='${vo.filmrating.equals("청불")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px -99px;"></span>
													</c:when>
												</c:choose> <span id="movie_text${vo.idx}" class="text">${vo.name}</span>

										</a></li>
									</c:forEach>

								</ul>












							</div>
							<div id="filmrating" class="movie_list "
								style="position: relative; top: -557px; margin-top: 3px; float: left; width: 254px; z-index: 2; height: 84%; overflow-y: scroll; overflow-x: hidden;">
								<ul id="lists"
									style="list-style: none; padding-left: 0px; margin-top: 0px;">
									<c:forEach var="vo" items="${list}">
										<li><a id="movie_${vo.idx}" class="movie"
											onclick="movie_param(${vo.idx})"> <c:choose>
													<c:when test='${vo.filmrating.equals("12")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px -29px;"></span>
													</c:when>
													<c:when test='${vo.filmrating.equals("15")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px -64px;"></span>
													</c:when>
													<c:when test='${vo.filmrating.equals("전체")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px 6px;"></span>
													</c:when>
													<c:when test='${vo.filmrating.equals("청불")}'>
														<span class="icon"
															style="background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_ratings2.png); background-position: 5px -99px;"></span>
													</c:when>
												</c:choose> <span id="movie_text_${vo.idx}" class="text">${vo.name}</span>

										</a></li>
									</c:forEach>

								</ul>













							</div>

						</div>
					</div>


				</div>

				<div class="booking_middle"id="booking_middle2" style="top:-389px;position: relative;position:relative;width: 265px; height: 660px">
					<div id="theater_select"
						style="float: left; position: relative; margin-left: 20px; margin-top: 9px; width: 254px; height: 100%;">







						<div id="theater_select_middle"
							style="height: 488px; position: relative; float: left; width: 100%; margin-top: 3px; z-index: 2">
							<div style="float: left; width: 109px; height: 100%;">
								<form>
									<ul
										style="width: 100%; height: 100%; margin: 0; padding: 0; border: 0;">
										<li class="selected"
											style="border: 1px solid #f2f0e5; width: 109px; line-height: 33px; height: 31px; margin: 0; color: black; text-align: right"><a
											id="seo"
											style="display: block; letter-spacing: -0.1em; padding-right: 7px; width: max; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step1/theaterarealist_item_selected.png) no-repeat right"
											onclick="서울()"> <span>서울</span>
										</a>
											<div id="seo_loc"
												style="display: block; opacity: 1; position: absolute; top: 0; z-index: 3; left: 109px; width: 124px; height: 448px;">
												<ul
													style="width: 100%; height: 100%; margin: 0; padding: 0; border: 0;">
													<li class="selected" id="강남_"
														style="width: 124px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="강남_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">강남</a>
													</li>
													<li class="selected" id="구로_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="구로_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">구로</a>
													</li>
													<li class="selected" id="명동_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="명동_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">명동</a>
													</li>
												</ul>
											</div></li>
										<li class="selected"
											style="border: 1px solid #f2f0e5; width: 109px; line-height: 33px; height: 31px; margin: 0; color: black; text-align: right"><a
											id="kyu" onclick="경기()"
											style="display: block; background-color: #e6e4d9; letter-spacing: -0.1em; padding-right: 7px; width: max;">
												<span>경기</span>
										</a>
											<div id="kyu_loc"
												style="display: block; opacity: 0; position: absolute; top: -31px; z-index: 2; left: 109px; width: 124px; height: 448px;">
												<ul
													style="width: 100%; height: 100%; margin: 0; padding: 0; border: 0;">
													<li class="selected" id="구리_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="구리_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">구리</a>
													</li>
													<li class="selected" id="김포_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="김포_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">김포</a>
													</li>
													<li class="selected" id="동탄_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="동탄_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">동탄</a>
													</li>
												</ul>
											</div></li>
										<li class="selected"
											style="border: 1px solid #f2f0e5; width: 109px; height: 31px; line-height: 33px; margin: 0; color: black; text-align: right"><a
											id="inc" onclick="인천()"
											style="display: block; background-color: #e6e4d9; letter-spacing: -0.1em; padding-right: 7px; width: max;">
												<span>인천</span>
										</a>
											<div id="inc_loc"
												style="display: block; opacity: 0; position: absolute; top: -62px; z-index: 2; left: 109px; width: 124px; height: 448px;">
												<ul
													style="width: 100%; height: 100%; margin: 0; padding: 0; border: 0;">
													<li class="selected" id="계양_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="계양_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">계양</a>
													</li>
													<li class="selected" id="부평_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="부평_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">부평</a>
													</li>
													<li class="selected" id="청라_"
														style="width: 109px; height: 31px; margin: 0; padding: 0 10px;">
														<a class="text" id="청라_a"
														style="background: transparent; width: 120px; letf: -10px; position: absolute; color: black; text-align: left; font-weight: bold;"
														onclick="지역(this.id)">청라</a>
													</li>
												</ul>
											</div></li>

									</ul>
								</form>
							</div>
						</div>






					</div>
				</div>
				<div class="booking_middle"id="booking_middle3" style="top:-389px;position: relative;position:relative;width: 91px; height: 660px">
					<div
						style="float: left; width: 74px; height: 96%; margin-top: 19px; margin-left: 7px">
						<ul style="list-style: none; padding: 0;">
							<li class="month_area"><span class="year">2022</span> <span
								class="month">7</span></li>
							<li class="day"><a class="day" id="금1"
								style="display: block; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="dayweek" id="금1_">금</span>
									<span class="day" id="금1__">1</span>

							</a></li>
							<li class="day"><a class="day" id="토2"
								style="display: block; color: #31597e; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="satweek" id="토2_">토</span>
									<span class="sat" id="토2__">2</span>

							</a></li>
							<li class="day"><a class="day" id="일3"
								style="display: block; color: #ad2727; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="sunweek" id="일3_">일</span>
									<span class="sun" id="일3__">3</span>

							</a></li>
							<li class="day"><a class="day" id="월4"
								style="display: block; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="dayweek" id="월4_">월</span>
									<span class="day" id="월4__">4</span>

							</a></li>
							<li class="day"><a class="day" id="화5"
								style="display: block; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="dayweek" id="화5_">화</span>
									<span class="day" id="화5__">5</span>

							</a></li>
							<li class="day"><a class="day" id="수6"
								style="display: block; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="dayweek" id="수6_">수</span>
									<span class="day" id="수6__">6</span>

							</a></li>
							<li class="day"><a class="day" id="목7"
								style="display: block; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="dayweek" id="목7_">목</span>
									<span class="day" id="목7__">7</span>

							</a></li>
							<li class="day"><a class="day" id="금8"
								style="display: block; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="dayweek" id="금8_">금</span>
									<span class="day" id="금8__">8</span>

							</a></li>
							<li class="day"><a class="day" id="토9"
								style="display: block; color: #31597e; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="satweek" id="토9_">토</span>
									<span class="sat" id="토9__">9</span>

							</a></li>
							<li class="day"><a class="day" id="일10"
								style="display: block; padding-left: 8px; padding-right: 7px;"
								onclick="날짜(this.id)"> <span class="sunweek" id="일10_">일</span>
									<span class="sun" id="일10__">10</span>

							</a></li>

						</ul>



					</div>

				</div>
				<div class="booking_middle" id="booking_middle4"
					style="top:-389px;position: relative;position:relative;width: 346px; height: 660px; margin-right: 5px;">
					<div
						style="width: 306px; height: 23px; margin-left: 20px; margin-top: 19px; border-bottom: solid 2px #cfcdc3;">
						<span class="morning"
							style="float: left; height: 14px; padding-left: 18px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_morning_night.png) no-repeat left; background-position: 0 0;">조조</span>
						<span class="night"
							style="float: left; height: 14px; padding-left: 14px; margin-left: 14px; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/icon/icon_morning_night.png) no-repeat left; background-position: 0 -20px;">심야</span>
					</div>

					<div
						style="float: left; width: 316px; height: 88%; margin-left: 20px; margin-top: 15px;">
						<div id="time_table_back"
							style="opacity: 0; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: normal; float: left; width: 100%; height: 416px; line-height: 416px; text-align: center; color: #666;">
							<div
								style="display: block; border: none;  position: relative; top: -10px; margin-top: 0px; float: left; width: 306px;">
								<span class="text" style="float:left"> <span>1관</span> <span
									style="font-weight: normal; float:left;color: #666; font-size: 12px;">(20석)</span>
								</span>
							</div>

							<ul
								style="position: relative; top: 10px; height: 68px; position: relative; width: 309px; margin-top: 10px; margin-bottom: 6px; list-style: none">
								<li
									style="width: 103px; top: -25px; position: relative; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="일관10" onclick="시간(this.id)"> <span
										class="time" id="일관10_span"><span>10:00</span></span><span
										class="seatsN">20석</span></a>
								</li>
								<li
									style="width: 103px; top: -25px; position: relative; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="일관12" onclick="시간(this.id)"> <span
										class="time" id="일관12_span"><span>12:30</span></span><span
										class="seatsN_">20석</span></a>
								</li>
								<li
									style="width: 103px; top: -25px; position: relative; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="일관15" onclick="시간(this.id)"> <span
										class="time" id="일관15_span"><span>15:00</span></span><span
										class="seatsN_">20석</span></a>
								</li>
								<li
									style="width: 103px; top: -25px; position: relative; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="일관17" onclick="시간(this.id)"> <span
										class="time" id="일관17_span"><span>17:30</span></span><span
										class="seatsN_">20석</span></a>
								</li>
								<li
									style="width: 103px; top: -25px; position: relative; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="일관20" onclick="시간(this.id)"> <span
										class="time" id="일관20_span"><span>20:00</span></span><span
										class="seatsN_">20석</span></a>
								</li>
								<li
									style="width: 103px; top: -25px; position: relative; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="일관22" onclick="시간(this.id)"> <span
										class="time" id="일관22_span"><span>22:30</span></span><span
										class="seatsN_">20석</span></a>
								</li>

							</ul>
							<div
								style="display: block; border: none; position: relative; top: 5px; margin-top: 0px; float: left; width: 306px;">
								<span class="text"style="float:left"> <span>2관</span> <span
									style="float:left;font-weight: normal; color: #666; font-size: 12px;">(20석)</span>
								</span>
							</div>
							<ul
								style="border-top: solid 2px #cfcdc3;; position: relative; top: 10px; height: 68px; position: relative; width: 309px; margin-top: 10px; margin-bottom: 6px; list-style: none">
								<li
									style="width: 103px; position: relative; top: -10px; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="이관10" onclick="시간(this.id)"> <span
										class="time" id="이관10_span"><span>10:00</span></span><span
										class="seatsN">20석</span></a>
								</li>
								<li
									style="width: 103px; position: relative; top: -10px; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="이관12" onclick="시간(this.id)"> <span
										class="time" id="이관12_span"><span>12:30</span></span><span
										class="seatsN_">20석</span></a>
								</li>
								<li
									style="width: 103px; position: relative; top: -10px; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="이관15" onclick="시간(this.id)"> <span
										class="time" id="이관15_span"><span>15:00</span></span><span
										class="seatsN_">20석</span></a>
								</li>
								<li
									style="width: 103px; position: relative; top: -10px; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="이관17" onclick="시간(this.id)"> <span
										class="time" id="이관17_span"><span>17:30</span></span><span
										class="seatsN_">20석</span></a>
								</li>
								<li
									style="width: 103px; position: relative; top: -10px; float: left; height: 34px; line-height: 25px; padding-bottom: 9px">
									<a class="button" id="이관20" onclick="시간(this.id)"> <span
										class="time" id="이관20_span"><span>20:00</span></span><span
										class="seatsN_">20석</span></a>
								</li>


							</ul>
						</div>





						<div id="time_table"
							style="position: absolute; font-family: 'Tahoma', '돋움', dotum, Nanum Gothic, sans-serif; font-size: 12px; font-weight: normal; float: left; width: 316px; height: 416px; line-height: 416px; text-align: center; color: #666;">영화,
							극장, 날짜를 선택해주세요.</div>
					</div>
				</div>




			</div>


			<div class="banner2">
				<a
					href="http://www.cgv.co.kr/culture-event/popcorn-store/store-category.aspx?CategoryIdx=3"
					target="_blank"> <img
					src="https://adimg.cgv.co.kr/images/202111/cgvgift/1221_160x300.jpg"
					width="160" height="300" border="0"
					style="width: 160px; height: 300px; animation: fadein 1.5s; -webkit-animation: fadein 1.5s; animation-delay: 2s; opacity: 0; animation-fill-mode: forwards;">
				</a>
			</div>
		</div>
	</div>

	<div id="middleback"
		style="width: 2000; height: 739px; background: black; position: absolute;">
	</div>



	<div id="bottom_black"
		style="z-index:1;width: max; height: 128px; background: black; display: flex; position: relative; top: -90px">
		<div
			style="width: 996px; height: 128px; padding: 10px 0; margin: 0 auto;">
			<div id="bottom_movie" class="bottom_movie"
				style="width: 209px; height: 108px; position: relative; display: inline-block;">
				<div id="bottom_movie_" class="bottom"
					style="display: block; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% 20px; position: absolute; top: 20px; height: 70px; border-right: 1px solid #2d2d2b;">
					<span
						style="position: relative; display: block; opcity: 0; width: 74px; height: 104px;"><img
						id="bottom_movie_img"
						style="position: absolute; overflow: hidden; border: 0;"> </span><span
						id="bottom_movie_span" class="text"
						style="width: 100px; position: absolute; top: -20px; right: 25px; color: white; font-size: 11px"></span>
				</div>
			</div>
			<div id="bottom_theater" class="bottom_theater"
				style="width: 186px; height: 108px; position: relative; display: inline-block;">
				<div
					style="display: block; margin-top: 14px; width: 185px; height: 20px">
					<span id="bottom_text1" class="bottom_text"
						style="float: left; padding-left: 10px; width: 50px; height: 20px">극장</span>
					<span id="bottom_text1_" class="bottom_text"
						style="float: left; color: white; width: 135px; height: 20px"></span>
				</div>
				<div style="display: block; width: 185px; height: 20px">
					<span id="bottom_text2" class="bottom_text"
						style="float: left; padding-left: 10px; width: 50px; height: 20px">일시</span>
					<span id="bottom_text2_" class="bottom_text"
						style="float: left; color: white; width: 135px; height: 20px"></span>
				</div>
				<div style="display: block; width: 185px; height: 20px">
					<span id="bottom_text3" class="bottom_text"
						style="float: left; padding-left: 10px; width: 50px; height: 20px">상영관</span>
					<span id="bottom_text3_" class="bottom_text"
						style="float: left; color: white; width: 135px; height: 20px"></span>
				</div>
				<div id="people_list_2"style="display: block; width: 185px; height: 20px">
					<span id="bottom_text4" class="bottom_text"
						style="float: left;  padding-left: 10px; width: 50px; height: 20px">인원</span>
					<span id="bottom_text4_ad" class="bottom_text"
						style="float: left; position:absolute; color: white; width: 70px; height: 20px"></span>
					<span id="bottom_text4_yo" class="bottom_text"
						style="float: left; position:absolute;color: white; width: 70px; height: 20px"></span>
					<span id="bottom_text4_se" class="bottom_text"
						style="float: left; position:absolute;color: white; width: 70px; height: 20px"></span>
				
				</div>

				<div id="bottom_theater_" class="bottom"
					style="display: block; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -88px; position: absolute; top: 20px; height: 70px; border-right: 1px solid #2d2d2b;">
				
				</div>
			</div>
			<div id="bottom_seat"class="bottom_seat"
				style="width: 134px; height: 108px; top:-34px;position: relative; display: inline-block;">
				<div
					style="display: block; margin-top: 14px; width: 185px; height: 20px">
					<span id="bottom_seat_text" class="bottom_text"
						style="position:relative; top:34px;float: left; padding-left: 10px; width: 50px; height: 20px">좌석명</span>
					<span id="bottom_seat_text_" class="bottom_text"
						style="position:relative; top:34px;float: left; color: white; width: 80px; height: 50px"></span>
				</div>
				
				
				<div id="bottom_seat_"class="bottom"
					style="position:relative; top: -30px;display: block; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -190px; margin-top: 14px;"></div>
			</div>
			<div id="bottom_payment"class="bottom_payment"
				style="width: 89px; top:-53px;height: 108px; position: relative; display: inline-block;">
				<div
					style="display: block; margin-top: 14px; width: 185px; height: 20px">
					<span id="bottom_payment_text" class="bottom_text"
						style="position:relative; top:55px;float: left; padding-left: 10px; width: 50px; height: 20px">총금액</span>
					<span id="bottom_payment_text_" class="bottom_text"
						style="position:relative; top:55px;float: left; color: white; width: 135px; height: 20px"></span>
					<span id="bottom_payment_text_원" class="bottom_text"
						style="position:relative; top:55px;float: left; color: white; width: 135px; height: 20px"></span>
				
				</div>
				
				
				<div id="bottom_payment_" class="bottom"
					style="background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -298px; margin-top: 14px;"></div>
			</div>
			<div id="seat_div"
				style="z-index:2;position: relative;  width: 106px; height: 108px; display: inline-block; float: right; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png) no-repeat; background-position: 0 -220px">
				<a id="seat_ch"class="seat_btn" onclick="seat_btn()"
					style=" right:0px;top:0px;display: block; width: 106px; height: 108px; position: absolute; float: none;"></a>
			</div>
			<div id="seat_div2"
				style="z-index:1;position: relative;left: 106px;width: 106px; height: 108px; display: inline-block; float: right; background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_buttons.png) no-repeat; background-position: 0 -220px">
				<a id="seat_ch"class="seat_btn" onclick="seat_btn2()"
					style=" right:0px;top:0px;display: block; width: 106px; height: 108px; position: absolute; float: none;"></a>
			</div>
		</div>
	</div>
	<div id="bottom_banner" class="bottom_banner"
		style="position: relative; z-index: 4; width: 1324px; height: 140px; margin: 30px auto; text-align: center; top: -90px;"
		onload="showImage()" onclick="영화소개()">
		<a href="http://www.cgv.co.kr/movies/detail-view/?midx=85950"
			target="_blank" style="width: 996px; height: 140px;"> <img
			src="https://adimg.cgv.co.kr/images/202206/elvis/996x140.jpg"
			style="width: 996px; height: 140px; animation: fadein 1.5s; -webkit-animation: fadein 1.5s; animation-delay: 2s; opacity: 0; animation-fill-mode: forwards;">
		</a>
	</div>
</body>
</html>