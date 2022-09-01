<?xml version="1.0" encoding="windows-1252" ?>
<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%@page import="extrato.*" %>
<erro>
    <msg>
        <%
        String erro = (String)request.getAttribute("ErroMsg");
        out.println(erro);
        %>
    </msg>
</erro>
