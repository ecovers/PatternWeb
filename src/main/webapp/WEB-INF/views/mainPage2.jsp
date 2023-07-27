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
<title>창성성장기술개발사업_누빔패턴인식</title>

<link rel="stylesheet" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- <script type="text/javascript" src="js/camera.js" defer></script> -->
<%
AllDTO all = (AllDTO)session.getAttribute("test");

List<MainDTO> main = all.getMainDTO();

List<ShippingDTO> shipping = all.getShippingDTO(); %>


<script type="text/javascript">

let check_dic = {"성공" : "연결됨"};
<%  SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>

		
function callAjax(){		
	$.ajax({
		  type : 'post',
		  url : 'http://192.168.50.51:5000/',
		  data : check_dic,
		  dataType : 'json',
		  success : function(res) {
			//alert(res['data2']);
			var res1 = res['data1'];
			var res2 = res['data2'];	
			
			// 2번
			<% for(int i = 0; i < main.size(); i++){ %>
			
			var Product_name<%=i%> = res1[<%=i%>][1];
			var Product_number<%=i%> = res1[<%=i%>][2];
			var Product_location<%=i%> = res1[<%=i%>][4];
			var Product_ea<%=i%> = res1[<%=i%>][5];
			var Product_size<%=i%> = res1[<%=i%>][3];
			var Data_time<%=i%> = res1[<%=i%>][7];
			
			
			document.getElementById("name<%=i%>").innerHTML = Product_name<%=i%>;
			document.getElementById("number<%=i%>").innerHTML = Product_number<%=i %>;
			document.getElementById("location<%=i%>").innerHTML = Product_location<%=i%>;
			document.getElementById("ea<%=i%>").innerHTML = Product_ea<%=i %>;
			document.getElementById("size<%=i%>").innerHTML = Product_size<%=i%>;
			document.getElementById("date<%=i%>").innerHTML = Data_time<%=i %>;	
			
			<%} %>
			
			// 3번
			<% for(int i = 0; i < shipping.size(); i++){ %>
			
			var sProduct_name<%=i%> = res2[<%=i%>][0];
			var sProduct_size<%=i%> = res2[<%=i%>][1];
			var sProduct_ea<%=i%> = res2[<%=i%>][2];
			var sShipment_ea<%=i%> = res2[<%=i%>][3];
			var sCheck_ea<%=i%> = res2[<%=i%>][4];
			var sPass_ea<%=i%> = res2[<%=i%>][5];
			var sPass_rate<%=i%> = res2[<%=i%>][6];
			var sError_list<%=i%> = res2[<%=i%>][7];
			
			document.getElementById("sName<%=i%>").innerHTML = sProduct_name<%=i%>;
			document.getElementById("sSize<%=i%>").innerHTML = sProduct_size<%=i %>;
			document.getElementById("sProduct<%=i%>").innerHTML = sProduct_ea<%=i%>;
			document.getElementById("sShipment<%=i%>").innerHTML = sShipment_ea<%=i %>;
			document.getElementById("sCheck<%=i%>").innerHTML = sCheck_ea<%=i%>;
			document.getElementById("sPass<%=i%>").innerHTML = sPass_ea<%=i %>;
			document.getElementById("sRate<%=i%>").innerHTML = sPass_rate<%=i %>;	
			document.getElementById("sList<%=i%>").innerHTML = sError_list<%=i %>;	
			
			<%} %>
			
		  },
		  error : function() {
		  	//alert('요청 실패쓰');
		  }
		})
		
}

callAjax()


setInterval(callAjax, 1000);

/* var page_header   = 'header.html';
var page_footer   = 'footer.html';
var header_div = document.getElementById('header');
var footer_div = document.getElementById('footer');

function header_footer_html(){
    $(header_div).load(page_header, function() {});
    $(footer_div).load(page_footer, function() {});
}

header_footer_html();

alert("다불러옴"); */
</script>
	

</head>
<body>
	

	<%@include file = "header.jsp" %>
	
	<%-- <jsp:include page="header.html"/> --%>
	
	<!-- <div id="main">
    
  </div> -->
  
<!--   <script >
  
  $(document).ready(function(){
	$("#header").load("header.html");

});

 
  
</script> -->


<!-- <link rel="import" href="header.jsp"> -->

<!-- 1번  -->
<iframe src="http://192.168.50.49:5000" style="width:48%; height:55%">대체 내용</iframe> 

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

	<!-- 3번  -->
	<div id = "no3">
		<p style="text-align: center;">출하내역(제품 이름을 제외한 나머지 임시 데이터)</p>
		<table class="table" border="1" style="text-align: center;">
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
			    <td id = sName<%=i %>></td>
			    <td id = sSize<%=i %>></td>
			    <td id = sProduct<%=i %>></td>
			    <td id = sShipment<%=i %>></td>
			    <td id = sCheck<%=i %>></td>
			    <td id = sPass<%=i %>></td>
			    <td id = sRate<%=i %>></td>
			    <td id = sList<%=i %>></td>
			</tr>
			<%} %>

		</table>

	</div>
	
	
	<%@include file = "Footer.jsp" %>
	
</body>
</html>