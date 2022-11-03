<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>
<%@page import="projetofatec.dto.Pedido"%>
<%@page import="projetofatec.controller.PedidoController"%>

<%
    ClienteController pesCont = new ClienteController();
    Cliente pf = new Cliente("");
    List<Cliente> pess = pesCont.listar(pf);

    ProdutoController usuCont = new ProdutoController();
    Produto usuEnt = new Produto("");
    List<Produto> usus = usuCont.listar(usuEnt);
   

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR PEDIDO</title>
    
        <div class="container"/>
            <h1>Inserir Pedido</h1>
            <form name="inserirPedido" action="validaInserirPedido.jsp" method="POST">
                <table>
                    <tr>
                        <td>Cliente:</td>
                        <td>
                            <select NAME ="ID_CLIENTE" class="browser-default">
                                <% for (Cliente pes : pess) { %>
                                    <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Produto:</td>
                        <td>
                            <select NAME="ID_PRODUTO" class="browser-default">
                                <% for (Produto usu : usus) { %>
                                    <option value="<%=usu.getId()%>"><%=usu.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                </table> 
                Valor Total: <input type="number" step="0.01" name="VALOR" value="">             
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    
</html>
