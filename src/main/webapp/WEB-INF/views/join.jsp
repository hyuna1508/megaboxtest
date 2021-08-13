<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
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

//아이디 중복체크
function f_idck(){
	$.ajax({
		url:"idCk",
		type:"POST",
		dateType:"json",
		data:{"id":$("#id").val()},
		success:function(data){
			if(data==1){
				alert("존재하는 아이디입니다.");
				$(".btn-primary").attr("disabled","disabled"); //아이디 중복시 회원가입 버튼 비활성화
				return false;
			}else if(data==0){
				$("#idCk").attr("value","Y");
				alert("사용가능한 아이디입니다.");
				$(".btn-primary").removeAttr("disabled"); //신규 아이디일 경우 회원가입 버튼 비활성화x
			}
		}
	})
}
//비밀번호 중복체크
function check_pwd(){
	var pwd= document.getElementById("password").value;
	var pwdck= document.getElementById("passwordCk").value;
	var pwdmsg= document.getElementById("pwdmsg");
	//비밀번호 일치 확인
	if(pwd!='' && ckpwd!=''){
		if(pwd==pwdck){
			pwdmsg.innerHTML="비밀번호가 일치합니다."
        	pwdmsg.style.color="green";
            }
		else{
        	alert("비밀번호가 일치하지 않습니다.");
        	$('#passwordCk').focus();
        	return false;
        	}
		}
	}
	
//필수입력칸
$(document).ready(function(){
	
	$('.btn-primary').on('click', function(){
		if($('#id').val()==""){
			alert("아이디는 반드시 입력해야 합니다.");
			$('#id').focus();
			return false;
		}
		if($('#password').val()==""){
			alert("비밀번호는 반드시 입력해야합니다.");
			$('#password').focus();
			return false;
		}
		if($('#password').val() != $('#passwordCk').val()){
			alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요");
			$('').focus();
			return false;
		}
		if($('#name').val()==""){
			alert("이름은 반드시 입력해야합니다.");
			$('#name').focus();
			return false;
		}
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
	<div id="joinWrap">
		<div class="join">
			<div class="joinbox">
				<h1>회원가입</h1><br/><br/>
		        <form method="post" id="joinck" name="joinck" action="join" >
		            <p>
		                <label> 아이디 </label><br/>
		                <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" maxlength="20" />&nbsp;
		                <button type="button" id="idCk" class="btn btn-danger" name="idCk" onclick="f_idck()" value="N">중복확인</button><br/>
		            </p><br/>
		            <p>
		                <label> 비밀번호 </label><br/>
		                <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" maxlength="30" onclick="check_pwd()" /><br/>
		            </p><br/>
		            <p>
		                <label> 비밀번호 확인 </label><br/>
		                <input type="password" id="passwordCk" name="Ckpassword" placeholder="비밀번호를 입력하세요" maxlength="30" onclick="check_pwd()" /><br/>
		                <span id="pwdmsg" style="font-size:9px; text-align:center;"></span><br/> <!-- 비밀번호일치체크 -->
		            </p>
		            <p>
		                <label> 이름 </label><br/>
		                <input type="text" id="name" name="name" placeholder="이름을 입력하세요" /><br/>
		            </p><br/>
		            <p>
		                <label> 성별 </label><br/>
		                	<select id="gender" name="gender" style="width:50px;">
								<option value="m">남</option>
								<option value="w">여</option>
						</select>
		            </p><br/>
		            <p>
		                <label> 주소 </label><br/>
		                <input type="text" id="address" name="address" placeholder="주소를 입력하세요" style="width:300px;" /><br/>
		            </p><br/>
		            <p>
		                <label> 이메일 </label><br/>
		                <input type="email" id="email" name="email" placeholder="이메일을 입력하세요"/><br/>
		            </p><br/>
		            
		                <button class="btn btn-primary" type="submit" disabled="disabled" >회원가입</button><br/> <!-- disabled: 아이디 중복확인 해야 가입버튼 활성화됨-->
		            
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