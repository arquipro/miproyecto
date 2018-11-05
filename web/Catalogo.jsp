<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Catalogo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/Catalogo.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <%@include file="estrucutra/css.jsp" %>
        <title>Catalogo</title>

    </head>
    <%@include file="Logeado/Header.jsp" %>

    <body onload="cargar()">
        
        <hr>

        <form id="frmCatalogo">

            <table width="800" id="tablaCatalogo">
                <tr>
                    <th colspan="3">
                        <h1> Catalogo de productos </h1>
                    </th>
                </tr>

                <tbody>
                    <%
                        ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();
                        int salto = 0;
                        for (int i = 0; i < lista.size(); i++) {
                            Producto p = lista.get(i);
                    %>

                <th><img src="Imagen/<%=p.getImagenP()%>" width="100" height="100"><br>
                    <%=p.getClaseProducto()%> <%=p.getMarcaProducto()%> <br>
                    <%=p.getDescripcion()%><br>
                    S/ <%=p.getPrecioP()%><br>
                    <input type="button" class="BotonModificar" name="btnModificar" value="Modificar" onclick="location.href = 'ModificarProducto.jsp?codigoP=<%=p.getCodigoP()%>'">
                    <input type="button" class="BotonADD" name="btnADD" value="ADD Carrito" onclick="location.href = 'AnadirCarrito.jsp?codigoP=<%=p.getCodigoP()%>&&cliente=<%=cliente%>'"><br>
                </th>
                <%
                    salto++;
                    if (salto == 3) {
                %>

                <tr>

                    <%
                                salto = 0;
                            }
                        }
                    %>
                    </tbody>
            </table>
        </form>  
        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
