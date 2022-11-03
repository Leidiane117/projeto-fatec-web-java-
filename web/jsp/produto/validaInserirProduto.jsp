<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Produto"%>
<%@page import="projetofatec.controller.ProdutoController"%>

<%
    String nome = request.getParameter("NOME");
    double  preco =Double.parseDouble(request.getParameter("PRECO"));
    String desc = request.getParameter("DESCRICAO");
    Produto prod = new Produto(nome,preco,desc);
    ProdutoController prodC = new ProdutoController();
    prod = prodC.inserir(prod);
 
    // 
    String url = "inserirProduto.jsp";
    response.sendRedirect(url);
%>

<HTML>
    <BODY>
        <%=nome%>  <BR>
        <%=preco%>  <BR>
        <%=desc%> <BR>
    </BODY>
</HTML>
