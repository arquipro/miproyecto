<%-- 
    Document   : MostrarUsuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
        <%@include file="estrucutra/css.jsp" %>
    </head>
    <body>
        <%@include file="estrucutra/headerMedio.jsp" %>
        <form id="frmMostrarCabeceraUsuario">
            <table id="tablaMostrarCabeceraUsuario">
                <tr>
                    <th>
                        <h1> Usuarios habilitados </h1>
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="btn btn-default get">Pagina principal</a>
                    </td>
                </tr>
            </table>
        </form>

        <hr>

        <form id="frmMostrarCuerpoUsuario">
            <table class="table table-hover" id="tablaMostrarCuerpoUsuario">
                <tr>
                    <th class="Titulo">
                        CODIGO
                    </th>
                    <th class="Titulo">
                        NOMBRE
                    </th>
                    <th class="Titulo">
                        APELLIDO
                    </th>
                    <th class="Titulo">
                        DNI
                    </th>
                    <th class="Titulo">
                        CORREO
                    </th>
                    <th class="Titulo">
                        TELEFONO
                    </th>
                    <th class="Titulo">
                        USUARIO
                    </th>
                    <th class="Titulo">
                        TIPO
                    </th>
                    <th class="Titulo">
                        ESTADO
                    </th>
                    <th class="Titulo">
                        OPCION
                    </th>
                </tr>    

                <%
                    ArrayList<Usuario> lista = Usuario_DB.MostrarUsuarioHabilitado();
                    for (int i = 0; i < lista.size(); i++) {
                        Usuario usu = lista.get(i);
                %>

                <tr>
                    <td>
                        <%=usu.getCodigoUsuario()%>
                    </td>
                    <td>
                        <%=usu.getNombreUsuario()%>
                    </td>
                    <td>
                        <%=usu.getApellidosUsuario()%>
                    </td>
                    <td>
                        <%=usu.getDniUsuario()%>
                    </td>
                    <td>
                        <%=usu.getEmailUsuario()%>
                    </td>
                    <td>
                        <%=usu.getTelefonoUsuario()%>
                    </td>
                    <td>
                        <%=usu.getIdUsuario()%>
                    </td>
                    <td>
                        <%=usu.getTipoUsuario()%>
                    </td>
                    <td>
                        <%=usu.getEstadoUsuario()%>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnEliminar" value="Eliminar" id="btnEliminar" class="button" onclick="location.href = 'Servlet_Usu?codigoU=<%=usu.getCodigoUsuario()%>&&accion=eliminar'">
                    </td>
                </tr>

                <%
                    }
                %>

            </table>
        </form>

        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
