<%-- 
    Document   : RegistrarClaseProducto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCP.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
        <%@include file="estrucutra/css.jsp" %>
    </head>

    <%
        String Codigo_CP = ObtenerCodigo.CodigoClaseProducto();
    %>

    <body onload="cargar()">
        <%@include file="estrucutra/headerMedio.jsp" %>
        <form name="frm" action="Servlet_CP" method="post" id="frmRegistrarCP">
            <table id="tablaRegistrarCP">
                <tr>
                    <td colspan="2">
                        <h1>Registrar clase producto</h1>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Codigo :
                    </td>
                    <td>
                <dd> <input type="text" name="txtCodigo" value="<%=Codigo_CP%>" readonly="readonly">  </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Clase producto :
                    </td>
                    <td>
                <dd> <input type="text" name="txtNombre" id="txtNombre" class="textBox"> </dd>
                </td>
                </tr>
                <tr>
                    <td colspan="2" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar"> 
                        <input type="button" name="btnRegistrar" id="btnRegistrar" class="button" value="Registrar"> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
            <input type="hidden" name="accion" value="insertar">
        </form>
        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
