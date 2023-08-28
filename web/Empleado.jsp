<%-- 
    Document   : Empleado
    Created on : 18/07/2023, 07:56:46 AM
    Author     : informatica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <title>Empleados</title>
    </head>
    <body>
        <div class="container-fluid px-5 mt-3">

            <!-- Titulo y button agregar empleado -->
            <h1>Listado de empleado</h1>
            <div class="d-flex justify-content-end"> <!-- Flex container for right alignment -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 320 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M112 48a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm40 304V480c0 17.7-14.3 32-32 32s-32-14.3-32-32V256.9L59.4 304.5c-9.1 15.1-28.8 20-43.9 10.9s-20-28.8-10.9-43.9l58.3-97c17.4-28.9 48.6-46.6 82.3-46.6h29.7c33.7 0 64.9 17.7 82.3 46.6l58.3 97c9.1 15.1 4.2 34.8-10.9 43.9s-34.8 4.2-43.9-10.9L232 256.9V480c0 17.7-14.3 32-32 32s-32-14.3-32-32V352H152z"/></svg>
                    Agregar empleado
                </button>
            </div>

            <!-- Agregar empleado -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="Controlador?menu=Empleado" method="POST"  enctype="multipart/form-data" autocomplete="off">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar empleado</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>DPI:</label>
                                    <input type="text" value="${empleado.getDPIEmpleado()}" name="txtDPIEmpleado" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Foto:</label>
                                    <input type="file" value="${empleado.getFotoPerfil()}" name="foto" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Nombre:</label>
                                    <input type="text" value="${empleado.getNombresEmpleado()}" name="txtNombreEmpleado" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Telefono:</label>
                                    <input type="text" value="${empleado.getTelefonoEmpleado()}" name="txtTelefono" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Estado</label>
                                    <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control" required>
                                </div> 
                                <div class="form-group">
                                    <label>Usuario</label>
                                    <input type="text" value="${empleado.getUsuario()}" name="txtUsuario" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Correo electronico:</label>
                                    <input type="text" value="${empleado.getCorreo()}" name="txtCorreo" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Roles</label>
                                    <select value="${empleado.getRol()}" name="cbRoles" class="form-control">
                                        <option value=""></option>
                                        <option value="Administrador">Administrador</option>
                                        <option value="Miembro  ">Miembro</option>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer modal-div">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-outline-primary">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-success">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>



            <table class="mt-3 table table-striped text-center table-hover">
                <thead>
                    <tr>
                        <td class="bg-dark text-white">Codigo</td>
                        <td class="bg-dark text-white">DPI</td>
                        <td class="bg-dark text-white">Foto</td>
                        <td class="bg-dark text-white">Nombres</td>
                        <td class="bg-dark text-white">Telefono</td>
                        <td class="bg-dark text-white">Estado</td>
                        <td class="bg-dark text-white">Usuario</td>
                        <td class="bg-dark text-white">Correo electronico</td>
                        <td class="bg-dark text-white">Rol</td>
                        <td class="bg-dark text-white">ACCIONES</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="empleado" items="${empleados}">    
                        <tr>
                            <td>${empleado.getCodigoEmpleado()}</td>
                            <td>${empleado.getDPIEmpleado()}</td>
                            <td><img src="ControladorIMG?codigoEmpleado=${empleado.getCodigoEmpleado()}" width="50" height="50"></td>
                            <td>${empleado.getNombresEmpleado()}</td>
                            <td>${empleado.getTelefonoEmpleado()}</td>
                            <td>${empleado.getEstado()}</td>
                            <td>${empleado.getUsuario()}</td>
                            <td>${empleado.getCorreo()}</td>
                            <td>${empleado.getRol()}</td>
                            <td>
                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editarModal${empleado.getCodigoEmpleado()}">
                                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.7 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160V416c0 53 43 96 96 96H352c53 0 96-43 96-96V320c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V160c0-17.7 14.3-32 32-32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H96z"/></svg>                                
                                </button>
                                <div class="modal fade" id="editarModal${empleado.getCodigoEmpleado()}" tabindex="-1" aria-labelledby="editarModalLabel${empleado.getCodigoEmpleado()}" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <form action="Controlador?menu=Empleado&codigoEmpleado=${empleado.getCodigoEmpleado()}" method="POST" autocomplete="off" >
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Editar empleado</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        <label>DPI:</label>
                                                        <input type="text" value="${empleado.getDPIEmpleado()}" name="txtDPIEmpleado" class="form-control" required>
                                                    </div>

                                                    <div class="form-group">
                                                        <label>Nombre:</label>
                                                        <input type="text" value="${empleado.getNombresEmpleado()}" name="txtNombreEmpleado" class="form-control" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Telefono:</label>
                                                        <input type="text" value="${empleado.getTelefonoEmpleado()}"  name="txtTelefono" class="form-control" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Estado</label>
                                                        <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Usuario</label>
                                                        <input type="text" value="${empleado.getUsuario()}" name="txtUsuario" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="modal-footer modal-div">
                                                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&codigoEmpleado=${empleado.getCodigoEmpleado()}">
                                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"/></svg>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>
