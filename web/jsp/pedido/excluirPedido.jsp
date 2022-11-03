<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Pedido"%>
<%@page import="projetofatec.controller.PedidoController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pedido usuPes = new Pedido(id);
    PedidoController usuPesCont = new PedidoController();
    usuPes = usuPesCont.excluir(usuPes);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // 
    String url = "validaConsultarPedido.jsp?ID=" + pbusca;
    response.sendRedirect(url);

%>

