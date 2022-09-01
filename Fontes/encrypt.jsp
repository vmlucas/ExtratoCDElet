<%@page import="extratocdelet.*" %>
<%@ page contentType="text/html;charset=windows-1252"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>teste extrato na produção</title>
</head>
<body>
<%
    String numEletros = request.getParameter("Codusuario");
    
    ModeloTeste model = new ModeloTeste();
    numEletros = model.Encrypt( numEletros);
    String data = model.retornaDataAtual();   

%>
<jsp:forward page="extratocdElet.do" >
<jsp:param name="Codusuario"
          value="<%= numEletros %>" />
<jsp:param name="DataLogin"
          value="<%=data %>" />          
</jsp:forward>

</body>
</html>
