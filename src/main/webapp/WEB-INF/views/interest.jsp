<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/join.css">
</head>
<body>
<%@include file="Header.jsp" %>
<div id="wrap">
	<div id="join_content">
	        <div class="mw-menu">
	            <ul>
	                <li><a href="#" class="color">마이페이지</a></li>
	                <li><a href="#">주문/배송조회</a></li>
	        		<li><a href="#">과거주문</a></li>
	                <li><a href="#">회원정보</a></li>
	        		<li><a href="#">위시리스트</a></li>   
	                <li><a href="#">장바구니</a></li>    
	                <li><a href="#">적립금</a></li>        
	                <li><a href="#">1:1 문의</a></li>
	
	                <li><a href="#">쿠폰</a></li>
	                <li><a href="#">탈퇴</a></li>
	            </ul>
	        </div>
	</div>
	<div class="mw-list">
            <div id="wishlist" class="mypage_list">
                <h3>
                    <img src="http://cdn-bikeselling.bizhost.kr/img/tit_wishlist.gif" alt="나의 위시리스트보기">
                </h3>

                <form name="list_form" method="post">
                    <input type="hidden" name="basket" value="">
                    <table summary="사진,  상품명, 수량, 재고, 적립금, 가격, 장바구니" class="table_style">
                        <caption>
                            예치금 내역
                        </caption>
                        <colgroup>
                            <col width="35">
                            <col width="100">
                            <col width="*">
                            <col width="85">
                            <col width="105">
                            <col width="95">
                            <col width="115">
                        </colgroup>

                        <thead>
                            <tr>
                                <th scope="row" class="first">
                                    <div class="tb-center">
                                        <!--input type="checkbox" class="chk-rdo" /-->
                                        <input type="checkbox" name="all_brchk" onclick="wishchkall();" id="allchk">
                                    </div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center">
                                        사진
                                    </div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center">
                                        상품명
                                    </div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center">
                                        옵션
                                    </div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center">
                                        가격
                                    </div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center">
                                        저장일
                                    </div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center"></div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="7">
                                    <div class="tb-center">
                                        보관하신 상품 내역이 없습니다.
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>