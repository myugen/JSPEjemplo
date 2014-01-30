<%-- 
    Document   : index
    Created on : 29-ene-2014, 10:40:16
    Author     : Usuario
--%>
<%@ page language="java" %>
<%@ page import="ConsultaJSP.datos.Contacto" %>
<%@ page import="ConsultaJSP.datos.ConsultaMatricula" %>
<%@ page import="java.util.LinkedList" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta a base de datos</title>
    </head>
    <body>
        <h1>Consulta a base de datos</h1>
        <table border="1">
            <tr>
                <td>Código</td>
                <td>Nombre</td>
                <td>Apellidos</td>
            </tr>
            <%
                LinkedList<Contacto> lista = ConsultaMatricula.getContactos();
                for(int i = 0; i < lista.size(); i++){
                    out.println("<tr>");
                    out.println("<td>"+lista.get(i).getCodigo()+"</td>");
                    out.println("<td>"+lista.get(i).getNombre()+"</td>");
                    out.println("<td>"+lista.get(i).getApellido()+"</td>");
                    out.println("</tr>");
                }
            %>
        </table>
        <br/>
        <form method="post" action="altas.jsp">
            <fieldset>
                <legend>Alta registro</legend>
                <label>Código</label><input type="text" name="TxtCodigo"/><br/>
                <label>Nombre</label><input type="text" name="TxtNombre"/><br/>
                <label>Apellidos</label><input type="text" name="TxtApellidos"/><br/>
                <input type="submit" value="Dar de alta"/>
            </fieldset>
        </form>
    </body>
</html>
