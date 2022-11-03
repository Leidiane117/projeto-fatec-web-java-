<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.main"%>


<%  String usuario= request.getParameter("USUÁRIO");
    String senha = request.getParameter("SENHA");
%>


<!DOCTYPE html>

    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <h2>Bem vindo(a) lanchonete 2 irmãs</h2>
        <% if ("admin".equals(usuario)  ||  "123".equals(senha)) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Cliente</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Produto</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Pedido</a>        
      <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../cliente/inserirCliente.jsp">Inserir Cliente</a></li>
                    <li><a href="../cliente/consultarCliente.jsp">Consultar Cliente</a></li>
                  
       </ul> 
       <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../produto/inserirProduto.jsp">Inserir Produto</a></li>
                    <li><a href="../produto/consultarProduto.jsp">Consultar Produto</a></li>
                   
        </ul>      
        <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../pedido/inserirPedido.jsp">Inserir Pedido</a></li>
                    <li><a href="../pedido/consultarPedido.jsp">Consultar Pedido</a></li>
                     
       </ul>           
            
                    
                  
     <% } else { %>
                <h2>USUÁRIO INVÁLIDO</h2>
                       
                
<% } %>

    



