<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - Cliente</title>
    <body>
       <div class="container"/>
        <h1>INSERIR Cliente</h1>
        <form name="inserirCliente" action="validaInserirCliente.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Celular:<input type="text" name="CELULAR" value=""> <br>
            Email: <input type="text" name="EMAIL" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
            
                
        </form>
        </div>
    </body>
</html>
