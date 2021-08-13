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
<title>고객센터</title>
<link rel="stylesheet" href="../resources/css/normalize.css">
<!--기본 css-->
<!-- <link rel="stylesheet" href="../resources/css/reset.css"> -->
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
<!-- script -->
<script type="text/javascript">
$(document).ready(function(){
	
	//글쓰기 버튼
	$(".btn-primary").on("click", function(){
		location.href = "writer";
		});
	
	//페이징
	var actionForm= $("#actionForm");
	$(".paginate_button a").on("click", function(e){
		e.preventDefault();
		console.log("click");
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
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
					<sec:authorize access="inAnonymous()">
					<a href="login">로그인</a>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<a href="logout">로그아웃</a>
					</sec:authorize>
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
	
	<div class="headerTop"></div>
	<hr />
	
	<div id="bdy">
		<div class="container">
		<h1>고객센터</h1><br/><br/><br/>
		<button type="button" class="btn btn-primary">글쓰기</button>
			<div class="list">
				<table class="table table-hover">
				 <thead>
				   <tr>
				      <th>글번호</th>
				      <th>제목</th>
				      <th>작성자</th>
				      <th>작성일</th>
				      <th>조회수</th>
				   </tr>
				 </thead>
				 <tbody>

				   <c:forEach items="${list}" var="board">
		 				<tr>
		 					<td><c:out value="${board.seq }" /></td>
		 					<td><a href='${path}/view?seq=${board.seq }'>
		 					<c:out value="${board.title }" /></a></td>
		 					<td><c:out value="${board.writer }" /></td>
		 					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></td>
		 					<td><c:out value="${board.cnt }" /></td>
		 				</tr>
		 				</c:forEach>
				 </tbody> 
				</table>
				
				<!-- 페이징 처리 -->
				<div class="pull-rignt">
					<ul class="pagination">
						<c:if test="${pageMaker.prev }">
							<li class="paginate_button previous"><a class="page-link" href="${pageMaker.startPage -1 }">이전</a></li>
						</c:if>		
						
						<c:forEach var="num" begin="${pageMaker.startPage}" end ="${pageMaker.endPage }">
							<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""} "><a class="page-link"href="${num }">${num }</a></li>
						</c:forEach>
						
						<c:if test="${pageMaker.next }">
							<li class="paginate_button previous"><a href="${pageMaker.endPage +1 }">다음</a></li>
						</c:if>	

						</ul>
				</div>
				<form action="list" id="actionForm" method="get" >
					<input type="hidden" name="pageNum" value="${paegeMaker.cri.pageNum }">
					<input type="hidden" name="amount" value="${paegeMaker.cri.amount }">
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