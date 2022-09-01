<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%@ page contentType="text/html;charset=windows-1252"%>
<%@page import="com.eletros.benef.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>untitled</title>

</head>
<body>
<table>
  <tr>
    <td>Inscrição</td>
    <td>data migração</td>
    <td>Reserva migrada CD Puro</td>
    <td>Reserva migrada CD Saldado</td>
    <td>Total quotas migrada CD Puro</td>
    <td>Total quotas migrada CD Saldado</td>
    <td>Valor BPDS</td>
    <td>Data BPDS</td>
  </tr>
  <logic:iterate id="part" name="listaBPDS" type="ParticipanteCDElet">
    <tr>
      <td><%=part.getNumEletros() %></td>
      <td><%=part.getDataMigracao() %></td>
      <td>
          <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
             <%=part.getReservaMigracao() %></fmt:formatNumber></td>
      <td>
          <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
             <%=part.getReservaBPDSMigracao() %></fmt:formatNumber></td>
      <td>
          <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
             <%=part.getQtdCotasMigradas() %></fmt:formatNumber></td>
      <td>
          <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
             <%=part.getQtdCotasBPDSMigradas() %></fmt:formatNumber></td>
      <td>
          <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
             <%=part.getBPDSAtual() %></fmt:formatNumber></td>
      <td>
             <%=part.getInicioBPDSMigracao() %></td>
    </tr>
  </logic:iterate>
</table>
</body>
</html>
