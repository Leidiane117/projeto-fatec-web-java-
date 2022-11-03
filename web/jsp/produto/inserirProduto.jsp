<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PRODUTO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PRODUTO</h1>
        <form name="inserirProduto" action="validaInserirProduto.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Preço: <input type="number" step="0.01" name="PRECO" value=""> <br>
            Descrição: <input type="text" name="DESCRICAO" value=""> <br>
          <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
