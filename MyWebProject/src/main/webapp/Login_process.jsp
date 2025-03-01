<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("userId");
    String password = request.getParameter("password");

    boolean isValidUser = false;

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL JDBC 드라이버 로드
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mem", "root", "12345678");

        String sql = "SELECT * FROM member WHERE id = ? AND pwd = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId);
        pstmt.setString(2, password);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            isValidUser = true;
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }

    if (isValidUser) {
%>
    <script>
        alert("로그인 성공!");
        window.location.href = Choose_page1.html"; // 로그인 성공 시 이동할 페이지
    </script>
<%
    } else {
%>
    <script>
        alert("로그인 실패! 아이디 또는 비밀번호를 확인하세요.");
        history.back(); // 로그인 실패 시 이전 페이지로 이동
    </script>
<%
    }
%>
