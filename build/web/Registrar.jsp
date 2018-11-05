<%-- 
    Document   : InicioSesion
    Created on : 28/10/2018, 08:29:10 PM
    Author     : ESCRITORIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCliente.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />

        <title>Reguistro de usuarios | C-Fhercons</title>
        <%@include file="estrucutra/css.jsp" %>
    </head><!--/head-->

    <body>
        <%@include file="estrucutra/header.jsp" %>

        <form name="frm" action="Servlet_Usu" method="post" id="frmRegistrarUsuario">
            <input type="hidden" name="accion" value="registrar">
            <table id="tablaRegistrarUsuario">
                <tr>
                    <th colspan="3">
                        <h1>Registrate ahora</h1>
                    </th>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Nombre : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtNombres" id="txtNombre" class="textBox" placeholder="Nombres" size="30" maxlength="50"> </dd>          
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Apellido : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtApellidos" id="txtApellido" class="textBox" placeholder="Apellidos" size="30" maxlength="50"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Dni : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtDni" id="txtDni" class="textBox" placeholder="DNI" size="30" maxlength="8"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Email : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtEmail" id="txtEmail" class="textBox" placeholder="Correo electronico" size="30" maxlength="50"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Confirmar Email : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtConfirmarEmail" id="txtConfirEmail" class="textBox" placeholder="Confirme correo electronico" size="30" maxlength="50"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Departamento : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtDepartamento" id="txtDepartamento" class="textBox" placeholder="Departamento" size="30" maxlength="20"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Provincia : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtProvincia" id="txtProvincia" class="textBox" placeholder="Provincia" size="30" maxlength="20"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Distrito : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtDistrito" id="txtDistrito" class="textBox" placeholder="Distrito" size="30" maxlength="20"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Direccion 1 : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtDireccion1" id="txtDireccion1" class="textBox" placeholder="Direccion 1" size="30" maxlength="50"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Direccion 2 : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtDireccion2" id="txtDireccion2" class="textBox" placeholder="Direccion 2" size="30" maxlength="50"> </dd>
                </td>
                <td>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna"> 
                        Telefono : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtTelefono" id="txtTelefono" class="textBox" placeholder="Telefono o Celular" size="30" maxlength="9"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Usuario : 
                    </td>
                    <td>
                <dd> <input type="text" name="txtUsuario" id="txtUsuario" class="textBox" placeholder="Cree un usuario" size="30" maxlength="30"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Contraseña : 
                    </td>
                    <td>
                <dd> <input type="password" name="txtClave" id="txtClave" class="textBox" placeholder="Cree una contraseña" size="30" maxlength="20"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Confirmar contraseña : 
                    </td>
                    <td>
                <dd> <input type="password" name="txtConfirmarClave" id="txtConfirClave" class="textBox" placeholder="Confirme su contraseña" size="30" maxlength="20"> </dd>
                </td>
                <td>
                <dd> * </dd>
                </td>
                </tr>
                <tr>
                    <td colspan="3" class="Botones">
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
        </form>

        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>

    </body>
</html>