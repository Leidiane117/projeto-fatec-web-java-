<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String celular = request.getParameter("CELULAR");
    String mail = request.getParameter("EMAIL");
    String pbusca = request.getParameter("PBUSCA");
    Cliente pes = new Cliente(id,nome,celular,mail);
    ClienteController pesCont = new ClienteController();
    pes = pesCont.alterar(pes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarCliente.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>