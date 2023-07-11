<%@page import="java.util.List"%>
<%@page import="com.example.demo.dto.MainDTO"%>
<%@page import="org.springframework.boot.web.servlet.server.Session"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>창성성장기술개발사업_누빔패턴인식</title>
<% List<MainDTO> dto = (List<MainDTO>)session.getAttribute("test"); %>
</head>
<body>
<div style="float:left;width:60%;background:red;height:50%">실시간 카메라</div>
<div style="float:right;width:40%;height:50%;overflow:auto">
	<p style="text-align:center;">제품위치 및 수량 테이블 (제품 이름 제외한 나머지 모두 임시 데이터 )</p>
	<table border="1" style="text-align:center;margin-left:0.5%;">
			<th style="width:400px;">제품 이름</th>
			<th style="width:100px;">제품 번호</th>
			<th style="width:100px;">위치</th>
			<th style="width:100px;">수량(개)</th>
			<th style="width:100px;">규격</th>
			<th style="width:200px;">제품 등록 시간</th>

		
	</table>
</div>
<div style="float:left;width:100%;height:50%;overflow:auto">
	<p style="text-align:center;">출하내역(제품 이름을 제외한 나머지 임시 데이터)</p>
		<table border="1" style="text-align:center;margin-left:3.5%;">
			<th style="width:400px;">제품 이름</th>
			<th style="width:100px;">규격</th>
			<th style="width:100px;">단위</th>
			<th style="width:100px;">출하수량</th>
			<th style="width:100px;">검사수량</th>
			<th style="width:100px;">합격수량</th>
			<th style="width:100px;">합격률</th>
			<th style="width:800px;">불량내역 및 조치사항</th>
			
		
	</table>
	
		<%--  <div>
        3번 출하상황
        <table border=1>
        <th>상품주문번호</th>
        <th>주문번호</th>
        <th>주문일시</th>
        <th>주문상태</th>
        <th>배송속성</th>
        <th>풀필먼트사(주문기준)</th>
        <th>클레임상태</th>
        <th>상품번호</th>
        <th>상품명</th>
        <th>옵션정보</th>
        <th>수량</th>
        <th>구매자명</th>
        <th>구매자ID</th>
        <th>수취인명</th>
        <%for(int i = 0; i < dto.size(); i++){ %>
        <tr>
        <td><%=dto.get(i).getId() %></td>
        <td><%=dto.get(i).getProduct_name() %></td>
        <td><%=dto.get(i).getProduct_number() %></td>
        <td><%=dto.get(i).getProdduct_size() %></td>
        <td><%=dto.get(i).getProduct_location() %></td>
        <td><%=dto.get(i).getProduct_ea() %></td>
        <td><%=dto.get(i).getProduct_unit() %></td>
        <td><%=dto.get(i).getData_time() %></td>
        </tr>
        <%} %>
        </table>
    </div> --%>
</div>
</body>
</html>