<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Pedido"%>
<%@page import="projetofatec.controller.PedidoController"%>

<%
    String cod = request.getParameter("ID_PEDIDO");
    int id = Integer.parseInt(cod);
    int idCliente = Integer.parseInt(request.getParameter("ID_CLIENTE"));
    int idProduto = Integer.parseInt(request.getParameter("ID_PRODUTO"));
    double valor = Double.parseDouble(request.getParameter("VALOR"));
    String pbusca = request.getParameter("PBUSCA");
    Pedido usupes = new Pedido(id,idCliente,idProduto,valor);
    PedidoController usupescont = new PedidoController();
    usupes = usupescont.alterar(usupes);
    String url = "validaConsultarPedido.jsp?ID_PEDIDO=" + pbusca;
   
    response.sendRedirect(url);
%>    
    
    