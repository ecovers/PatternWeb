<%@page import="com.example.demo.dto.MainDTO"%>
<%@page import="org.springframework.boot.web.servlet.server.Session"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <div>
        
        hello!
        <% MainDTO dto = (MainDTO)session.getAttribute("test"); 
        String name = dto.getProduct_name();%>
        
        
        <%=name %>
    </div>
</body>
</html>