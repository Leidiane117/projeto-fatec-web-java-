<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Pedido"%>
<%@page import="projetofatec.controller.PedidoController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pedido pedido = new Pedido(id);
    PedidoController pedidoC = new PedidoController();
    pedido = pedidoC.buscar(pedido);
    
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PEDIDO</title>
     <body>
       <div class="container"/>
       <h1>ALTERAR - PEDIDO</h1>
        <form name="alterarPedido" action="validaAlterarPedido.jsp" method="post">
        ID Cliente: <input type="number" name="ID_CLIENTE" value="<%=pedido.getId_Cliente()%>"> <br>
        ID Produto: <input type="number" name="ID_PRODUTO" value="<%=pedido.getId_Produto()%>"> <br>
        Valor Total: <input type="number" step="0.01" name="VALOR" value="<%=pedido.getValor()%>">  
                <input type="HIDDEN" name="ID_PEDIDO" value="<%=pedido.getId()%>"> <br>
                <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
               <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    
</html>
