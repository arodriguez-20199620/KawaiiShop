<%-- 
    Document   : Empleado1
    Created on : 19/08/2023, 08:58:44 PM
    Author     : Kaled Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Kawaii Shop</title>
        <link href="img/LogoVentas.png" rel="shortcut icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <h2>Listado de servicios</h2>
            <a href="ControladorServicio?accion=agregar">Agregar servicio</a>
            <table class="table text-center table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Costo De Servicio</th>
                        <th>Fecha Servicio</th>
                        <th>Fecha Vencimiento</th>
                        <th>ID Tipo Servicio</th>
                        <th>ID Libro</th>
                        <th>ID Usuario</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>a</td>
                        <td>a</td>
                        <td>a</td>
                        <td>a</td>
                        <td>a</td>
                        <td>a</td>
                        <td>a</td>
                        <td>
                            <button type="button" class="btn btn-success">Editar</button>
                            <button type="button" class="btn btn-danger">Eliminar</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        
        
        
              <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <form action="Controlador?menu=Empleado" method="POST" autocomplete="off">
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


                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
        
    </body>
</html>
