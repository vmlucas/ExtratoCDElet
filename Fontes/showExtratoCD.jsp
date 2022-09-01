<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%@page import="extrato.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>
Extrato de contribui&ccedil;&otilde;es - Plano CD Eletrobr&aacute;s
</title>
<link href="css/Eletros.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {font-weight: bold}
.style2 {
	font-size: 10px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style3 {
	color: #336699;
	font-size: 10px;
}
.style4 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #336699;
}
.style5 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style6 {
	font-size: 10px;
	color: #336699;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style7 {font-size: 10px}
-->
</style>
</head>
<%
    ExtratoCD extrato = (ExtratoCD)session.getAttribute("extrato");
%>
<BODY bgColor=#ffffff leftMargin=0 
background="img/bkgSimulador.gif" 
topMargin=0 marginheight="0" marginwidth="0">

<TABLE cellSpacing=0 cellPadding=0 width=776 align=center bgColor=#1a50b8 
background="img/nada1.gif" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=776><!-- <topo> -->
        <%@ include file="./Script/tit_sup.htm" %>
        <!-- </topo> -->
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <!-- <lateral esquerda> -->
            <td width="6"  valign="top" class="bkgLatEsquerda">&nbsp;</td>
            <!-- </lateral esquerda> -->
            <!-- <meio> -->
            <td valign="top" width="770"><!-- <barra login> -->
                <!-- </barra login> -->
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="776"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="60" colspan="2">&nbsp;
                                  <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td>
                                          <table width="780" border="0" cellspacing="0" cellpadding="0" align="left" height="80" background="img/simulador_fundo.gif">
                                            <tr valign="top">
                                              <td colspan="2" height="15"><img src="./img/simulador_top.gif" width="773" height="19"></td>
                                            </tr>
                                            <tr align="left" valign="top">
                                              <td colspan="2" background="./img/simulador_fundo.gif">
           <table border="0" cellspacing="0" cellpadding="0" align="left">
                                                  
                                                  <tr>
                                                    <td width="44">&nbsp;</td> 
            <td width="97"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">Nome: 
              </font></strong></td>
            <td width="316" height="26"> <strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%=extrato.getNome() %> 
              </font> </strong> 
              <div align="left"></div></td>
            </tr>
            <tr>
              <td width="44">&nbsp;</td> 
            <td width="97"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">Inscrição:</font></strong></td>
            <td width="316"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%=extrato.getNumEletros() %></font></strong>
              <div align="left"></div></td>
            <td width="7">&nbsp;</td>
          </tr>
          <tr>
            <td width="44">&nbsp;</td> 
            <td width="97"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">Patrocinadora:</font></strong></td>
            <td width="316"> <strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%=extrato.getPatrocinadora() %>
              </font> </strong> <div align="left"></div></td>
            <td width="7">&nbsp;</td>
          </tr>
          <tr>
            <td width="44">&nbsp;</td> 
            <td width="97"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">Plano:</font></strong></td>
            <td width="316"> <strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%=extrato.getPlano() %>
              </font> </strong> <div align="left"></div></td>
            <td width="7">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr> 
            <td height="21" colspan="2">
</td>
          </tr> 
<tr> 
            <td height="21" colspan="2"><span class="style4"><strong><font color="#336699" size="1">&nbsp;POSI&Ccedil;&Atilde;O NA DATA </font><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif"> DE MIGRA&Ccedil;&Atilde;O</font></strong></span></td>
          </tr> 
    <tr>
      <td width="882" colspan="2"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">
        </font></strong>
      <div align="center" class="style4">
        <hr>
        <strong></strong></div> 
              </td>
    </tr>
<tr> 
            <td height="21" colspan="8">
</td>
          </tr> 
    <tr  background="img/simulador_fundo.gif"> 
      <td valign="bottom" background="img/simulador_fundo.gif"> 
<table align="center" cellpadding="0" cellspacing="0" background="img/simulador_fundo.gif">
          <tr background="img/simulador_fundo.gif"> 
            
            <td width="70"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">M&ecirc;s/Ano </font></strong></td>
            <td width="120"><div align="center"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">Saldo (R$)</font></strong></div></td>
            <td width="120"> 
              <div align="center"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">
                        Valor da cota(R$)</font></strong></div></td>
            <td width="100"> 
              <div align="center"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">
                        Total de cotas</font></strong></div></td>  
          <% if(extrato.getInicioBPDS() != null)
             {
          %>              
            <td width="100"> 
              <div align="center"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">
                        Data BPDS</font></strong></div></td>            
          <% } %>
          <% if(extrato.getBPDSAtual() != 0.0)
             {
          %>
            <td width="100"> 
              <div align="center"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">
                        Valor BPDS Atual</font></strong></div></td>             
          <% } %>
          </tr>
         
          <tr background="img/simulador_fundo.gif"> 
            <td>  <div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                  <% String dataRef = extrato.getDataRefMigracao();
                   if ( extrato.getDataRefMigracao() == null )
                   {
                     dataRef = "-"; 
                   }
                %>
                  <%=dataRef %> 
                </font></div></td>
            <td> <div align="center"> <font size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                 <% if(extrato.getSaldoMigracao() == 0.0)
                  {
               %>
                 -
                 <%}else{ %> 
                 <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2">
                  <%=extrato.getSaldoMigracao() %>                 </fmt:formatNumber> 
                <%}%>  
                </font></div></td>
            <td> <div align="right"></div>
              <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <% if(extrato.getSaldoMigracao() == 0.0)
                  {
               %>
                 -
               <%}else{ %>
                <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
                  <%=extrato.getValorIndiceMigracao() %>                </fmt:formatNumber> 
               <%}%>
                 </font></div></td>
            <td> <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <% if(extrato.getQtdCotasMigradas() == 0.0)
                  {
               %>
                 -
               <%}else{ %>
                <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getQtdCotasMigradas() %>                </fmt:formatNumber> 
               <%}%>
                 </font></div></td>  
             <td> <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <% if(extrato.getInicioBPDS() != null)
                  {
               %>
                  <%=extrato.getInicioBPDS() %>               
               <%    
                  }%>
                 </font></div></td>        
            <td> <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <% if(extrato.getBPDSAtual() != 0.0)
                  {
                    
               %>
                <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getBPDSAtual() %>                </fmt:formatNumber> 
               <%    
                 }%>
                 </font></div></td>        
          </tr>
        </table> 
    </td></tr>
    <tr> 
            <td height="21" colspan="8">
</td>
          </tr> 
<tr> 
            <td height="21" colspan="8"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;MOVIMENTA&Ccedil;&Atilde;O DAS CONTRIBUI&Ccedil;&Otilde;ES </font></strong></td>
          </tr> 
    <tr>
      <td width="882" colspan="8"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">
         <div align="center">
           <hr>
        </div> 
      </font></strong></td>
    </tr>
    <tr> 
            <td height="21" colspan="8">
</td>
          </tr> 
    <tr  background="img/simulador_fundo.gif"> 
      <td valign="bottom" background="img/simulador_fundo.gif"> 
<table width="737" height="97" align="center" cellpadding="0" cellspacing="0" background="img/simulador_fundo.gif">
<tr background="img/simulador_fundo.gif">
  <td><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">M&ecirc;s/Ano</font></strong></td>
  <td><div align="center"><strong><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">Sal&aacute;rio(R$)</font></strong></div></td>
  <td colspan="3"><div align="center" class="style4"><span class="style3">Contribui&ccedil;&otilde;es</span><span class="style7"><font color="#336699"><strong>(R$)</strong></font><font color="#336699"><strong></strong></font></span></div></td>
  <td><div align="center"><font color="#336699"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Dedu&ccedil;&otilde;es(R$)</font></strong></font></div></td>
  <td><div align="center"><font color="#336699"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Total(R$)</font></strong></font></div></td>
  <td><div align="center"><font color="#336699"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Valor<br>
     Cota(R$)</font></strong></font></div></td>
  <td><div align="center"><font color="#336699"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Quantidade<br>
     Cotas</font></strong></font></div></td>
</tr>
<tr background="img/simulador_fundo.gif"> 
            <td width="61">&nbsp;</td>
            <td width="78">&nbsp;</td>
            <td width="97"> 
              <div align="right"><font color="#336699"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">                Participante</font></strong></font></div></td>
            <td width="110"> 
              <div align="right"><font color="#336699"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">                Patrocinadora</font></strong></font></div></td>
            <td width="95"> 
              <div align="right"><font color="#336699"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">                Adicional</font></strong></font></div></td>
            <td width="75"> 
              <div align="center"></div></td>
            <td width="70"> 
              <div align="center"></div></td>
            <td width="70"> 
              <div align="right"></div></td>
            <td width="87"> 
              <div align="right"></div></td>
          </tr>
          <tr> 
            <td height="10" colspan="8">            </td>
          </tr> 
          <logic:iterate id="lan" name="extrato" type="Lancamento" property="lancamentos">
            <tr background="img/simulador_fundo.gif"> 
            <td> <div align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"> <%=lan.getData() %>
                 
            </font></div></td>
            <td>  <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                   <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2">                  </fmt:formatNumber>
                   <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"><%=lan.getSalario() %>                 </fmt:formatNumber> 
                </font></div></td>
            <td> <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getValorAplicBasicaParticipante() %>                </fmt:formatNumber> </font></div></td>
            <td> <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getValorAplicPatrocinadora() %>                </fmt:formatNumber> </font></div></td>
            <td> <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getValorAplicExtraParticipante() %>                </fmt:formatNumber> </font></div></td>
            <td> <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
              <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                   <%=lan.getDebitos() %>                </fmt:formatNumber> </font></div></td> 
            <td> <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
            <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                 <%=lan.getValorTotalAplic() %>                </fmt:formatNumber> </font></div></td>    
            <td> <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
                 <%=lan.getValorCota() %>
                </fmt:formatNumber> </font></div></td> 
            <td> <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                 <%=lan.getQuantidadeCotaLiq() %>
                </fmt:formatNumber> </font></div></td>     
          </tr>
          </logic:iterate>
        </table> 
<tr> 
            <td height="21" colspan="8">
</td>
          </tr> 
<tr> 
            <td height="21" colspan="8"><span class="style4">&nbsp;POSI&Ccedil;&Atilde;O EM <%=extrato.getDataCotaRecente() %> </span></td>
          </tr>
<tr>
  <td height="21" colspan="8"><hr></td>
</tr> 
        <tr>
         <td>
        <table border="0" align="center" cellpadding="0" cellspacing="0">
          <tr background="img/simulador_fundo.gif">
            <td height="24" colspan="4" align="center">&nbsp;</td>
            </tr>
          <tr background="img/simulador_fundo.gif"> 
            <td align="center" width="90" height="24"><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong>Total de 
              
              Cotas  </strong> </font>            </td>
            <td width="110" height="24"><div align="center"><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                Valor da Cota(R$)<br>
            </strong></font> </div></td>
            <td align="center" width="110" height="24"><div align="center"><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong>Saldo              (R$)</strong> </font> </div></td>
            <td align="center" width="150" height="24"><div align="center"><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                Rentabilidade Acumulada
            </strong> </font> </div></td>
          </tr>
          <tr>
            <td align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getSaldoCotas() %>               </fmt:formatNumber>
              </font></td>            
            <td align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <fmt:formatNumber minFractionDigits="4" maxFractionDigits="4"> 
                  <%=extrato.getValorCotaRecente() %>               </fmt:formatNumber>
              </font></td>               
            <td align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"> 
                  <%=extrato.getSaldoAtual() %>               </fmt:formatNumber>
              </font></td>
            <td align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
               <fmt:formatNumber minFractionDigits="2"> 
                  <%=extrato.getRentabilidade() %>               </fmt:formatNumber>%
              </font></td>
          </tr>
        </table></td>
                                            </tr>
        <tr> 
            <td height="21" colspan="8">
</td>
          </tr> 
        <tr> 
            <td height="21" colspan="8">&nbsp;</td>
          </tr> 
        <tr>
         <td>
        <table border="0" cellpadding="0" cellspacing="0" align="left">
          <tr background="img/simulador_fundo.gif"> 
            <td width="600" height="24"><font color="#336699" size="1" face="Verdana, Arial, Helvetica, sans-serif">
            <strong>Entenda o seu extrato:</strong> </font>
            </td>
          </tr>
          <tr background="img/simulador_fundo.gif"> 
            <td width="600" height="24"><ul>
              <li class="style6"> A reserva de migra&ccedil;&atilde;o n&atilde;o contempla os valores relativos ao n&atilde;o pagamento de j&oacute;ia, a diferen&ccedil;a referente ao desbloqueio de sal&aacute;rios, nem a diferen&ccedil;a de reserva referente ao tempo de servi&ccedil;o em condi&ccedil;&otilde;es especiais; </li>
              <li class="style5"><font color="#336699">
                                  Deduções: do valor das contribuições do participante e da patrocinadora
                                  são extraídos os percentuais referentes à taxa de administração (3%) e
                                  das contribuições para o custeio dos benefícios não programáveis, invalidez e
                                  morte, (7,02%,a partir de março/09). No caso da contribuição adicional,
                                  somente é deduzida a taxa de administração (3%);
                                 </font></li>
              <li class="style5"><font color="#336699"> No caso de migra&ccedil;&atilde;o, somente a contribui&ccedil;&atilde;o de responsabilidade do participante, realizada no m&ecirc;s de migra&ccedil;&atilde;o, &eacute; transferida para o Plano CD.</font></li>
            </ul></td>
          </tr>
        </table>
        </td>
        </tr>
        <tr> 
            <td height="21" colspan="8">
</td>
          </tr> 
                                            <tr valign="top">
                                              <td colspan="2" height="15"><img src="./img/simulador_boton.gif" width="780" height="19"></td>
                                            </tr>
                                            <Tr>
                                              <td><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
                                              *O conteúdo do site é de caráter meramente informativo, não gerando direitos ou obrigações </li>
                                                   </font>       </td>
                                            </tr>
                                            <tr>
                                              <td width="882" valign="top"><br>
                                                  <script language="JavaScript">
//Verifica se &eacute; n&uacute;mero
function nochars(strval){
  var retval = true;
  for (var i = 0; i < strval.length; i++){
     if (strval.substring(i,i+1) < "0" || strval.substring(i,i+1) > "9"){
        strval.value="";
		retval=false;
        break;
     }
  }
  return retval;
}

//Valida o campo Rentabilidade Anual
function vld_login(campo) {
   if (campo.value != ""){
	  	if (!nochars(campo.value)){
	 		alert("Preencha o campo Login somente com n&uacute;meros.");
	    	return false;
		}
		if ( (campo.value.length > 7) ) {
	 		alert("Preencha o campo Login com at&eacute; 7 d&iacute;gitos");
	    	return false;
        }
    }
}


function Tecla(e)
{
	if (document.all) // Internet Explorer
		var tecla = event.keyCode;
	else if(document.layers) // Nestcape
		var tecla = e.which;
		if (tecla > 47 && tecla < 58) // numeros de 0 a 9 ou v&iacute;rgula
			return true;
		else
		   {
			if (tecla != 8) // backspace
				event.keyCode = 0;
				//return false;
			else
				return true;
		}
}

function MM_showHideLayers2() { //v3.0

  var i,p,v,obj,args=MM_showHideLayers.arguments;

  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }

    obj.visibility=v; }

}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}


