<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../../resources/js/common_util.js"></script>
<script type="text/javascript" src="../../resources/js/event_util.js"></script>
<script type="text/javascript">
var getContextPath = '${getContextPath}';
$(function(){
	console.log('getContextPath : ' + getContextPath);
	var userId = '${USER.userId}';
	initMenu(userId);

});

function initMenu(userId) {
	if ( userId != null && userId != '' ) {
		$('#login').hide();
		$('#join').hide();
		$('#logout').show();
		$('#personModify').show();
		$('#loginName>a').text('${USER.userName} 님 반갑습니다.');
		if ( userId == 'ROOT' ) {
			$('#menu>a>img').css('margin-right','198px');
			$('#admin').show();
		}
	}
	else {
		$('#login').show();
		$('#join').show();
		$('#logout').hide();
		$('#personModify').hide();
		$('#loginName').hide();
		$('#menu>a>img').css('margin-right','440px');
		$('#admin').hide();
	}
}
</script>
</head>
<body>

	<div id="header">
		 <div id="inner1">
			 <div id="menu">
			 <a href="/"><img src="../../resources/imgs/logo.png"></a>
				 <ul>
					<li id="login"><a href="/login">로그인</a></li>
					<li id="join"><a href="/join">회원가입</a></li>
					<li id="loginName"><a href="#">ddd</a></li>
				 	<li id="admin"><a href="/admin">관리자 페이지</a></li>
					<li id="logout"><a href="/logout">로그아웃</a></li>
					<li id="personModify"><a href="">정보수정</a>
					<li><a href="/mypage">마이페이지</a></li>
					<li><a href="/order_deliver">주문배송조회</a></li>
					<li><a href="/cart">장바구니</a></li>
					<li><a href="/interest">관심상품</a></li>
					<li><a href="/notice">공지사항</a></li>
				 </ul>
			 </div>
		 </div>
		 <div id="inner2">
		 	<div id="menu2">
			 <ul>
			 	<li><a href="/fixed">FIXED</a></li>
			 	<li><a href="#">HYBRID</a></li>
			 	<li><a href="#">ROAD</a></li>
			 	<li><a href="#">MTB</a></li>
			 	<li><a href="#">CLASSIC</a></li>
			 	<li><a href="#">MINI</a></li>
			 	<li><a href="#">FATBIKE</a></li>
			 	<li><a href="#">KIDS</a></li>
			 	<li><a href="#">E-BIKE</a></li>
			 	<li><a href="#">ACC / PARTS</a></li>
			 	<li><a href="/qna">QNA</a></li>
			 	<li><a href="/review">REVIEW</a></li>
			 	<li><a href="/brand">BRAND</a></li>
			 </ul>
			</div>
		 </div>
	</div>
	
</body>
</html>