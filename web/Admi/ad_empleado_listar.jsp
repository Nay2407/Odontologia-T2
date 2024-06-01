<%-- 
    Document   : ad_empleado_listar
    Created on : 31 may 2024, 23:39:13
    Author     : User
--%>
<%@page import="tools.Persona"%>
<%@page import="java.util.LinkedList" %>
<%@include file="ad_referencias.jsp" %>
<%
    Persona emp = new Persona();
    LinkedList<Persona> lista = new LinkedList<>();
    lista = emp.listar();
%>

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Usuario</th>
            <th scope="col">Nombre</th>
            <th scope="col">Apellido</th>
            <th scope="col">Sexo</th>
            <th scope="col">Telefono</th>
            <th scope="col">Correo</th>
            <th scope="col">Accion</th>
        </tr>
    </thead>
    <tbody>
        <%
             if (lista != null) {
                    for (Persona emx : lista) {
        %>
        <tr>
            <td scope="row"><%= emx.getIdpersona()%></td>
            <td>><%= emx.getIdpersona()%></td>
            <td><%= emx.getNombre()%></td>
            <td><%= emx.getApellido()%></td>
            <td><%= emx.getGenero()%></td>
            <td><%= emx.gettelefono()%></td>
            <td><%= emx.getcorreo()%></td>
            <td>
                <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-pen-to-square" style="color: #000000;"></i></button>
                <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EliminarEmpleado"><i class="fa-solid fa-trash" style="color: #000000;"></i></button>

            </td>
        </tr>
        <%
                    } // Cierra el for
                } else { // Agrega un bloque else para manejar el caso cuando lista es null
        %>
        <tr>
            <td colspan="3">No hay datos disponibles.</td>
        </tr>
        <%
            } // Cierra el if

        %>

    </tbody>
</table>