function MM_showHideLayers()
{

	  var i, p, v, obj, args=MM_showHideLayers.arguments;

	  for (i=0; i<(args.length-2); i+=3)
	  	if ((obj=MM_findObj(args[i]))!=null) {
			v=args[i+2];
	    	if (obj.style) {
				obj=obj.style;
				v=(v=='show')?'visible':(v='hide')?'hidden':v;
			}
	    	obj.visibility=v;
		}
}


                                      </SCRIPT>
                                              </td>
                                            </tr>
                                        </table></td>
                                    </tr>
                                  </table>
                                  <table border="0" cellspacing="0" cellpadding="0" align="center">
                                    <tr>
                                      <td valign="top"><br>
                                      </td>
                                    </tr>
                                  </table>
                                                    <p>
                                  </p>
                            </table>
                                          </form>
                                          <script language="JavaScript">
//Verifica se &eacute; n&uacute;mero
function nochars(strval){
  var retval = true;
  for (var i = 0; i < strval.length; i++){
     if (strval.substring(i,i+1) < "0" || strval.substring(i,i+1) > "9"){
        strval.value="";
		retval=false;
        break;
     }
  }
  return retval;
}

//Valida o campo Rentabilidade Anual
function vld_login(campo) {
   if (campo.value != ""){
	  	if (!nochars(campo.value)){
	 		alert("Preencha o campo Login somente com n&uacute;meros.");
	    	return false;
		}
		if ( (campo.value.length > 7) ) {
	 		alert("Preencha o campo Login com at&eacute; 7 d&iacute;gitos");
	    	return false;
        }
    }
}


