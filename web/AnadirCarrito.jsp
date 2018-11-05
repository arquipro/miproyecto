<%-- 
    Document   : AnadirCarrito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCliente.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>Añadir carrito</title>
        <%@include file="estrucutra/css.jsp" %>


    </head>
    <%
        String cliente = request.getParameter("cliente");
        Producto p = Producto_DB.listarProductoPorCodigo(request.getParameter("codigoP"));
    %>

    <body>
        <div class="header-middle"><!--header-medio-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                            <a href="index.html"><img src="images/home/logo.png" alt="" /></a>
                        </div>

                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="InicioSesion.jsp"><i class="fa fa-user"></i> Mi cuenta</a></li>
                                <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Ver carrito</a></li>
                                <li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Finalizar compra</a></li>
                                <li><a href="InicioSesion.jsp"><i class="fa fa-lock"></i> Acceder</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-medio-->

        <form name="frm" action="Servlet_Prod" method="post" id="frmAnadirCarrito">
            <input type="hidden" name="txtCliente" value="<%=cliente%>">
            <table id="tablaAnadirCarrito">
                <tr>
                    <th colspan="2">
                        <h1>Añadir a carrito</h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                <dd> <input type="hidden" name="txtCodigo" value="<%=p.getCodigoP()%>" size="20" maxlength="30"> </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Nombre producto :
                    </td>
                    <td>
                <dd> <input type="text" name="txtNombreP" class="campoNoEditable" value="<%=p.getClaseProducto()%> <%=p.getMarcaProducto()%> - <%=p.getDescripcion()%>" 
                            size="60" readonly="readonly"> </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Precio producto :
                    </td>
                    <td>
                <dd> <input type="text" name="txtPrecio" class="campoNoEditable" value="<%=p.getPrecioP()%>" size="20" maxlength="30" readonly="readonly"> </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Cantidad :
                    </td>
                    <td>
                <dd> <input type="number" name="txtCantidad" value="1" min="1"> </dd>
                </td>
                </tr>
                <tr>
                    <td colspan="2" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar">
                        <input type="submit" name="btnGuardar" id="btnGuardar" class="button" value="ADD carrito">
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
            <input type="hidden" name="accion" value="anadirCarrito">
        </form>

        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
