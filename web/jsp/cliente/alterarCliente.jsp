<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cliente pes = new Cliente(id);
    ClienteController pesCont = new ClienteController ();
    pes = pesCont.buscar(pes);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CLIENTE</title>
    <body>
      <div class="container"/>
       <h1>ALTERAR CLIENTE</h1>
        <form name="alterarCliente" action="validaAlterarCliente.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=pes.getNome()%>"> <br>
            Celular: <input type="text" name="CELULAR" value="<%=pes.getCelular()%>"> <br>
            Email: <input type="text" name="EMAIL" value="<%=pes.getEmail()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pes.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
         </form>
        <div>
      </body>  
</html>