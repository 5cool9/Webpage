<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <script>
        function showAlertAndGoBack(message) {
            alert(message);  // 팝업 띄우기
            history.back();  // 이전 페이지로 이동
        }
    </script>
</head>
<jsp:useBean id="bean" class="Member.MemberBean"/>
<jsp:useBean id="mMgr" class="Member.MemberMgr"/>

<jsp:setProperty property="*" name="bean"/>
<%
	boolean result = mMgr.insertMember(bean);
	if (result) {
%>
    <script>
        alert("회원가입 성공! 로그인 페이지로 이동합니다.");
        window.location.href = "Login.html";  // 로그인 페이지로 이동
    </script>
<%
	} else { 
%>
    <script>
        showAlertAndGoBack("회원가입 실패! 다시 시도해주세요.");
    </script>
<%
	}
%>
</html>