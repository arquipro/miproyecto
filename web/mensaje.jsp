<%-- 
    Document   : mensaje
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
            <a href="CuentaAdministrador.jsp" class="btn btn-default get">Regresar a principal</a>
        </h2>
        <%@include file="estrucutra/footer.jsp" %>
        <%@include file="estrucutra/js.jsp" %>
    </body>
</html>
