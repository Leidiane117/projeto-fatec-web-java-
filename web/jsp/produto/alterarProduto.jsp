<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Produto produto = new Produto(id);
    ProdutoController produtoC = new ProdutoController();
    produto= produtoC.buscar(produto);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRODUTO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PRODUTO</h1>
        <form name="alterarProduto" action="validaAlterarProduto.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=produto.getNome()%>"> <br>
            Preço: <input type="number" step="0.01" name="PRECO" value="<%=produto.getPreco()%>"> <br>
            Descrição: <input type="text" name="DESCRICAO" value="<%=produto.getDescricao()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=produto.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>