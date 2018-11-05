<%-- 
    Document   : Error
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1 align="center">
            <%
                if (request.getParameter("mens") != null) {
                    out.println(request.getParameter("mens"));
                }
            %>
        </h1><br>
        <h2 align="center">
            <a href="InicioSesion.jsp" class="btn btn-default get">Inicio</a>
        </h2>
	<div class="container text-center">
		<div class="logo-404">
			<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
		</div>
		<div class="content-404">
			<img src="images/404/404.png" class="img-responsive" alt="" />
			<h1><b>OPPS!</b> No pudimos encontrar esta página</h1>
			<p>Uh... Parece que el enlace está roto. La página que está buscando no existe.</p>
			<h2><a href="index.jsp">Ir a la página principal.</a></h2>
		</div>
	</div>
        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
