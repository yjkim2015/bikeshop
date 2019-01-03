<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/list.css" /></head>

</head>
<body>
<%@include file="../Header.jsp" %>
<div id="wrap">
	<div class="content">
	<div class="titleImg">
            <img src="//cdn-bikeselling.bizhost.kr/files/cates/1446550410_0.jpg">
      	</div>
      	<div class="pl-cate">
			<div class="plc-name">
				<p>FIXED</p>
			</div>
			<ul class="plc-list" id="sub_category">
				<li><a href="#">전체보기</a></li>
				<li><a href="#">스틸</a></li>
				<li><a href="#">크로몰리</a></li>
				<li><a href="#">알로이</a></li>
			</ul>
		</div>
		<div class="pl-sort">
			<div class="pls-all">
				 등록제품 : <b>228</b>개
			</div>
			<div align="right" style="margin-top:-19px;">
				<ul>
					<select name="name" onchange="if(this.value!='') {location.href=this.value;}">
						<option value="#" selected="">정렬방법</option>
						<option value="#">신상품순</option>
						<option value="#">상품명순</option>
						<option value="#">높은가격순</option>
						<option value="list.php?cate=08&amp;ob=5&amp;skin=">낮은가격순</option>
					</select>
				</ul>
			</div>
		</div>
	<div class="clearfix">
	</div>
	
	<div class="glist">
		<ul>
		<li>
				<div class="listimg">
					<a href="/shop/view.php?index_no=6129&amp;cate=08"><img src="http://cdn-bikeselling.bizhost.kr/files/goods/6129/1537512262_0.jpg" class="limg"></a>
		
				</div>
				<div class="additem">
					<p class="gname">
						2018 벨로라인 템테이션 픽시
					</p>
					<p class="gname_pre">
						지금이 구매 최적기! 또한번 레전드 가격!
					</p>
				    
				    <style>
				     #price {font-weight:bold;}
				    </style>
					<p class="account">
						<s><s>459,000</s> </s>&nbsp;339,000 원 <span></span>
					</p>
				</div>
				</li>
		</ul>
	</div>
	
</div>
	
	
</div>
<%@include file="../Footer.jsp" %>

</body>
</html>