<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>

<%
    String nome = request.getParameter("NOME"); 
    Produto  produto = new Produto(nome);
    ProdutoController produtoC = new ProdutoController();
    List<Produto> prod = produtoC.listar(produto);
    String url = "PBUSCA=" + nome +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PRODUTOS</title>
      <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Preco">Preço</th>
                  <th data-field="Descricao">Descrição</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(prod.isEmpty())) { %>    
                <tbody>
                    <% for (Produto listaProduto : prod) { %>
                        <tr>
                            <td><%=listaProduto.getId()%></td>
                            <td><%=listaProduto.getNome()%></td>
                            <td><%=listaProduto.getPreco()%></td>
                            <td><%=listaProduto.getDescricao()%></td>
                            <td><a href="excluirProduto.jsp?<%=url + listaProduto.getId()%>">Excluir</a></td>
                            <td><a href="alterarProduto.jsp?<%=url + listaProduto.getId()%>">Alterar</a></td>
                       </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
   
</html>