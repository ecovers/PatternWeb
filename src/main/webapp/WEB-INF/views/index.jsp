<%@page import="java.util.List"%>
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
        
        <% List<MainDTO> dto = (List<MainDTO>)session.getAttribute("test"); %>
        
        <%=dto %>
        
        <table border=1>
        <th>��ǰ�ֹ���ȣ</th>
        <th>�ֹ���ȣ</th>
        <th>�ֹ��Ͻ�</th>
        <th>�ֹ�����</th>
        <th>��ۼӼ�</th>
        <th>Ǯ�ʸ�Ʈ��(�ֹ�����)</th>
        <th>Ŭ���ӻ���</th>
        <th>��ǰ��ȣ</th>
        <th>��ǰ��</th>
        <th>�ɼ�����</th>
        <th>����</th>
        <th>�����ڸ�</th>
        <th>������ID</th>
        <th>�����θ�</th>
        <%for(int i = 0; i < dto.size(); i++){ %>
        <tr>
        <td><%=dto.get(i).getProd_order_num() %></td>
        <td><%=dto.get(i).getOrder_num() %></td>
        <td><%=dto.get(i).getOrder_date() %></td>
        <td><%=dto.get(i).getOrder_con() %></td>
        <td><%=dto.get(i).getShipping_atr() %></td>
        <td><%=dto.get(i).getFulfilment() %></td>
        <td><%=dto.get(i).getClaim_con() %></td>
        <td><%=dto.get(i).getProduct_num() %></td>
        <td><%=dto.get(i).getProduct_name()  %></td>
        <td><%=dto.get(i).getOption_info() %></td>
        <td><%=dto.get(i).getAmount() %></td>
        <td><%=dto.get(i).getCustomer_name() %></td>
        <td><%=dto.get(i).getCustomer_id() %></td>
        <td><%=dto.get(i).getReciever_name() %></td>
        </tr>
        <%} %>
        </table>
    </div>
</body>
</html>