<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/join.css"></head>
<body>
<%@include file="Header.jsp" %>
<div id="wrap">
	<div id="join_content">
	<!-- .mypageWrap -->

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
        <div class="mw-info">
  		  <div class="mwi-left1">
                <p class="name">
                    <strong>김윤제</strong>님의 현재 회원등급은<br> 
                    <strong class="pink">일반회원</strong>입니다.
                </p>
                <p class="totalprice">
                    총 구매금액<strong> 0원</strong>입니다.
                </p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
        		<p>&nbsp;</p>
            </div>
         
            <div class="mwi-left">
                <table>
                    <tbody>
                        <tr>
                            <th>총주문 건수 (2014-9-4 19시 이후)</th>
                            <td>0 건</td>
                        </tr>
                        <tr>
                            <th>총주문 금액 (2014-9-4 19시 이후)</th>
                            <td>0 원</td>
                        </tr>            
                        <tr>
                            <th>쿠폰</th>
                            <td><a href="mycoupen.php" title="조회하기">0 개</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
          
            <div class="mwi-right">
                <table>
                    <tbody>
                        <tr>
                            <th>예치금</th>
                            <td><span><a href="/mypage/myaccounts.php" title="조회하기">0 원</a></span></td>
                        </tr>          	
                        <tr>
                            <th>적립금</th>
                            <td><span><a href="/mypage/mypoint.php" title="조회하기">5,000 원</a></span></td>
                        </tr>
                        <tr>
                            <th>포인트</th>
                            <td><span><a href="/mypage/mycoins.php">0 P</a></span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="mw-list">	
        <table class="mwl-table">
            <caption>
              최근 주문 정보 목록
            </caption>
            <colgroup>
              <col width="85">
              <col width="*">
              <col width="100">
              <col width="100">
            </colgroup>
            <thead>
                <tr>
                    <th>주문일자</th>
                    <th>주문상품</th>
                    <th>주문금액</th>
                    <th>주문상세</th>
                </tr>
		    </thead>
            <tbody>
				<tr>
					<td colspan="4"><div class="tb-center">주문 내역이 없습니다.</div></td>
				</tr>
			</tbody>
        </table>
    </div>
    
    <div class="mw-list">
        <h3 class="title">최근문의내역</h3>
        <table class="mwl-table">
            <caption>최근 등록 게시물 목록</caption>
            <colgroup>
                <col width="85">
                <col width="*">
                <col width="80">
            </colgroup>
            <thead>
                <tr>
                    <th>작성일</th>
                    <th>제목</th>
                    <th>답변여부</th>
                </tr>
            </thead>
            <tbody>
    		    <tr>
    		        <td colspan="3"><div class="tb-center">작성된 게시글이 없습니다.</div></td>
    		    </tr>
			</tbody>
      </table>
    </div>
    
    <div class="mw-goods">
        <h3 class="title">관심상품</h3>	
        <table class="mwl-table">
            <caption>관심상품</caption>
            <colgroup>
              <col width="85">
              <col width="*">
              <col width="100">
            </colgroup>
            <thead>
                <tr height="50px;">
                    <th>사진</th>
                    <th>상품명</th>
                    <th>가격</th>
                </tr>
		    </thead>
			<tbody>
				<tr>
					<td colspan="3"><div class="tb-center">관심 상품 내역이 없습니다.</div></td>
				</tr>
			</tbody>
        </table>
    </div>
  </div>
 

<%@include file="Footer.jsp" %>

</body>
</html>