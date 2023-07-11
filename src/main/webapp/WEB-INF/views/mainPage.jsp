<%@page import="com.example.demo.dto.ShippingDTO"%>
<%@page import="com.example.demo.dto.AllDTO"%>
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
<%
AllDTO all = (AllDTO)session.getAttribute("test");

List<MainDTO> main = all.getMainDTO();

List<ShippingDTO> shipping = all.getShippingDTO();

%>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<!-- 1번  -->
	<div id ="no1" >실시간 카메라</div>

	<!-- 2번  -->
	<div id = "no2">
		<p style="text-align: center;">제품위치 및 수량 테이블 (제품 이름 제외한 나머지 모두 임시 데이터 )</p>
		<table class="table" border="1" style="text-align: center; margin-left: 0.5%;">
			<th style="width: 400px;">제품 이름</th>
			<th style="width: 100px;">제품 번호</th>
			<th style="width: 100px;">위치</th>
			<th style="width: 100px;">수량(개)</th>
			<th style="width: 100px;">규격</th>
			<th style="width: 200px;">제품 등록 시간</th>

			<%for(int i = 0; i < main.size(); i++){ %>
			<tr>
			    <td><%=main.get(i).getProduct_name() %></td>
			    <td><%=main.get(i).getProduct_number() %></td>
			    <td><%=main.get(i).getProduct_location() %></td>
			    <td><%=main.get(i).getProduct_ea() %></td>
			    <td><%=main.get(i).getProduct_size() %></td>
			    <td><%=main.get(i).getData_time() %></td>
			</tr>
			<%} %>
		</table>
	</div>

	<!-- 3번  -->
	<div id = "no3">
		<p style="text-align: center;">출하내역(제품 이름을 제외한 나머지 임시 데이터)</p>
		<table class="table" border="1" style="text-align: center; margin-left: 3.5%;">
			<th style="width: 400px;">제품 이름</th>
			<th style="width: 100px;">규격</th>
			<th style="width: 100px;">단위</th>
			<th style="width: 100px;">출하수량</th>
			<th style="width: 100px;">검사수량</th>
			<th style="width: 100px;">합격수량</th>
			<th style="width: 100px;">합격률</th>
			<th style="width: 800px;">불량내역 및 조치사항</th>
			
			<%for(int i = 0; i < shipping.size(); i++){ %>
			<tr>
			    <td><%=shipping.get(i).getProduct_name() %></td>
			    <td><%=shipping.get(i).getProduct_size() %></td>
			    <td><%=shipping.get(i).getProduct_ea() %></td>
			    <td><%=shipping.get(i).getShipment_ea() %></td>
			    <td><%=shipping.get(i).getCheck_ea() %></td>
			    <td><%=shipping.get(i).getPass_ea() %></td>
			    <td><%=shipping.get(i).getPass_rate() %></td>
			    <td><%=shipping.get(i).getError_list() %></td>
			</tr>
			<%} %>


		</table>

	</div>
</body>
</html>