<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메가박스</title>
<link rel="stylesheet" href="../resources/css/normalize.css">
<!--기본 css-->
<!-- <link rel="stylesheet" href="./css/reset.css"> -->
<link rel="stylesheet" href="../resources/css/main02.css">
<!--기본 js-->
<script src="../resources/js/modernizr.custom.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="../resources/js/menu.js"></script>
<script src="../resources/js/menuscroll.js"></script>
<script src="../resources/js/mvposter.js"></script>
<script src="../resources/js/banner01.js"></script>
<!-- <script src="../resources/js/banner02.js"></script> -->


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
				<a href="#"><img src="../resources/images2/ico-search-white.png" alt="검색"></a> 
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
	<div class="boxoffice">
		<h2 class="">박스오피스</h2>
		<p>더 많은 영화 보기</p>
		<div class="mvposter">
			<dl class="poster1">
				<dd>
					<a href=""><img src="../resources/images2/boxoffice01.jpg" alt="테넛"></a>
					<p>
						<strong>당신에게 줄 건 한 단어 ‘테넷’ 이해하지 말고 느껴라!<br />
						<br />시간의 흐름을 뒤집는 인버전을 통해 현재와 미래를 오가며 세상을 파괴하려는 사토르(케네스 브래너)를 막기
							위해 투입된 작전의 주도자(존 데이비드 워싱턴). 인버전에 대한 정보를 가진 닐(로버트 패틴슨)과 미술품 감정사이자
							사토르에 대한 복수심이 가득한 그의 아내 캣(엘리자베스 데비키)과 협력해 미래의 공격에 맞서 제3차 세계대전을 막아야
							한다!
						</strong>
					</p>
				</dd>
				<button class="like">Button</button>
				<button class="resereve">예매</button>
			</dl>
			<dl class="poster2">
				<dd>
					<a href=""><img src="../resources/images2/boxoffice02.jpg" alt="뮬란"></a>
					<p>
						<strong>좋은 집안과 인연을 맺어 가문을 빛내길 바라는 부모님의 뜻에 따라 본연의 모습을 억누르고
							성장한다.</strong>
					</p>
				</dd>
				<button class="like">Button</button>
				<button class="resereve">예매</button>
			</dl>
			<dl class="poster3">
				<dd>
					<a href=""><img src="../resources/images2/boxoffice03.jpg" alt="뉴 무던트"></a>
					<p>
						<strong>십대의 돌연변이 레인(메이지 윌리암스 분)과 일리야나(안야 테일러조이 분), 샘(찰리
							히튼 분), 로베르토(헨리 자가 분)는 비밀 시설에 수용되어 심리 상태를 감시 받는다. 이들이 사회에는 물론
							스스로에게도 위험한 존재라고 생각하는 닥터 레예스(앨리스 브라가 분)는 이들에게 돌연변이 능력을 통제하는 방법을
							가르쳐주고자 애쓴다.</strong>
					</p>
				</dd>
				<button class="like">Button</button>
				<button class="resereve">예매</button>
			</dl>
			<dl class="poster4">
				<dd>
					<a href=""><img src="../resources/images2/boxoffice04.jpg"
						alt="2020 빈 필 하모닉 연주회"></a>
					<p>
						<strong>좋은 집안과 인연을 맺어 가문을 빛내길 바라는 부모님의 뜻에 따라 본연의 모습을 억누르고
							성장한다.</strong>
					</p>
				</dd>
				<button class="like">Button</button>
				<button class="resereve">예매</button>
			</dl>
		</div>
		<div class="service">
			<dl>
				<dd>
					<input type="text" id="srch" name="searchMovie"
						placeholder="영화명을 입력해주세요" style="background-color: transparent;"><img
						src="../resources/images2/ico-search-white.png" alt=""></a>
				</dd>
				<dd>
					<a href="#"><img src="../resources/images2/ico-schedule-main.png" alt="">상영시간표</a>
				</dd>
				<dd>
					<a href="#"><img src="../resources/images2/ico-boxoffice-main.png" alt="">박스오피스</a>
				</dd>
				<dd>
					<a href="#"><img src="../resources/images2/ico-quick-reserve-main.png"
						alt="">빠른예매</a>
				</dd>
			</dl>
		</div>
	</div>
	<hr />
	<div id="bodyWrap">
		<div class="section1">
			<div class="newBenefit">
				<h3>혜택</h3>
				<ul class="benefit_btn">
					<li class="on"><a href="">button</a></li>
					<li><a href="">button</a></li>
					<li><a href="">button</a></li>
				</ul>
				<ul class="benefit">
					<li>
						<ul>
							<li><a href="#"><img src="../resources/images2/benefit01_01.jpg"
									alt="오리지널티켓"></a></li>
							<li><a href="#"><img src="../resources/images2/benefit01.jpg"
									alt="오리지널티켓"></a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="#"><img src="../resources/images2/benefit02_01.jpg"
									alt="팡콘"></a></li>
							<li><a href="#"><img src="../resources/images2/benefit02.jpg"
									alt="팡콘"></a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="#"><img src="../resources/images2/benefit03_01.png"
									alt="20주년 회원가입"></a></li>
							<li><a href="#"><img src="../resources/images2/benefit03.jpg"
									alt="20주년 회원가입"></a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="adver">
				<a href=""><img src="../resources/images2/adver.jpg" alt=""></a>
			</div>
			<div class="event">
				<ul class="eventt">
					<li>
						<ul>
							<li><a href="#"><img src="../resources/images2/event01.jpg"
									alt="신규가입 이벤트"></a></li>
							<!-- <li><a href="#"><img src="../resources/images2/event02.jpg" alt="쿠폰패스 런칭 이벤트"></a></li> -->
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="section2">
			<div class="subMenu">
				<dl class="vip">
					<dd>
						<a href="#"><img src="../resources/images2/ico-vip-main.png"
							alt="VIP LOUNGE" /></a>
					</dd>
					<dd>
						<a href="#">VIP LOUNGE</a>
					</dd>
				</dl>
				<dl class="merbership">
					<dd>
						<a href="#"><img src="../resources/images2/ico-membership-main.png"
							alt="멤버십" /></a>
					</dd>
					<dd>
						<a href="#">멤버십</a>
					</dd>
				</dl>
				<dl class="card">
					<dd>
						<a href="#"><img src="../resources/images2/ico-card-main.png"
							alt="할인카드안내" /></a>
					</dd>
					<dd>
						<a href="#">할인카드안내</a>
					</dd>
				</dl>
				<dl class="subevent">
					<dd>
						<a href="#"><img src="../resources/images2/ico-event-main.png" alt="이벤트" /></a>
					</dd>
					<dd>
						<a href="#">이벤트</a>
					</dd>
				</dl>
				<dl class="store">
					<dd>
						<a href="#"><img src="../resources/images2/ico-store-main.png" alt="스토어" /></a>
					</dd>
					<dd>
						<a href="#">스토어</a>
					</dd>
				</dl>
			</div>
		</div>
		<!-- <div class="section3">

        </div> -->
		<div class="section4">
			<!-- <div class="guide">
                <dl class="boutique">
                    <dd><a href="#"><img src="../resources/images2/bg-main-megainfo-boutique.png" alt="boutique"></a></dd>
                </dl>
                <dl class="comfort">
                    <dd><a href="#"><img src="../resources/images2/bg-main-megainfo-comfort.png" alt="comfort"></a></dd>
                </dl>
                <dl class="mx">
                    <dd><a href="#"><img src="../resources/images2/bg-main-megainfo-mx.png" alt="mx"></a></dd>
                </dl>
                <dl class="kids">
                    <dd><a href="#"><img src="../resources/images2/bg-main-megainfo-kids.png" alt="kids"></a></dd>
                </dl>
            </div> -->
			<div class="qnaMenu">
				<dl class="customer">
					<dd>
						<a href="#"><img src="../resources/images2/ico-main-customer.png"
							alt="고객센터" /></a>
					</dd>
					<dd>
						<a href="#">고객센터</a>
					</dd>
				</dl>
				<dl class="faq">
					<dd>
						<a href="#"><img src="../resources/images2/ico-main-faq.png"
							alt="자주 묻는 질문" /></a>
					</dd>
					<dd>
						<a href="#">자주 묻는 질문</a>
					</dd>
				</dl>
				<dl class="qna">
					<dd>
						<a href="#"><img src="../resources/images2/ico-main-qna.png" alt="1:1문의" /></a>
					</dd>
					<dd>
						<a href="#">1:1문의</a>
					</dd>
				</dl>
				<dl class="group">
					<dd>
						<a href="#"><img src="../resources/images2/ico-main-group.png"
							alt="단체/대관문" /></a>
					</dd>
					<dd>
						<a href="#">단체/대관문의</a>
					</dd>
				</dl>
				<dl class="lost">
					<dd>
						<a href="#"><img src="../resources/images2/ico-main-lost.png"
							alt="분실물 문의/접수" /></a>
					</dd>
					<dd>
						<a href="#">분실물 문의/접수</a>
					</dd>
				</dl>
				<dl class="boutique">
					<dd>
						<a href="#"><img src="../resources/images2/ico-main-boutique.png"
							alt="더 부티크 프라이빗 예매" /></a>
					</dd>
					<dd>
						<a href="#">더 부티크 프라이빗 예매</a>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<hr />
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