<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>
<%@page import="projetofatec.dto.Pedido"%>
<%@page import="projetofatec.controller.PedidoController"%>

<%
    int idPedido = Integer.parseInt(request.getParameter("ID_PEDIDO"));
    Pedido usupes = new Pedido(idPedido);
    PedidoController usupescont = new PedidoController();
    List<Pedido> usupess = usupescont.listar(usupes);
    String url = "PBUSCA=" + idPedido+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PEDIDOS</title>
   
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdPedido">Id</th>
                  <th data-field="IdCliente">Id Cliente</th>
                  <th data-field="NomeCliente">Nome Cliente</th>
                  <th data-field="IdProduto">Id Produto</th>
                  <th data-field="NomeProduto">Nome Produto</th>
                  <th data-field="Valor">Valor</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(usupess.isEmpty())) { %>    
                <tbody>
                    <% for (Pedido listaPedido : usupess) { %>
                        <tr>
                            <td><%=listaPedido.getId()%></td>
                            <td><%=listaPedido.getId_Cliente()%></td>
                            <td><%=listaPedido.getCliente().getNome()%></td>
                            <td><%=listaPedido.getId_Produto()%></td>
                            <td><%=listaPedido.getProduto().getNome()%></td>
                            <td><%=listaPedido.getValor()%></td>
                            <td><a href="excluirPedido.jsp?<%=url + listaPedido.getId()%>">Excluir</a></td>
                            <td><a href="alterarPedido.jsp?<%=url + listaPedido.getId()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    
</html>