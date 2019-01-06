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
<div id="join_content">
<div id="cartWrap">
        <div style="margin-bottom:7px;">
            <img src="http://cdn-bikeselling.bizhost.kr/img/order_top_img1.jpg" width="1050px;" alt="">
        </div><br>
        <!--상단이미지
        <div class="order_step">
            <img src="http://cdn-bikeselling.bizhost.kr/img/odertitle1.gif" width="1050px;" alt="">
        </div>
        -->
        <table summary="머릿말" id="table2">
            <tbody>
                <tr>
                    <th style="background-color: #F0F0F0;">01.장바구니</th>
                    <th>주문서작성</th>
                    <th>주문완료</th>
                </tr>
            </tbody>
        </table>
        <div id="cart">
            <form name="cartform" action="order_step1.php" method="post">
                <input type="hidden" name="basket" value="">
                <table summary="번호, 사진, 제품명, 수량, 적립금, 가격, 배송비, 취소" class="table_style">
                    <caption>
                        장바구니 담긴 상품
                    </caption>
                    <colgroup>
                        <col width="50">
                        <col width="70">
                        <col width="*">
                        <col width="150">
                        <col width="70">
                        <col width="90">
                        <col width="90">
                        <col width="90">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col" class="first">
                                <div class="tb-center textstyle">번호</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center textstyle">사진</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center textstyle">제품명</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center textstyle">수량</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center textstyle">적립금</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center textstyle">가격</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center textstyle">배송비</div>
                            </th>
                            <th scope="col">
                                <div class="tb-center textstyle">선택</div>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="8">
                                <div class="tb-right table_price">
                                    <table cellspacing="0" cellpadding="0">
                                        <colgroup>
                                            <col width="86%">
                                            <col width="*">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>주문수량합계 :</th>
                                                <th style="padding-right:12px;">0 원</th>
                                            </tr>
                                            <tr>
                                                <th>배송료 :</th>
                                                <th class="point" style="padding-right:12px;">0 원</th>
                                            </tr>
                                            <tr>
                                                <th>총 결제금액 :</th>
                                                <th class="point" style="padding-right:12px;">0 원</th>
                                            </tr>
                                            <!--<tr>
                                                <th>총 적립금 :</th>
                                                <th style="padding-right:12px;">31,508 원</th>
                                            </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                    <!-- .table-fill-prd -->
                </table>
                <div class="cartBtn">
                    <div class="cB-center">
                        <a href="javascript:del_chk();"><img src="http://cdn-bikeselling.bizhost.kr/img/cart_del_check.gif" alt="선택상품삭제"></a>
                        <a href="javascript:del_all();"><img src="http://cdn-bikeselling.bizhost.kr/img/cart_empty.gif" alt="장바구니 비우기"></a>
                        <a href="javascript:cart_chbuy();">
                            <img src="http://cdn-bikeselling.bizhost.kr/img/cart_order_check.gif" alt="주문하기">
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
<%@include file="Footer.jsp" %>
</body>
</html>