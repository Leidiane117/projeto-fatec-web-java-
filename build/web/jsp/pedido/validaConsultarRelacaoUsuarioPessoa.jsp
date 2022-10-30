<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>
<%@page import="backenddmn20222.models.beans.Pessoa"%>
<%@page import="backenddmn20222.controllers.ControllerPessoa"%>
<%@page import="backenddmn20222.models.beans.UsuarioPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerUsuarioPessoa"%>

<%
    String obs = request.getParameter("OBS");
    UsuarioPessoa usupes = new UsuarioPessoa(obs);
    ControllerUsuarioPessoa usupescont = new ControllerUsuarioPessoa();
    List<UsuarioPessoa> usupess = usupescont.listar(usupes);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + usupes.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdUsuPessoa">Id</th>
                  <th data-field="IdPessoa">IdPessoa</th>
                  <th data-field="NomePessoa">NomePessoa</th>
                  <th data-field="IdUsuario">IdUsuario</th>
                  <th data-field="NomeUsuario">NomeUsuario</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(usupess.isEmpty())) { %>    
                <tbody>
                    <% for (UsuarioPessoa listaUsuarioPessoa : usupess) { %>
                        <tr>
                            <td><%=listaUsuarioPessoa.getId()%></td>
                            <td><%=listaUsuarioPessoa.getIdPessoa()%></td>
                            <td><%=listaUsuarioPessoa.getPes().getNome()%></td>
                            <td><%=listaUsuarioPessoa.getIdUsuario()%></td>
                            <td><%=listaUsuarioPessoa.getUsu().getLogin()%></td>
                            <td><%=listaUsuarioPessoa.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoUsuarioPessoa.jsp?<%=url + listaUsuarioPessoa.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoUsuarioPessoa.jsp?<%=url + listaUsuarioPessoa.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>