function Tecla(e)
{
	if (document.all) // Internet Explorer
		var tecla = event.keyCode;
	else if(document.layers) // Nestcape
		var tecla = e.which;
		if (tecla > 47 && tecla < 58) // numeros de 0 a 9 ou v&iacute;rgula
			return true;
		else
		   {
			if (tecla != 8) // backspace
				event.keyCode = 0;
				//return false;
			else
				return true;
		}
}

function MM_showHideLayers2() { //v3.0

  var i,p,v,obj,args=MM_showHideLayers.arguments;

  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }

    obj.visibility=v; }

}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}


function MM_showHideLayers()
{

	  var i, p, v, obj, args=MM_showHideLayers.arguments;

	  for (i=0; i<(args.length-2); i+=3)
	  	if ((obj=MM_findObj(args[i]))!=null) {
			v=args[i+2];
	    	if (obj.style) {
				obj=obj.style;
				v=(v=='show')?'visible':(v='hide')?'hidden':v;
			}
	    	obj.visibility=v;
		}
}


                                    </SCRIPT>
                          </td>
                      </tr>
                                  </table></td>
                  </tr>
            </table></td>
          </tr>
                    </table></td>
                  </tr>
              </table></td>
            <!-- </meio> -->
          </tr>
        </table>
        <!-- <rodape> -->
        <%@ include file="Script/tit_inf.htm" %>
        <!-- </rodape> -->
    </td>
  </tr>
</table>


</body>

</html>