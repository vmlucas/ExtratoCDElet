<?xml version="1.0" encoding="windows-1252" ?>
<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%@page import="extrato.*" %>
<%
    ExtratoCD extrato = (ExtratoCD)session.getAttribute("extrato");
%>
<participante>
    <numeroEletros><%=extrato.getNumEletros() %></numeroEletros>
<!--posição migração -->    
    <dataMigracao><% String dataRef = extrato.getDataRefMigracao();
                   if ( extrato.getDataRefMigracao() == null )
                   {
                     dataRef = "-"; 
                   }
                %>
                  <%=dataRef %></dataMigracao>
    <saldoMigracao><% if(extrato.getSaldoMigracao() == 0.0)
                  {
               %>
                 -
                 <%}else{ %> 
                 <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2">
                  <%=extrato.getSaldoMigracao() %>                 </fmt:formatNumber> 
                <%}%></saldoMigracao>
    <indiceMigracao>
               <% if(extrato.getSaldoMigracao() == 0.0)
                  {
               %>
                 -
               <%}else{ %>
                <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
                  <%=extrato.getValorIndiceMigracao() %>                </fmt:formatNumber> 
               <%}%></indiceMigracao>
    <cotasMigradas><% if(extrato.getQtdCotasMigradas() == 0.0)
                  {
               %>
                 -
               <%}else{ %>
                <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getQtdCotasMigradas() %>                </fmt:formatNumber> 
               <%}%></cotasMigradas>
    <inicioBPDS><% if(extrato.getInicioBPDS() != null)
                  {
               %>
                  <%=extrato.getInicioBPDS() %>               
               <%    
                  }%></inicioBPDS>
    <valorBPDS><% if(extrato.getBPDSAtual() != 0.0)
                  {
                    
               %>
                <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getBPDSAtual() %>                </fmt:formatNumber> 
               <%    
                 }%></valorBPDS>

<!--        Movimentação das contribuições -->
<logic:iterate id="lan" name="extrato" type="Lancamento" property="lancamentos">
        <lancamento>
            <data><%=lan.getData() %></data>
            <salario>
               <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"><%=lan.getSalario() %></fmt:formatNumber></salario>
            <contribBasicaPartic>   
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getValorAplicBasicaParticipante() %>                </fmt:formatNumber> </contribBasicaPartic>
            <contribPatrocinadora>       
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getValorAplicPatrocinadora() %>                </fmt:formatNumber> </contribPatrocinadora>
            <contribExtraPartic>
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getValorAplicExtraParticipante() %>                </fmt:formatNumber> </contribExtraPartic>
            <debitos>
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getDebitos() %>                </fmt:formatNumber> </debitos>
            <valorTotalAplic>
            <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                 <%=lan.getValorTotalAplic() %>                </fmt:formatNumber> </valorTotalAplic>   
            <valorCota>
            <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
                 <%=lan.getValorCota() %>
                </fmt:formatNumber> </valorCota>
            <quantidadeCotas>    
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                 <%=lan.getQuantidadeCotaLiq() %>
                </fmt:formatNumber> </quantidadeCotas>
          </lancamento>      
</logic:iterate>
<!-- Footer -->
<dataCotaAtual>
<%=extrato.getDataCotaRecente() %></dataCotaAtual>
<saldoAtualCotas>
     <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
         <%=extrato.getSaldoCotas() %>               </fmt:formatNumber></saldoAtualCotas>
<valorCotaAtual>         
     <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
                  <%=extrato.getValorCotaRecente() %> </fmt:formatNumber></valorCotaAtual>
<saldoAtual>                  
     <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getSaldoAtual() %>               </fmt:formatNumber></saldoAtual>
<rentabilidadeAtual>
               <fmt:formatNumber minFractionDigits="2"> 
                  <%=extrato.getRentabilidade() %>               </fmt:formatNumber></rentabilidadeAtual>
</participante>
