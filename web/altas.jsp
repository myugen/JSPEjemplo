<%-- 
    Document   : altas
    Created on : 29-ene-2014, 12:17:10
    Author     : Usuario
--%>
<%@page language="java" %>
<%@ page import="ConsultaJSP.datos.AltaMatricula" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Altas alumnos</title>
    </head>
    <body>
        <%
            int codigo = Integer.parseInt(request.getParameter("TxtCodigo"));
            String nombre = request.getParameter("TxtNombre");
            String apellidos = request.getParameter("TxtApellidos");
            boolean resultado = AltaMatricula.setAlumno(codigo, nombre, apellidos);
            if(resultado)
                out.println("<h1>Registro insertado</h1><br/>");
            else
                out.println("<h1>Registro no insertado</h1><br/>");
        %>
        <a href="index.jsp">Volver a inicio</a>
    </body>
</html>
