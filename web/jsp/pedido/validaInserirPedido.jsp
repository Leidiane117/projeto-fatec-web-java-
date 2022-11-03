<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>
<%@page import="projetofatec.dto.Pedido"%>
<%@page import="projetofatec.controller.PedidoController"%>

<%  int idCliente = Integer.parseInt(request.getParameter("ID_CLIENTE"));
    int idProduto = Integer.parseInt(request.getParameter("ID_PRODUTO"));
    double valor = Double.parseDouble(request.getParameter("VALOR"));
    Pedido usupes = new Pedido(idCliente,idProduto,valor);
    PedidoController usupescont = new PedidoController();
    usupes = usupescont.inserir(usupes);
    
// 
    String url = "inserirPedido.jsp";
    response.sendRedirect(url);

%>