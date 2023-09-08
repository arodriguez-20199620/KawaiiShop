<%-- 
    Document   : Carrito
    Created on : 28/08/2023, 10:34:38 PM
    Author     : Kaled Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid mt-3">
            <div class="row gx-3">  
                <div class="col-8">
                    <table class="table aling-middle table-striped text-center table-hover">
                        <thead class="table-dark">
                            <tr>
                                <td>Editorial</td>
                                <td class="col-sm-5">Descripcion</td>
                                <td>Acciones</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>                            
                                <td></td>
                                <td></td>
                                <td>
                                    <a class="btn btn-danger btn-sm" href="Controlador?menu=Editorial&accion=Eliminar&codigoEditorial=${e.getIdEditorial()}"><i class="fa-solid fa-trash" style="color: #ffffff;"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-4">
                <!-- FORMUlARIO PARA AGREGAR -->
                <form action="Controlador?menu=Editorial" method="POST" autocomplete="off">
                    <div class="card">
                        <div class="card-header text-center">
                            <h5>Agregar editorial</h5>
                        </div>
                        <div class="card-body">
                            <div class="form-floating my-3">
                                <input type="text" class="form-control form-control-sm" id="floatingInput" name="txtEditorial" required>
                                <label for="floatingInput">Editorial</label>
                            </div>
                            <div class="form-floating my-3">
                                <textarea class="form-control" name="txtDescripcion" id="floatingTextarea" style="height: 150px" required="on"></textarea>
                                <label for="floatingTextarea">Descripcion</label>
                            </div>
                            <div class="d-flex justify-content-end">
                                <button type="submit" name="accion" value="Agregar" class="btn btn-success mx-2">Agregar</button>
                                <button type="reset" name="accion" value="Cancelar" class="btn btn-secondary">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
