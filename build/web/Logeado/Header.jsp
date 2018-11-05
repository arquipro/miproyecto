<%-- 
    Document   : Header
    Created on : 28/10/2018, 10:30:49 PM
    Author     : ESCRITORIO
--%>

<%@page import="Clase.Usuario_DB"%>
<%@page import="Clase.Usuario"%>

<!--header Logeado-->
<%
    String codigo = (String) session.getAttribute("parametroCodigo");

    Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
    String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
%>

<header id="header"><!--header-->

    <div class="header-middle"><!--header-middle-->
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

                            <form action="Servlet_Usu" method="post" id="frmCabecera">
                                <input type="hidden" value="<%=usu.getTipoUsuario()%>" name="txtTipo" id="txtTipo">
                                <table id="tablaCabecera">
                                    <tr> 
                                    <td>
                                    <li><a href="RegistrarVenta.jsp" class="link" id="lnkCompra"><i class="fa fa-shopping-cart"></i> Mi compra</a></li>
                                    </td>
                                    <td>
                                    <li><a href="MiPerfil.jsp?codigoU=<%=usu.getCodigoUsuario()%>" class="link" id="lnkPerfil"><i class="fa fa-user"></i> BIENVENIDO: <%=usu.getNombreUsuario()%>, <%=usu.getApellidosUsuario()%></a></li>
                                    </td>
                                    <td>
                                    <li><a href="CuentaAdministrador.jsp" class="link" id="lnkAdm"><i class="fa fa-crosshairs"></i> Administrar</a></li>
                                    </td>
                                    <td>
                                    <li><a href="InicioSesion.jsp" class="link" id="lnkLogin"><i class="fa fa-lock"></i> Iniciar Sesion</a></li>
                                    </td>
                                    <td>
                                    <li><a href="index.jsp"  class="link" id="lnkLogout" ><i class="fa fa-lock"></i> Salir</a></li>
                                    </td>
                                    </tr>
                                </table>
                                <input type="hidden" name="accion" value="logout">
                            </form>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->
</header>
<!--/header Logeado-->