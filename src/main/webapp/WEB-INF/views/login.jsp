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
	<div id="loginWrap">
    <div class="page-body">
       	   <div class="mlog-sign">
	    	   <form name="loginform" id="loginform" action="loginpro.php" method="post"><input type="hidden" name="url" value="/member/join.php">
                <div class="mlog">
                    <fieldset>
                        <legend>member login</legend>
                        <ul class="frm-list">
                            <li class="id"><label><span class="name">아이디</span><span><input type="text" id="id" name="id" maxlength="20" onkeypress="javascript:if(event.keyCode == 13) { loginch() }" class="MS_login_id" value=""></span></label></li>
                            <li class="id"><label><span class="name">비밀번호</span><span><input type="password" id="member_passwd" name="passwd" maxlength="20" onkeypress="javascript:if(event.keyCode == 13) { loginch() }" value="" class="MS_login_pw" style="margin-left:10px;"></span></label></li>
                        </ul>
                        <p class="buttonlogin"><span><a href="javascript:loginch();" class="btnlogin">LOGIN</a></span></p>
                    </fieldset>
                </div>


                <div class="sign">
                    <p class="msg">- 회원가입을 하시면 더 많은 혜택을 받으실 수 있습니다.</p>
                    <p class="buttonlogin1"><span><a href="/member/join.php" class="btnlogin1">JOIN US</a></span></p>
                    <p class="msg"></p>
                    <p class="msg"></p>
                    <p class="msg"></p>
                    <p class="msg">- 아이디 또는 비밀번호를 잊어버렸나요!</p>
                    <p class="buttonlogin1"><span><a href="/member/findid.php" class="btnlogin1">ID SEARCH</a></span></p>
					<p class="buttonlogin1"><span><a href="/member/findpasswd.php" class="btnlogin1">PW SEARCH</a></span></p>

                </div>
           	</form>
           </div>
            <!-- .mlog-sign -->
       
       </div>
    <!-- .page-body -->
</div>
	</div>
</div>

<%@include file="Footer.jsp"%>
</body>
</html>