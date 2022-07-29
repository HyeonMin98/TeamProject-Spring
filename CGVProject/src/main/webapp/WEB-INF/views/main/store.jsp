<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
            padding-bottom: 3600px;
            padding-top: 150px;
        }


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

        .company_info_list dt,
        .company_info_list dd {
            float: left;
        }

        .company_info_list dt::after .company_info_list dd::after {
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

        /* ------------------------------------------------------메인 내용 -------------------------------------------------------------- */

        /* 최상단 배너 -------------------------------------------------------------- */
        .big-banner-wrap {
            width: 980px;
            margin: auto;
        }

        .big-banner-wrap img {
            height: 400px;
        }

        .top-wrap {
            width: 100%;
            float: left;
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
        }

        .top-wrap::after {
            content: "";
            display: block;
            clear: both;
        }

        .category-wrap {
            width: 980px;
            margin: auto;
            padding: 20px;
        }

        .category-wrap ul {
            display: inline-block;
            list-style: none;
        }

        .category-wrap li {
            display: inline-block;
        }

        .category-wrap a {
            text-decoration: none;
            cursor: pointer;
        }

        .category-contents a {
            color: #6a6f77;
            margin-right: 15px;
            cursor: pointer;
        }

        .cart-wrap li:first-child {
            border-left: 1px solid #ddd;
        }

        .cart-wrap a {
            color: black;
            font-weight: bold;
            margin: 15px;
        }

        /* PRODUCTS--------------------------------------------------------------------------- */
        .category_product_title {
            font-size: 28px;

        }

        .product-img img {
            width: 220px;
            height: 220px;
        }

        .category_product_list {
            width: 980px;
            margin: auto;
        }

        .category_product_inner_list{
            width: 100%;
        }
        .category_product_inner_list li{
            width: 25%;
        }

        .category_product_inner_list2{
            width: 40%;
            margin-right: 90px;
        }
        .category_product_inner_list2 li{
            width: 100%;
        }
        .category_product_inner_list2 img{
            width: 160px;
            height: 160px;
        }


        .category_product_list ul {
            border-top: 1px solid;
        }
        .category_product_list li {
            padding: 40px 0px;
            list-style: none;
            float: left;
        }
        .category_product_list li::after {
            content: "";
            display: block;
            clear: both;
        }




        .btn_category_product{
            float: right;
        }
        .btn_category_product::after{
            content: "";
            display: block;
            clear: both;
        }

        .btn_category_product{
            text-decoration: none;
        }

        .product{
            text-decoration: none;
        }

        .product-wrap {
            font-size: 16px;
            width: 220px;
            display: inline-block;
            color : black;
        }

        
        .product-wrap2 {
            font-size: 13px;
            width: 220px;
            float: right;
            margin-top: 50px;
            color : black;
        }
        .product-wrap2::after{
            content: "";
            display: block;
            clear: both;
        }


        .product-name {
            font-weight: bold;
            font-size: 16px;
            color: black;
        }
        .sub-text {
            color: #6a6f77;
            font-size: 16px;
        }

        .price{
            font-size: 18px;
            text-decoration: none;
        }

    </style>

</head>


<body>



<%@ include file="../includes/header.jsp"%>

    <div id="body-wrapper">
        <div id="body-content">
            <div class="big-banner-wrap">
                <img src="http://img.cgv.co.kr/GiftStore/Display/PC/15468087168510.jpg">
            </div>

            <div class="top-wrap">

                <div class="category-wrap">

                    <ul class="category-contents">
                        <li><a onclick="">영화관람권</a></li>
                        <li><a onclick="">기프트카드</a></li>
                        <li><a onclick="">콤보</a></li>
                        <li><a onclick="">팝콘</a></li>
                        <li><a onclick="">음료</a></li>
                        <li><a onclick="">스낵</a></li>
                        <li><a onclick="">플레이존</a></li>
                        <li><a onclick="">상품권소개</a></li>
                    </ul>

                    <ul class="cart-wrap">
                        <li><a onclick="">내 기프티콘</a></li>
                        <li><a onclick="">장바구니</a></li>
                    </ul>

                </div>

            </div>


            <div class="category_product_wrap">


                <ul class="category_product_list">

                    <li>
                        <strong class="category_product_title">
                            영화관람권
                            <a href="" class="btn_category_product">+</a>
                        </strong>
                        <ul class="category_product_inner_list">
                            <li class="product-wrap">
                                <a href="" class="product">
                                    <span class="product-img">
                                        <img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/16094706927780.jpg">
                                    </span>
                                    <span class="product-wrap">
                                        <span class="product-name">CGV 영화관람권</span><br>
                                        <span class="sub-text">즐거운 경험은 CGV에서!</span><br>
                                        <span class="price">12,000원</span>
                                    </span>
                                </a>
                            </li>
                            <li class="product-wrap"><a href="" class="product"> <span class="product-img">
                                        <img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15458911951520.jpg"></span>
                                    <span class="product-wrap">
                                        <span class="product-name">CGV 골드클래스</span><br>
                                        <span class="sub-text">최고의 관람환경을 제공하는 프리미엄 상영관</span><br>
                                        <span class="price">40,000원</span>

                                    </span>
                                </a>
                            </li>
                            <li class="product-wrap">
                                <a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/16105061088530.jpg"></span>
                                    <span class="product-wrap"> <span class="product-name">4DX관람권</span><br><span
                                            class="sub-text">오감만족 영화 속 주인공 되기</span> <span class="price">19,000원</span>

                                    </span>
                                </a></li>
                            <li class="product-wrap"><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/16104445886810.jpg"></span>
                                    <span class="product-wrap"> <span class="product-name">IMAX 관람권</span><br> <span
                                            class="sub-text">사람이 볼 수 있는 최대 영상, IMAX</span><br>
                                        <span class="price">18,000원</span>

                                    </span>
                                </a></li>
                        </ul>
                    </li>

                    <li class="category_product_inner_list2">
                        <strong class="category_product_title">기프트카드
                            <a href="" class="btn_category_product">+</a></strong>

                        <ul>

                            <li class="state_giftcard"><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15814124358590.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">PACONNIE A형</span> <br><span
                                            class="sub-text">충전형 선불 카드</span><br><span class="price nowon">금액충전형</span>

                                    </span>
                                </a>
                            </li>
                            <li class=" state_giftcard"><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15814158039890.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">PACONNIE B형</span><br> <span
                                            class="sub-text">충전형 선불 카드</span><br><span class="price nowon">금액충전형</span>

                                    </span>
                                </a></li>
                            <li class=" state_giftcard"><a href="" class="product"> <span class="product-img">
                                <img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15814162227570.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">PACONNIE C형</span><br> <span
                                            class="sub-text">충전형 선불 카드</span><br> <span class="price nowon">금액충전형</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">콤보<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463252009160.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">CGV콤보</span><br> <span
                                            class="sub-text">CGV의 영원한 베스트셀러!</span><br> <span class="price">9,000원</span>
                                    </span>
                                    </span>
                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463251537260.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">더블콤보</span><br> <span
                                            class="sub-text">취향별로 원하는 맛 선택하세요!</span><br> <span class="price">12,000원</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464065561050.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">스몰세트</span><br> <span
                                            class="sub-text">혼영할때 필수품</span><br> <span class="price">6,500원</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">팝콘<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244796940.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">고소팝콘(L)</span><br> <span
                                            class="sub-text">클래식 팝콘 No.1</span><br> <span class="price">5,000원</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244213800.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">달콤팝콘(L)</span><br> <span
                                            class="sub-text">달콤한 카라멜 향이 가득한 달콤팝콘</span><br> <span class="price">6,000원</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463247055100.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">더블치즈팝콘(L)</span><br> <span
                                            class="sub-text">치즈매니아들 주목!</span><br> <span class="price">6,000원</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">음료<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464083668990.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">탄산음료(M)</span><br> <span
                                            class="sub-text">시원한 탄산음료와 함께 스트레스도 날리세요</span><br>
                                        <span class="price">2,500원</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464096039760.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">아메리카노(HOT)</span><br> <span
                                            class="sub-text">현대인의 필수품</span><br> <span class="price">3,500원</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464105893180.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">아메리카노(ICE)</span><br> <span
                                            class="sub-text">현대인의 필수품</span><br> <span class="price">4,000원</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">스낵<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459092398190.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">칠리치즈나쵸</span><br> <span
                                            class="sub-text">바삭바삭 나쵸, 얼마나 맛있게요?</span><br> <span class="price">4,900</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464120856450.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">플레인핫도그</span><br> <span
                                            class="sub-text">플레인핫도그</span><br> <span class="price">4,500원</span>
                                    </span>

                                </a></li>
                            <li class=" ">
                                <a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459089330830.jpg"></span>
                                    <span class="product-wrap2">
                                        <span class="product-name">오징어(완제품)</span><br>
                                        <span class="sub-text">한봉지로는 모자라요</span><br>
                                        <span class="price">3,500원</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                </ul>
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













    </div>






    <script>

    </script>




</body>

</html>


