<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Produto produto = new Produto(id);
    ProdutoController usuCont = new ProdutoController();
    produto= usuCont.excluir(produto);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarProduto.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>