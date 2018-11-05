<%-- 
    Document   : InicioSesion
    Created on : 28/10/2018, 08:29:10 PM
    Author     : JESUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/Login.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />

        <title>Iniciar Sesion | C-Fhercons</title>
        <%@include file="estrucutra/css.jsp" %>
    </head><!--/head-->

    <body>
        <%@include file="estrucutra/header.jsp" %>
        <section id="form"><!--form-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1">
                        <div class="login-form"><!--FORMULARIO DE LOGEO-->                            
                            <form  method="post" action="Servlet_Usu" id="frmLogin">                                
                                <table id="tablaLogin">
                                    <h2>Ingrese a su cuenta</h2>
                                    <tr>
                                        <td>
                                            <label for="exampleDropdownFormEmail1">Ingrese usuario</label>
                                            <input type="text" name="txtUsuario" placeholder="Ingrese usuario" id="txtUsuario" class="textBox">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="exampleDropdownFormEmail1">Contraseña</label>
                                            <input type="password" name="txtClave" placeholder="Ingrese contraseña" id="txtClave" class="textBox">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <button type="submit" name="btnIngresar" class="btn btn-default" value="Ingresar" id="btnIngresar">Ingresar</button>
                                        </td>
                                    </tr>
                                </table>
                                <input type="hidden" name="accion" value="login">
                            </form>

                        </div><!--/FORMULARIO DE LOGEO-->
                    </div>
                    <div class="col-sm-1">
                        <h2 class="or">Ó</h2>
                    </div>
                    <div class="col-sm-4">
                        <div class="signup-form"><!--sign up form-->
                            <h2>Crea tu cuenta aqui!</h2>
                            <form action="Registrar.jsp">
                                <button type="submit" class="btn btn-default">Registrate</button>
                            </form>
                        </div><!--/sign up form-->
                    </div>
                </div>
            </div>
        </section><!--/form-->

        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>

    </body>
</html>