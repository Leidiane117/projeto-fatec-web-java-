<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>

<%
    String nome = request.getParameter("NOME");
    String celular = request.getParameter("CELULAR");
    String email = request.getParameter("EMAIL");
 
    Cliente pes = new Cliente(nome,celular,email);
    ClienteController pescont = new ClienteController();
    pes = pescont.inserir(pes);
 

    
    String url = "inserirCliente.jsp";
    response.sendRedirect(url);
%>

