<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PEDIDO</title>
    
       <div class="container"/>
       <h1>CONSULTAR PEDIDO</h1>
       <form name="consultarPedido" action="validaConsultarPedido.jsp" method="post">
           Pedido ID: <input type="number" name ="ID_PEDIDO" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    

