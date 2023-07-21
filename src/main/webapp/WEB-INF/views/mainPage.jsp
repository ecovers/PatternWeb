<%@page import="com.example.demo.mapper.MainMapper"%>
<%@page import="java.text.SimpleDateFormat"%>
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

<link rel="stylesheet" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
		
	let check_dic = {"����" : "�����"};
	<%  SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>
	
			$.ajax({
				  type : 'post',
				  url : 'http://192.168.50.51:5000/',
				  data : check_dic,
				  dataType : 'json',
				  success : function(res) {
					//alert("�����");
					<%
					
					
					AllDTO all = (AllDTO)session.getAttribute("test");

					List<MainDTO> main = all.getMainDTO();

					List<ShippingDTO> shipping = all.getShippingDTO();

				
					for(int i = 0; i < main.size(); i++){ %>
					
					var Product_name<%=i%> = "<%=main.get(i).getProduct_name() %>";
					var Product_number<%=i%> = <%=main.get(i).getProduct_number() %>;
					var Product_location<%=i%> = <%=main.get(i).getProduct_location() %>;
					var Product_ea<%=i%> = <%=main.get(i).getProduct_ea() %>;
					var Product_size<%=i%> = "<%=main.get(i).getProduct_size() %>";
					var Data_time<%=i%> = "<%=format.format(main.get(i).getData_time()) %>";
					
					
					document.getElementById("name<%=i%>").innerHTML = Product_name<%=i%>;
					document.getElementById("number<%=i%>").innerHTML = Product_number<%=i %>;
					document.getElementById("location<%=i%>").innerHTML = Product_location<%=i%>;
					document.getElementById("ea<%=i%>").innerHTML = Product_ea<%=i %>;
					document.getElementById("size<%=i%>").innerHTML = Product_size<%=i%>;
					document.getElementById("date<%=i%>").innerHTML = Data_time<%=i %>;	
					
					<%} %>
				  },
				  error : function() {
				  	alert('��û ���о�');
				  }
				})	

	</script>

</head>
<body>
	<!-- 1��  -->
	<div id ="no1" >�ǽð� ī�޶�
	</div>

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

			<% 
			for(int i = 0; i < main.size(); i++){ %>
			<tr>
			    <td id = name<%=i %>></td>
			    <td id = number<%=i %>></td>
			    <td id = location<%=i %>></td>
			    <td id = ea<%=i %>></td>
			    <td id = size<%=i %>></td>
			    <td id = date<%=i %>></td>
			</tr>
			<%} %>
		</table>
	</div>

	<!-- 3��  -->
	<div id = "no3">
		<p style="text-align: center;">���ϳ���(��ǰ �̸��� ������ ������ �ӽ� ������)</p>
		<table class="table" border="1" style="text-align: center;">
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