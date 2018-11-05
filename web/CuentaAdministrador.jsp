<%-- 
    Document   : CuentaAdministrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>Administrador</title>
        <%@include file="estrucutra/css.jsp" %>
    </head>
    <body>
        <%@include file="estrucutra/headerMedio.jsp" %>
        <div class="header-bottom"><!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Navegación</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <div class="mainmenu pull-left">
                            <h2> Menu administrador </h2>
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li class="dropdown"><a href="#">Registrar nuevo<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="RegistrarClaseProducto.jsp">Clase producto</a></li> 
                                        <li><a href="RegistrarMarcaProducto.jsp">Marca producto</a></li> 
                                        <li><a href="RegistrarProducto.jsp">Producto</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Registros Activos<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="MostrarCP.jsp">Clase producto</a></li> 
                                        <li><a href="MostrarMP.jsp">Marca producto</a></li> 
                                        <li><a href="MostrarProducto.jsp">Producto</a></li>                                      
                                        <li><a href="MostrarUsuario.jsp">Usuario</a></li> 
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Registros inactivos<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="MostrarCPEliminados.jsp">Clase producto</a></li> 
                                        <li><a href="cart.jsp">Marca producto</a></li> 
                                        <li><a href="MostrarProductosEliminados.jsp">Producto</a></li>                                      
                                        <li><a href="MostrarUsuarioEliminado.jsp">Usuario</a></li> 
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Ventas<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="MostrarVenta.jsp">Ir a ventas</a></li>  
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Mi catalogo<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="Catalogo.jsp">Ir a catalogo</a></li> 
                                    </ul>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div><!--/header-bottom-->


        <section id="slider">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            </ol>

                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="col-sm-6">
                                        <h1><span>Panel</span>-Administracion</h1>
                                        <h3>Sistema de administracion, acceso solo para administradores del sistema</h3>
                                        <p>- Reguistrar </p>
                                        <p>- Modificar</p>
                                        <p>- Eliminar</p>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="images/2aa.png" class="girl img-responsive" alt="InisioSesion.jsp" />
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section><!--/slider-->
        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
