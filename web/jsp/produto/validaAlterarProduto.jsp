<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    double  preco =Double.parseDouble(request.getParameter("PRECO"));
    String descricao = request.getParameter("DESCRICAO");
    String pbusca = request.getParameter("PBUSCA");

    Produto produto = new Produto(id,nome,preco,descricao);
    ProdutoController produtoC = new ProdutoController();
    produto = produtoC.alterar(produto);
    String url = "validaConsultarProduto.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>