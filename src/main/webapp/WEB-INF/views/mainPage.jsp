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
<title>â�����������߻��_���������ν�</title>
<%
AllDTO all = (AllDTO)session.getAttribute("test");

List<MainDTO> main = all.getMainDTO();

List<ShippingDTO> shipping = all.getShippingDTO();

%>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<!-- 1��  -->
	<div id ="no1" >�ǽð� ī�޶�</div>

	<!-- 2��  -->
	<div id = "no2">
		<p style="text-align: center;">��ǰ��ġ �� ���� ���̺� (��ǰ �̸� ������ ������ ��� �ӽ� ������ )</p>
		<table class="table" border="1" style="text-align: center; margin-left: 0.5%;">
			<th style="width: 400px;">��ǰ �̸�</th>
			<th style="width: 100px;">��ǰ ��ȣ</th>
			<th style="width: 100px;">��ġ</th>
			<th style="width: 100px;">����(��)</th>
			<th style="width: 100px;">�԰�</th>
			<th style="width: 200px;">��ǰ ��� �ð�</th>

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

	<!-- 3��  -->
	<div id = "no3">
		<p style="text-align: center;">���ϳ���(��ǰ �̸��� ������ ������ �ӽ� ������)</p>
		<table class="table" border="1" style="text-align: center; margin-left: 3.5%;">
			<th style="width: 400px;">��ǰ �̸�</th>
			<th style="width: 100px;">�԰�</th>
			<th style="width: 100px;">����</th>
			<th style="width: 100px;">���ϼ���</th>
			<th style="width: 100px;">�˻����</th>
			<th style="width: 100px;">�հݼ���</th>
			<th style="width: 100px;">�հݷ�</th>
			<th style="width: 800px;">�ҷ����� �� ��ġ����</th>
			
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