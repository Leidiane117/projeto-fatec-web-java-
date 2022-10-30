<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.main"%>


<%  String usuario= request.getParameter("USUÁRIO");
    String senha = request.getParameter("SENHA");
%>


<!DOCTYPE html>

    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    
        <% if ("admin".equals(usuario)  ||  "123".equals(senha)) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Cliente</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Produto</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Pedido</a>        
      <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../cliente/inserirCliente.jsp">inserirCliente</a></li>
                    <li><a href="../cliente/consultarCliente.jsp">consultarCliente</a></li>
                    <li><a href="../cliente/alterarCliente.jsp"> alterarCliente</a></li>
                    <li><a href="../cliente/excluirCliente.jsp"> excluirCliente</a></li>
      </ul>     
                  
     <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
                       
                
        <% } %>

    



