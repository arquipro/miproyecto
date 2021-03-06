<%-- 
    Document   : MostrarDetalleVenta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page import="java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>

        <%@include file="estrucutra/css.jsp" %>
    </head>

    <%
        String CodigoVenta = (String) session.getAttribute("CodigoVenta");
        String CodigoCliente = (String) session.getAttribute("CodigoCliente");
        String Cliente = (String) session.getAttribute("Cliente");
        String Fecha = (String) session.getAttribute("FechaVenta");
        String Importe = (String) session.getAttribute("Importe");
    %>

    <body>
        <%@include file="estrucutra/headerMedio.jsp" %>
        <form action="Servlet_Prod" method="post" id="frmMostrarDetalleVenta">
            <br>

            <!--Tabla mostrar venta detalle-->
            <table class="table table-hover" id="tablaMostrarDetalleVenta">
                <tr>
                    <th colspan="5" class="TituloDV">
                        <h3>VENTA - <%=CodigoVenta%> </h3>
                    </th>
                </tr>
                <tr>
                    <th class="TituloDV">
                        <h3>  CLIENTE :  </h3> 
                    </th>
                    <td colspan="4" class="Contenido">
                        <h3>  <%=Cliente%></h3>
                    </td>
                </tr>
                <tr>
                    <th class="TituloDV">
                        PRODUCTO 
                    </th>
                    <th class="TituloDV">
                        P/U (S/.)
                    </th>
                    <th class="TituloDV">
                        CANTIDAD 
                    </th>
                    <th class="TituloDV">
                        DESC (S/.)
                    </th>
                    <th class="TituloDV">
                        SUBTOTAL (S/.)
                    </th>
                </tr>

                <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);

                    ArrayList<DetalleVenta> lista = DetalleVenta_DB.obtenerDetalleVenta(CodigoVenta);
                    for (int i = 0; i < lista.size(); i++) {
                        DetalleVenta dv = lista.get(i);
                %>
                <tr>
                    <td class="Contenido"><%=dv.getNombreProducto()%></td>
                    <td class="Contenido"><%=df.format(dv.getPrecio())%></td>
                    <td class="Contenido"><%=df.format(dv.getCantidad())%></td>
                    <td class="Contenido"><%=df.format(dv.getDescuento())%></td>
                    <td class="Contenido"> <div> <%=df.format(dv.getSubTotal())%> </div> </td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <th colspan="4" class="TituloDV">
                        <div> TOTAL (S/.)  </div>
                    </th>
                    <th class="Contenido">
                        <div> <%=df.format(Double.parseDouble(Importe))%> </div>
                    </th>
                </tr>
            </table>
            <!--Tabla mostrar venta detalle-->

            <table id="tablaRegresar">
                <tr>
                    <td>
                        <a href="MostrarVenta.jsp" class="btn btn-default get">REGRESAR</a>
                </tr>
            </table>

        </form>

        <form id="frmMostrarDatosCliente">
            <br>

            <div class="alert alert-success" role="alert">

                <table id="tablaMostrarDatosCliente">
                    <%
                        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(CodigoCliente);
                    %>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Fecha : </dd>
                    </td>
                    <td>
                    <dd> <%=Fecha%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Codigo cliente : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getCodigoUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Cliente : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getNombreUsuario()%>, <%=usu.getApellidosUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Dni : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDniUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Email : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getEmailUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Departamento : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDepartamentoUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Provincia : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getProvinciaUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Distrito : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDistritoUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Domicilio1 : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDireccion1Usuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Domicilio2 : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDireccion2Usuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd> Telefono : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getTelefonoUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                        </td>
                    </tr>
                </table><hr>
            </div>


        </form>   

        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
