<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/join.css"></head>

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
        <div class="mw-list">
        	<div id="orderlist" class="mypage_list">
                <h3><img src="http://cdn-bikeselling.bizhost.kr/img/tit_order.gif" alt="주문내역 및 배송조회안내"></h3>
                <div id="content">
                    <p style="padding:10px 0 10px 0;"> 주문내역 </p>
                    <table cellspacing="0" cellpadding="0" summary="번호, 주문일자, 상품명, 결제금액, 주문상세, 배송현황" class="table_style">
                    <caption>주문내역</caption>
                        <colgroup>
                            <col width="150">
                            <col width="95">
                            <col width="*">
                            <col width="100">
                            <col width="90">
                            <col width="75">
                            <col width="75">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="first" scope="row"><div class="tb-center">주문번호</div></th>
                                <th scope="row"><div class="tb-center">주문일자</div></th>
                                <th scope="row"><div class="tb-center">상품명</div></th>
                                <th scope="row"><div class="tb-center">결제금액</div></th>
                                <th scope="row"><div class="tb-center">결제수단</div></th>
                                <th scope="row"><div class="tb-center">주문상세</div></th>
								<th scope="row"><div class="tb-center">배송현황</div></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="7"><div class="tb-center">주문내역이 없습니다.</div></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            	<!--<div class="paging">
                    <span><a href="javascript:alert('처음페이지입니다.');"><img src='http://cdn-bikeselling.bizhost.kr/img/pre_02.gif' border='0' /></a></span>
                    <span><b><font color='FF8400'>1</font></b></span>
                    <span><a href=/mypage/orderlist.php?page=2>2</a></span>
                    <span><a href=/mypage/orderlist.php?page=3>3</a></span>
                    <span><a href=/mypage/orderlist.php?page=4>4</a></span>
                    <span><a href=/mypage/orderlist.php?page=2><img src='http://cdn-bikeselling.bizhost.kr/img/nex.gif' border='0'></a></span>	
            	</div>-->
                <ul class="msg">
            		<li>
            		    - 주문후 별도로 바이크셀링 게시판이나 <span>고객센터</span>로 알려주시면 빠른 처리로 답변을 해드립니다.	
                    </li>
                    <li>
                        - <span>주문상세에서 /조회/</span>를 클릭하시면 고객님께서 구매하신 주문 상세 내역을  확인하실 수 있습니다.
                    </li>
                    <li>
                        - 결제후 미입금은 <span>일주후</span>자동으로 주문취소가 됩니다.
                    </li>
        	    </ul>
            </div>
        </div>
    </div>
</div>
<%@include file="Footer.jsp" %>

</body>
</html>