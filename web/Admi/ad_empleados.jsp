<%-- 
    Document   : ad_empleados
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%@include file="ad_referencias.jsp" %>
  <link rel="stylesheet" href="css/ad_empleados.css">
  <link rel="stylesheet" href="css/ad_index.css">
  <title>Empleados</title>
</head>

<body>
  <nav>
    <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion"
        aria-expanded="false" aria-controls="navegacion">
        <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
    </button>
    <div style="min-height: 150px;">


        <div class="collapse collapse-horizontal" id="navegacion">

            <div class="enlaces" style="width: 250px;">
                <a href="ad_index.jsp">Inicio</a>
                <a href="ad_paciente.jsp">Paciente</a>
                <a href="ad_empleados.jsp">Empleados</a>
                <a href="ad_inventario.jsp">Equipo</a>
            </div>
            <div class="enlaces">
                <a href="../login.jsp">Salir</a>
            </div>

        </div>
    </div>
</nav>
  <main class="container">
    <div class="position-relative">
      <center>
        <h1>Lista de Empleados</h1>
        <br>
      </center>
      <div class="position-absolute bottom-0 end-0">
        <form class="d-flex " role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-secondary" type="submit">Search</button>
      </form>
      </div>
    </div>
    <div>
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
          <tr>
            <th scope="row">1</th>
            <td>f.iman</td>
            <td>Franco</td>
            <td>Iman</td>
            <td>Masculino</td>
            <td>923564879</td>
            <td>f.iman@mdo</td>
            <td>
              <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-pen-to-square" style="color: #000000;"></i></button>
              <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EliminarEmpleado"><i class="fa-solid fa-trash" style="color: #000000;"></i></button>
              
            </td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>p.arana</td>
            <td>Piero</td>
            <td>Arana</td>
            <td>Masculino</td>
            <td>985632569</td>
            <td>p.arana@gmail.com</td>
            <td>
              <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-pen-to-square" style="color: #000000;"></i></button>
              <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EliminarEmpleado"><i class="fa-solid fa-trash" style="color: #000000;"></i></button>
              
            </td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>c.delacruz</td>
            <td>Cleff</td>
            <td>De la Cruz</td>
            <td>Masculino</td>
            <td>985632569</td>
            <td>c.delacruz@gmail.com</td>
            <td>
              <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EditarEmpleado"><i class="fa-solid fa-pen-to-square" style="color: #000000;"></i></button>
              <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#EliminarEmpleado"><i class="fa-solid fa-trash" style="color: #000000;"></i></button>
            </td>
          </tr>
        </tbody>
      </table>
      <!-- Button trigger modal -->
      <div class="position-absolute bottom-0 end-0 but">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#RegistrarEmpleado">
          Registrar Empleado
        </button>
      </div>
      <!--------------------------------------  Modal Registrar Empleado -------------------------->
      <div class="modal fade" id="RegistrarEmpleado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title fs-5" id="staticBackdropLabel">Registrar Empleado</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form class="row g-3">
                <div class="col-md-12">
                  <label for="inputUsuario4" class="form-label">Usuario</label>
                  <input type="text" class="form-control" id="inputUsuario">
                </div>
                <div class="col-md-6">
                  <label for="inputNombre" class="form-label">Nombre</label>
                  <input type="text" class="form-control" id="inputNombre">
                </div>
                <div class="col-6">
                  <label for="inputApellido" class="form-label">Apellido</label>
                  <input type="text" class="form-control" id="inputApellido" placeholder="Lopez">
                </div>
                <div class="col-md-4">
                  <label for="inputState" class="form-label">Sexo</label>
                  <select id="inputState" class="form-select">
                    <option selected>Masculino</option>
                    <option>Femenino</option>
                  </select>
                </div>
                <div class="col-8">
                  <label for="inputTelefono" class="form-label">Telefono</label>
                  <input type="int" class="form-control" id="inputTelefono" placeholder="+51987654321">
                </div>
                <div class="col-md-12">
                  <label for="inputCity" class="form-label">Correo</label>
                  <input type="text" class="form-control" id="inputCity">
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary" style="background-color: #032A38;">Registrar</button>
            </div>
          </div>
        </div>
      </div>
      <!-------------------------------- Modal Editar Empleado ------------------------------------------->
      <div class="modal fade" id="EditarEmpleado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title fs-5" id="staticBackdropLabel">Editar Empleado</h4>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form class="row g-3">
                <div class="col-md-12">
                  <label for="inputUsuario4" class="form-label">Usuario</label>
                  <input type="text" class="form-control" id="inputUsuario">
                </div>
                <div class="col-md-6">
                  <label for="inputNombre" class="form-label">Nombre</label>
                  <input type="text" class="form-control" id="inputNombre">
                </div>
                <div class="col-6">
                  <label for="inputApellido" class="form-label">Apellido</label>
                  <input type="text" class="form-control" id="inputApellido" placeholder="Lopez">
                </div>
                <div class="col-md-4">
                  <label for="inputState" class="form-label">Sexo</label>
                  <select id="inputState" class="form-select">
                    <option selected>Masculino</option>
                    <option>Femenino</option>
                  </select>
                </div>
                <div class="col-8">
                  <label for="inputTelefono" class="form-label">Telefono</label>
                  <input type="int" class="form-control" id="inputTelefono" placeholder="+51987654321">
                </div>
                <div class="col-md-12">
                  <label for="inputCity" class="form-label">Correo</label>
                  <input type="text" class="form-control" id="inputCity">
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary">Registrar</button>
            </div>
          </div>
        </div>
      </div>
      <!---------------------------------Eliminar--------------------------------->
      <div class="modal" id="EliminarEmpleado" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">¿Seguro que desea eliminar al Empleado?</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
              <button type="button" class="btn btn-primary">Si</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </main>
</body>

</html>
