
<%-- 
    Document   : index
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Inicio |  Sistema de ventas de carretillas online</title>
        <%@include file="estrucutra/css.jsp" %>
    </head><!--/head-->

    <body>

        <%@include file="estrucutra/header.jsp" %>
        <%@include file="estrucutra/slider.jsp" %>
        <%@include file="estrucutra/confianza.jsp" %>


       <section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					
				<%@include file="estrucutra/izquierda.jsp" %>	
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--item agre-->
						<h2 class="title text-center">Caracteristicas de cada producto</h2>
                                                <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/1aa.jpg" alt=""/>
										<h2>s/120.99</h2>
                                                                                
										<p>Carretilla Buggie libiana</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Compra Aqui</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>s/120.99</h2>
											<p>Carretilla Buggie libiana</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Compra Aqui</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Añadir a la lista de deseos</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Añadir para comparar</a></li>
									</ul>
								</div>
							</div>
						</div>
                                                
                                                <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
                                                                                <img src="images/2aa.png" alt=""/>
										<h2>s/125.99</h2>
										<p>Carretilla Fercons pesada</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar aqui</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>s/125.99</h2>
										        <p>Carretilla Fercons pesada</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar aqui</a>
										</div>
									</div>
									<img src="images/home/new.png" class="new" alt="" />
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Añadir a la lista de deseos</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Añadir para comparar precio</a></li>
									</ul>
								</div>
							</div>
						</div>
                                                <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/3aa.jpg" alt="" />
										<h2>s/90.99</h2>
										<p>Carretilla Fercons libiana</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Compra Aqui</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>s/90.99</h2>
											<p>Carretilla Fercons libiana</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Compra Aqui</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Añadir a la lista de deseos</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Añadir para comparar precios</a></li>
									</ul>
								</div>
							</div>
						</div>
                                                
                                                <!--Cargar productos-->					
						
                                                						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--facturacion de productos-->
				</div>
			</div>
		</div>
	</section>

        <%@include file="estrucutra/footer.jsp" %>
 <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
