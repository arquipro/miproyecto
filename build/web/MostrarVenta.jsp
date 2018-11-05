<%-- 
    Document   : MostrarVentas
--%>

<%@page import="javax.persistence.Convert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.*" %>
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
        <form id="frmMostrarCabeceraVenta">
            <table id="tablaMostrarCabeceraVenta">
                <tr>
                    <th>
                        <h1> Pedidos realizados </h1>
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

        <form id="frmMostrarCuerpoVenta">
            


            <table class="table table-hover" id="tablaMostrarCuerpoVenta">
                <thead>
                    <tr>
                        <th scope="col">CODIGO</th>
                        <th scope="col">CLIENTE</th>  
                        <th scope="col">IMPORTE (S/.)</th>
                        <th scope="col">FECHA Y HORA</th>                       
                        <th colspan="2" scope="col">OPCION</th>
                    </tr>
                </thead>


                <tbody>
                    <%
                        DecimalFormat df = new DecimalFormat("0.00");
                        DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();

                        dfs.setDecimalSeparator (

                        '.');
                        df.setDecimalFormatSymbols (dfs);

                        ArrayList<Venta> lista = Venta_DB.ObtenerVentas();
                        for (int i = 0;

                        i< lista.size ();
                        i

                         
                            ++) {
                       Venta v = lista.get(i);
                    %>
                    <tr>
                        <th scope="row">1</th>
                        <td><%=v.getCodigoVenta()%></td>
                        <td><%=v.getCliente()%></td>
                        <td><%=df.format(v.getTotal())%></td>
                        <td><%=v.getFecha()%></td>
                        <td class="Opcion">
                            <input type="button" name="btnDetalle" id="btnDetalle" class="button" value="Detalle venta" onclick="location.href = 'Servlet_Venta?codigoV=<%=v.getCodigoVenta()%>&&cliente=<%=v.getCliente()%>&&importe=<%=v.getTotal()%>&&FechaV=<%=v.getFecha()%>&&codigoCli=<%=v.getCodigoCliente()%>&&accion=MostrarDetalle'">
                        </td>
                        <td class="Opcion">
                            <input type="button" name="btnEliminar" id="btnEliminar" class="button" value="Eliminar" onclick="location.href = 'Servlet_Venta?codigoV=<%=v.getCodigoVenta()%>&&accion=EliminarVenta'"> 
                        </td>
                    </tr>
                </tbody>
                <%
                    }
                %>
            </table>
        </form>

        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
