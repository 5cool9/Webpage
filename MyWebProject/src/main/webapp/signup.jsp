<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<link rel="stylesheet" href="signup_style.css">
	<title> 회원 가입 </title>
</head>
<body>

<div class="signup-container">
	<h2>회원 가입</h2>
	
	<form action="signup_process.jsp" name="user_info" method="post">
		<fieldset>
			<legend>회원 가입</legend>
			
			<label for="id">아이디:</label>
			<input type="text" name="id" id="id" required>
			
			<label for="pwd">비밀번호:</label>
			<input type="password" name="pwd" id="pwd" required>
			
			<label for="name">이름:</label>
			<input type="text" name="name" id="name" required>
			
			<label for="birthday">생년월일:</label>
			<input type="text" name="birthday" id="birthday" required>
			
			<label for="email">이메일:</label>
			<input type="email" name="email" id="email" required>
			
			<hr>

			<button type="submit">가입하기</button>
			<button type="reset">다시작성</button>
			<button type="button" class="back-button" onclick="goToLogin()">뒤로가기</button>
		</fieldset>
	</form>
</div>

<script>
  function goToLogin() {
    window.location.href = "Login.html"; // 로그인 페이지로 이동
  }
</script>

</body>
</html>