<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고객센터 글작성</title>

<!--기본 css-->
<!-- <link rel="stylesheet" href="../resources/css/reset.css"> -->
<link rel="stylesheet" href="../resources/css/normalize.css">
<link rel="stylesheet" href="../resources/css/main02.css">
<link rel="stylesheet" href="../resources/css/board.css">
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
	
	//목록 버튼
	$(".btn-default").on("click", function(){
	location.href = "list";
	});
	
	//수정 버튼
	$(".btn-primary").on("click", function(){
	location.href = "${path}update?seq=${dao.seq}";
	});
	
	//삭제 버튼
	$(".btn-danger").on("click", function(){
		if(confirm("삭제하시겠습니까?")){
			document.Board.action="${path}/delete";
			document.Board.submit();
		}
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
	
	<!-- 글쓰기 화면 -->
	
	<div class="bdy">
		<div class="container">
			<form name="Board" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">제목</label>
					<input type="text" class="form-control" name="title" id="exampleInputEmail1" value='<c:out value="${dao.title}"/>'>
				</div>
				<div class="form-group">
				  <label for="exampleInputEmail1">작성자</label>
				  <input type="text" class="form-control" name="writer"  id="exampleInputEmail1" value='<c:out value="${dao.writer}"/>'>
				</div>
				<div class="form-group">
				  <label for="exampleInputPassword1">내용</label>
				  <textarea rows="30" cols="10" class="form-control" name="content" id="exampleInputPassword1" ><c:out value="${dao.content}" /></textarea>
				</div>
				<input type="hidden" name="seq" value='<c:out value="${dao.seq}"/>'>
					<button type="button" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-danger">삭제</button>
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