<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetofatec.dto.Cliente"%>
<%@page import="projetofatec.controller.ClienteController"%>

<%
    String nome = request.getParameter("NOME");
    Cliente pes = new Cliente(nome);
    ClienteController pescont = new ClienteController();
    List<Cliente> pess = pescont.listar(pes);
    String url = "PBUSCA=" + nome+"&ID=" ; 
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc"%>
    <title>LISTA CLIENTES</title>
   
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Celular">Celular</th>
                  <th data-field="Email">Email</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pess.isEmpty())) { %>    
               <tbody>  
                    <% for (Cliente listaClientes : pess) { %>
                    <tr>
                            <td><%=listaClientes.getId()%></td>
                            <td><%=listaClientes.getNome()%></td>
                            <td><%=listaClientes.getCelular()%></td>
                            <td><%=listaClientes.getEmail()%></td>
                            <td><a href="excluirCliente.jsp?<%=url + listaClientes.getId()%>">Excluir</a></td>
                            <td><a href="alterarCliente.jsp?<%=url + listaClientes.getId()%>">Alterar</a></td>
                          
                        </tr>
                    <% } %>
                 </tbody>
            <% } %>
        </table>    
   
</html>