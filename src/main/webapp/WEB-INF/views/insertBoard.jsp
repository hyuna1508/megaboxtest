<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고객센터 글작성</title>
<link rel="stylesheet" href="../resources/css/normalize.css">
<!--기본 css-->
<!-- <link rel="stylesheet" href="../resources/css/reset.css"> -->
<link rel="stylesheet" href="../resources/css/main02.css">
<link rel="stylesheet" href="../resources/css/board.css?ver=1">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">

<!--기본 js-->
<script src="../resources/js/modernizr.custom.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="../resources/js/menu.js"></script>
<script src="../resources/js/menuscroll.js"></script>
<script src="../resources/js/insertboard.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	//alert창
	$('.btn-primary').on('click', function(){
		if($('.title').val()==""){
			alert("제목을 입력해주세요.");
			$('.title').focus();
			return false;
		}
		if($('.writer').val()==""){
			alert("작성자명을 입력해주세요.");
			$('.writer').focus();
			return false;
		}
		if($('.content').val()==""){
			alert("내용을 입력해주세요.");
			$('.content').focus();
			return false;
		}
	});
	
	//목록 버튼
	$(".btn-default").on("click", function(){
	location.href = "list";
	});

	
});

</script>
<style>
.writebox {
	margin: O auto;
	border: 1px solid #000;
	width: 800px;
	height: 110px;
}
</style>
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
					<a href="#">고객센터</a>
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
	
	<!-- 글쓰기 화면 -->
	<div class="bdy">
		<div class="container">
			<form action="insertBoard" name="Board" method="post">
					<div class="form-group">
					  <label for="exampleInputEmail1">제목</label>
					  <input type="text" class="form-control title" name='title' id="exampleInputEmail1" placeholder="제목을 입력하세요">
					</div>
					<div class="form-group">
					  <label for="exampleInputEmail1">작성자</label>
					  <input type="text" class="form-control writer" name='writer' id="exampleInputEmail1" placeholder="작성자명을 입력하세요">
					</div>
					<div class="form-group">
						  <label for="exampleInputPassword1">내용</label>
						  <textarea rows="30" cols="10" class="form-control content" name='content' id="exampleInputPassword1" placeholder="내용을 입력하세요"> </textarea>
						  <!-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="암호"> -->
					</div>
					
				  <button type="submit" class="btn btn-primary">등록</button>
				  <button type="button" class="btn btn-default">목록으로</button><br/><br/>
			</form>
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