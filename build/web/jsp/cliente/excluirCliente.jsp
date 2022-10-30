<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cliente pes = new Cliente(id);
    ClienteController pesCont = new ClienteController();
    pes = pesCont.excluir(pes);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarCliente.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>