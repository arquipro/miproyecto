<%-- 
    Document   : MostrarCPEliminados
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<%@page import="java.util.ArrayList" %>
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
        <form id="frmMostrarCabeceraCPEliminados">
            <table id="tablaMostrarCabeceraCPEliminados">
                <tr>
                    <th>
                        <h1> Clase de productos eliminados </h1>
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

        <form id="frmMostrarCuerpoCPEliminados">
            <table id="tablaMostrarCuerpoCPEliminados">
                <tr>
                    <th class="Titulo">
                        CODIGO
                    </th>
                    <th class="Titulo">
                        NOMBRE
                    </th>
                    <th class="Titulo">
                        ESTADO
                    </th>
                    <th class="Titulo">
                        OPCION
                    </th>
                </tr>

                <%
                    ArrayList<ClaseP> lista = ClaseP_DB.obtenerCPInhabilitados();
                    for (int i = 0; i < lista.size(); i++) {
                        ClaseP CP = lista.get(i);
                %>

                <tr>
                    <td>
                        <%=CP.getCodigoCP()%>
                    </td>
                    <td>
                        <%=CP.getNombreCP()%>
                    </td>
                    <td>
                        <%=CP.getEstadoCP()%>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnRecuperar" id="btnRecuperar" class="button" value="Recuperar" onclick="location.href = 'Servlet_CP?codigoCP=<%=CP.getCodigoCP()%>&&accion=recuperar'">
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