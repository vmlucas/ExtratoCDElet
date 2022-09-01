<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%@ page contentType="text/html;charset=windows-1252"%>
<%@page import="extrato.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>untitled</title>
</head>
<body>
<table border="1">
  <tr>
    <td><b>Inscrição</b></td>
    <td><b>Nome</b></td>
    <td><b>Reserva Migração</b></td>
    <td><b>Cotas Migradas</b></td>
    <td><b>Total cotas Participantes</b></td>
    <td><b>Total cotas Patrocinadora</b></td>
    <td><b>Total cotas Adicionais</b></td>
    <td><b>Total Conta Benef Risco</b></td>
    <td><b>Total Cotas Benef Risco</b></td>
  </tr>
  <logic:iterate id="extrato" name="listaExtrato" type="ExtratoCD">
    <tr>
      <td><%=extrato.getNumEletros() %></td>
      <td><%=extrato.getNome() %></td>
      <td>R$ <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2">
                  <%=extrato.getSaldoMigracao() %>                 </fmt:formatNumber> </td>
      <td><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getQtdCotasMigradas() %>                </fmt:formatNumber></td>            
      <td><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
          <%=extrato.getTotalCotaPartic() %></fmt:formatNumber></td>
      <td><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
          <%=extrato.getTotalCotaPat() %> </fmt:formatNumber></td>
      <td><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
          <%=extrato.getTotalCotaExtra() %> </fmt:formatNumber></td>
      <td><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
          <%=extrato.getTotalContaBenefRisco() %> </fmt:formatNumber></td> 
      <td><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
          <%=extrato.getTotalCotaContaBenefRisco() %> </fmt:formatNumber></td>      
    </tr>
  </logic:iterate>
</table>
</body>
</html>

