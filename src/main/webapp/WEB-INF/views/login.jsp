<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="stylesheet" href="../resources/css/normalize.css">
<!--기본 css-->
<!-- <link rel="stylesheet" href="../resources/css/reset.css"> -->
<link rel="stylesheet" href="../resources/css/main02.css?ver=1">
<link rel="stylesheet" href="../resources/css/button.css">
<!--기본 js-->
<script src="../resources/js/modernizr.custom.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="../resources/js/menu.js"></script>
<script src="../resources/js/menuscroll.js"></script>

<!-- script -->
<script type="text/javascript">
$(document).ready(function(){
	
	//alert창
	$('.btn-primary').click(function(){
		if($.trim($('#id').val())==''){
			alert("아이디를 입력해주세요");
			$('#id').focus();
			return false;
		}else if($.trim($('#password').val())==''){
			alert("비밀번호를 입력해주세요");
			$('#password').focus();
			return false;
		}
	})
	
	//회원가입창
	$(".btn-default").on("click", function(){
	location.href = "join";
	});
});
</script>
</head>
<body>
	<div id="headerWrap">
		<header>
			<h1>
				<a href="/"><img src="../resources/images2/logo-white.png" alt="메가박스"></a>
			</h1>
			<dl class="topMenuleft">
				<dd>
					<a href="#">VIP LOUNGE</a>
				</dd>
				<dd>
					<a href="#">멤버십</a>
				</dd>
				<dd>
					<a href="list">고객센터</a>
				</dd>
			</dl>
			<dl class="topMenuright">
				<dt></dt>
				<dd>
					<a href="login">로그인</a>
				</dd>
				<dd>
					<a href="join">회원가입</a>
				</dd>
				<dd>
					<a href="#">빠른예매</a>
				</dd>
			</dl>
		</header>
		<div id="headMenu">
			<div id="clickMenu">
				<a href="#"><img src="../resources/images2/ico-sitemap-white.png" alt="전체메뉴열기"></a> 
				<a href="#"><img src="../resources/images2/ico-search-white.png" alt="검색메뉴열기"></a> 
				<a href="login"><img src="../resources/images2/ico-mymega-white.png" alt="로그인"></a>
				<a href="#"><img src="../resources/images2/ico-schedule-white.png" alt="예매"></a>
			</div>
			<div id="mainMenu">
				<div id="mainMenuBtn">
					<ul class="mainMenuBtn">

					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="headerTop"></div>
	<hr />
	<div id="loginWrap">
		<div class="login">
			<div class="loginbox">
				<h1>로그인</h1>

				<form action="loginCk" method="post" name="">
					<p>
						<label for="" class=""> 아이디</label>
						<input type="text" id="id" name="id" placeholder="아이디 입력(6-20자)" value="${id}" /><br />
					</p>
					<p>
						<label for="" class=""> 비밀번호</label>
						<input type="password" id="password" name="password" placeholder="비밀번호 입력(8-20자)" value="${password}" /><br />
						<c:if test="${msg=='fail'}"><span style="font-size:12px; text-align:center; color: red;">존재하지 않는 아이디 또는 비밀번호가 틀립니다.</span></c:if>
					</p>
					<p class="btn">
						<button class="btn btn-primary" type="submit">로그인</button>&nbsp;&nbsp;&nbsp;	<!-- <input type="button" value="로그인" />  -->
						<button class="btn btn-default" type="button">회원가입</button>	<!-- <input type="button" value="회원가입" />  -->
					</p>
				</form>

			</div>
		</div>
	</div>
	<footer>
		<div class="footArea">
			<div class="foottext">
				<ul>
					<li>회사소개</li>
					<li>인재채용</li>
					<li>사회공헌</li>
					<li>제휴/광고/부대사업문의</li>
					<li>이용약관</li>
					<li>개인정보처리방침</li>
					<li>윤리경영</li>
				</ul>
				<p>
					<button class="footsearch">극장찾기</button>
				</p>
				<p>
					<img src="../resources/images2/logo-opacity.png" alt="logo">
				</p>
				<address>
					서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어) ARS 1544-0070<br /> <span>대표자명
						김진선 · 개인정보보호책임자 조상연 · 사업자등록번호 211-86-59478 · 통신판매업신고번호 제 833호</span><br />
					<span>COPYRIGHT © MegaboxJoongAng, Inc. All rights reserved</span>
				</address>
			</div>
		</div>
	</footer>
</body>
</html>