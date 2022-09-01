

<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld" %>

<html>
<head>
<title>Login de teste do Extrato CD Elet</title>
<LINK REL="StyleSheet" HREF="Css/Eletros.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="img/bkgSimulador.gif">

<table width="776" border="0" align="center" cellpadding="0" cellspacing="0" background="img/nada1.gif" bgcolor="#1A50B8">
  <tr>
    <td width="776" valign="top"><!-- <topo> -->
        <%@ include file="./Script/tit_sup.htm" %>
        <!-- </topo> -->
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <!-- <lateral esquerda> -->
            <td width="6" height="100%" valign="top" class="bkgLatEsquerda">&nbsp;</td>
            <!-- </lateral esquerda> -->
            <!-- <meio> -->
            <td valign="top" width="770"><!-- <barra login> -->
                <%@ include file="Script/tit_login.jsp" %> 
                <!-- </barra login> -->
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="776"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="60" colspan="2">&nbsp;
                                  <table width="91%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td height="60">
                                          <table width="415" border="0" cellspacing="0" cellpadding="0" align="center" height="300">
                                            <tr valign="top">
                                              <td colspan="2" height="15"><img src="./img/simulador_top.gif" width="417" height="19"></td>
                                            </tr>
                                            <tr align="center" valign="top">
                                              <td colspan="2" background="./img/simulador_fundo.gif">
    <form action='/ExtratoCDElet/encrypt.jsp' method="get">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="41%" height="46">&nbsp;</td>
            <td width="59%">&nbsp;</td>
          </tr>
		  <tr>
            <td>N&uacute;mero Eletros</td>
            <td><input name="Codusuario" type="text" size="15">
               
            </td>
          </tr>
          <tr>
            <td colspan="3" class="textobranco">&nbsp;</td>
          </tr>
          <tr>
            <td height="32">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="OK"></td>
          </tr>
        </table>
      </form></td>
                                            </tr>
											<tr valign="top">
                                              <td colspan="2" height="15"><img src="./img/simulador_boton.gif" width="417" height="19"></td>
                                            </tr>
                                        </table>
                                    </tr>
                                            <tr valign="top">
                                              <td colspan="2">&nbsp;</td>
                                            </tr>
                                  </table></td>
                            </tr>
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
        <!-- </rodape> --><html:link page="/encrypt.jsp">
      <bean:message key="link.encrypt"/>
    </html:link></body>

</html>
