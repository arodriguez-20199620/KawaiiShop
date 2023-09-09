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
                <div class="col-9">
                    <table class="table aling-middle table-striped text-center table-hover">
                        <thead class="table-dark">
                            <tr>
                                <td> </td>
                                <td>Producto</td>
                                <td>Precio unitario</td> 
                                <td>Cantidad</td> 
                                <td>Acciones</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${carrito}">
                                <tr>                            
                                    <td><img src="" height="50" alt=" "></td>
                                    <td>${c.getCodigoCompra()}</td>
                                    <td></td>
                                    <td class="col-2">
                                        <input type="number" name="txtCantidad" class="form-control text-center">
                                    </td>
                                    <td>
                                        <a class="btn btn-danger btn-sm" href="Controlador?menu=Editorial&accion=Eliminar&codigoEditorial=${e.getIdEditorial()}"><i class="fa-solid fa-trash" style="color: #ffffff;"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-3">
                    <!-- FORMUlARIO PARA AGREGAR -->
                    <form action="Controlador?menu=Carrito" method="POST" autocomplete="off">
                        <div class="card">
                            <div class="card-header text-center">
                                <h5>TOTAL DEL CARRITO</h5>
                            </div>
                            <div class="card-body">
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Cantida productos</span>
                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" readonly>
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text">Total</span>
                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" readonly>
                                </div>
                                <div class="card-footer text-end">
                                    <a class="btn btn-primary ms-auto">Comprar</a>
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
