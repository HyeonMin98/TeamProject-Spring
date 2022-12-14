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

        /* ------------------------------------------------------?????? ?????? -------------------------------------------------------------- */

        /* ????????? ?????? -------------------------------------------------------------- */
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
                        <li><a onclick="">???????????????</a></li>
                        <li><a onclick="">???????????????</a></li>
                        <li><a onclick="">??????</a></li>
                        <li><a onclick="">??????</a></li>
                        <li><a onclick="">??????</a></li>
                        <li><a onclick="">??????</a></li>
                        <li><a onclick="">????????????</a></li>
                        <li><a onclick="">???????????????</a></li>
                    </ul>

                    <ul class="cart-wrap">
                        <li><a onclick="">??? ????????????</a></li>
                        <li><a onclick="">????????????</a></li>
                    </ul>

                </div>

            </div>


            <div class="category_product_wrap">


                <ul class="category_product_list">

                    <li>
                        <strong class="category_product_title">
                            ???????????????
                            <a href="" class="btn_category_product">+</a>
                        </strong>
                        <ul class="category_product_inner_list">
                            <li class="product-wrap">
                                <a href="" class="product">
                                    <span class="product-img">
                                        <img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/16094706927780.jpg">
                                    </span>
                                    <span class="product-wrap">
                                        <span class="product-name">CGV ???????????????</span><br>
                                        <span class="sub-text">????????? ????????? CGV??????!</span><br>
                                        <span class="price">12,000???</span>
                                    </span>
                                </a>
                            </li>
                            <li class="product-wrap"><a href="" class="product"> <span class="product-img">
                                        <img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15458911951520.jpg"></span>
                                    <span class="product-wrap">
                                        <span class="product-name">CGV ???????????????</span><br>
                                        <span class="sub-text">????????? ??????????????? ???????????? ???????????? ?????????</span><br>
                                        <span class="price">40,000???</span>

                                    </span>
                                </a>
                            </li>
                            <li class="product-wrap">
                                <a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/16105061088530.jpg"></span>
                                    <span class="product-wrap"> <span class="product-name">4DX?????????</span><br><span
                                            class="sub-text">???????????? ?????? ??? ????????? ??????</span> <span class="price">19,000???</span>

                                    </span>
                                </a></li>
                            <li class="product-wrap"><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/16104445886810.jpg"></span>
                                    <span class="product-wrap"> <span class="product-name">IMAX ?????????</span><br> <span
                                            class="sub-text">????????? ??? ??? ?????? ?????? ??????, IMAX</span><br>
                                        <span class="price">18,000???</span>

                                    </span>
                                </a></li>
                        </ul>
                    </li>

                    <li class="category_product_inner_list2">
                        <strong class="category_product_title">???????????????
                            <a href="" class="btn_category_product">+</a></strong>

                        <ul>

                            <li class="state_giftcard"><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15814124358590.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">PACONNIE A???</span> <br><span
                                            class="sub-text">????????? ?????? ??????</span><br><span class="price nowon">???????????????</span>

                                    </span>
                                </a>
                            </li>
                            <li class=" state_giftcard"><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15814158039890.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">PACONNIE B???</span><br> <span
                                            class="sub-text">????????? ?????? ??????</span><br><span class="price nowon">???????????????</span>

                                    </span>
                                </a></li>
                            <li class=" state_giftcard"><a href="" class="product"> <span class="product-img">
                                <img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15814162227570.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">PACONNIE C???</span><br> <span
                                            class="sub-text">????????? ?????? ??????</span><br> <span class="price nowon">???????????????</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">??????<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463252009160.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">CGV??????</span><br> <span
                                            class="sub-text">CGV??? ????????? ???????????????!</span><br> <span class="price">9,000???</span>
                                    </span>
                                    </span>
                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463251537260.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">????????????</span><br> <span
                                            class="sub-text">???????????? ????????? ??? ???????????????!</span><br> <span class="price">12,000???</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464065561050.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">????????????</span><br> <span
                                            class="sub-text">???????????? ?????????</span><br> <span class="price">6,500???</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">??????<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244796940.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">????????????(L)</span><br> <span
                                            class="sub-text">????????? ?????? No.1</span><br> <span class="price">5,000???</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244213800.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">????????????(L)</span><br> <span
                                            class="sub-text">????????? ????????? ?????? ????????? ????????????</span><br> <span class="price">6,000???</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463247055100.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">??????????????????(L)</span><br> <span
                                            class="sub-text">?????????????????? ??????!</span><br> <span class="price">6,000???</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">??????<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464083668990.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">????????????(M)</span><br> <span
                                            class="sub-text">????????? ??????????????? ?????? ??????????????? ????????????</span><br>
                                        <span class="price">2,500???</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464096039760.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">???????????????(HOT)</span><br> <span
                                            class="sub-text">???????????? ?????????</span><br> <span class="price">3,500???</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464105893180.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">???????????????(ICE)</span><br> <span
                                            class="sub-text">???????????? ?????????</span><br> <span class="price">4,000???</span>
                                    </span>

                                </a></li>
                        </ul>
                    </li>
                    <li class="category_product_inner_list2"><strong class="category_product_title">??????<a href="" class="btn_category_product">+</a></strong>
                        <ul>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459092398190.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">??????????????????</span><br> <span
                                            class="sub-text">???????????? ??????, ????????? ?????????????</span><br> <span class="price">4,900</span>
                                    </span>

                                </a></li>
                            <li class=" "><a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464120856450.jpg"></span>
                                    <span class="product-wrap2"> <span class="product-name">??????????????????</span><br> <span
                                            class="sub-text">??????????????????</span><br> <span class="price">4,500???</span>
                                    </span>

                                </a></li>
                            <li class=" ">
                                <a href="" class="product"> <span class="product-img"><img
                                            src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15459089330830.jpg"></span>
                                    <span class="product-wrap2">
                                        <span class="product-name">?????????(?????????)</span><br>
                                        <span class="sub-text">??????????????? ????????????</span><br>
                                        <span class="price">3,500???</span>
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
                        <li><a>????????????</a></li>
                        <li><a>IR</a></li>
                        <li><a>????????????</a></li>
                        <li><a>??????/??????/????????????</a></li>
                        <li><a>????????????</a></li>
                        <li><a>????????????</a></li>
                        <li><a>????????????????????????</a></li>
                        <li><a>????????????</a></li>
                        <li><a>?????????????????????????????????</a></li>
                        <li><a>????????????</a></li>
                        <li><a>??????????????????</a></li>
                    </ul>
    
                    <div class="company_info_wrap">
                        <section class="company_info">
                            <span>(04377)??????????????? ????????? ???????????? 23??? 55, ??????????????? 6???(????????????)</span>
                            <dl class="company_info_list">
                                <dt>????????????</dt>
                                <dd>?????????</dd>
                                <dt>?????????????????????</dt>
                                <dd>104-81-45690</dd>
                                <dt>???????????????????????????</dt>
                                <dd>
                                    2017-????????????-0662
                                    <aclass="btn_goFtc">?????????????????????</a> <a></a>
                                </dd>
                                <br>
                            </dl>
                            <dl class="company_info_list">
                                <dt>??????????????????</dt>
                                <dd>CJ?????????????????????</dd>
                                <dt>?????????????????? ?????????</dt>
                                <dd>?????????</dd>
                                <dt>???????????????</dt>
                                <dd>cjcgvmaster@cj.net</dd>
                                <br>
                            </dl>
                            <p class="copyright">?? CJ CGV. All Rights Reserved</p>
                        </section>
    
                        <section class="familysite_wrap">
                            <select id="familysite">
                                <option class="familysiteTitle">????????? ????????????</option>
                                <optgroup label="CJ??????">
                                    <option>CJ????????????</option>
                                </optgroup>
                                <optgroup label="?????? &amp; ???????????????">
                                    <option>CJ????????????</option>
                                    <option>CJ?????????</option>
                                    <option>CJ???????????????</option>
                                </optgroup>
                                <optgroup label="????????????">
                                    <option>CJ???????????? BIO????????????</option>
                                    <option>CJ Feed&amp;Card</option>
                                </optgroup>
                                <optgroup label="?????? &amp; ?????????">
                                    <option>CJ????????????</option>
                                    <option>CJ???????????? ????????????</option>
                                    <option>CJ????????????</option>
                                    <option>CJ?????????????????????</option>
                                    <option>CJ ENM ???????????????</option>
                                </optgroup>
                                <optgroup label="?????????????????? &amp; ?????????">
                                    <option>CJ ENM ????????????????????????</option>
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


