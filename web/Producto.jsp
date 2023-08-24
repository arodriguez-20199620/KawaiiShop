<%-- 
    Document   : Producto
    Created on : 18/07/2023, 07:57:22 AM
    Author     : informatica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <title>Productos</title>
    </head>
    <body>
        <div class="container-fluid px-5 mt-3">

            <!-- Titulo y button de agregar producto -->
            <h1>Listado de productos</h1>
            <div class="d-flex justify-content-end"> <!-- Flex container for right alignment -->
                <div>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-bag-check-fill" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zm-.646 5.354a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"></path>
                        </svg>
                        Agregar producto
                    </button>

                </div>
            </div>

            <!-- Agregar producto -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="Controlador?menu=Producto" method="POST" autocomplete="off">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar producto</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Nombre:</label>
                                    <input type="text" value="${producto.getNombreProducto()}" name="txtNombreProducto" class="form-control" required> 
                                </div>
                                <div class="form-group">
                                    <label>Precio:</label>
                                    <input type="" value="${producto.getPrecio()}" name="txtPrecio" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Stock:</label>
                                    <input type="number" value="${producto.getStock()}" name="txtStock" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Estado:</label>
                                    <input type="text" value="${producto.getEstado()}" name="txtEstado" class="form-control" required>
                                </div>
                            </div>
                            <div class="modal-footer modal-div">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-success">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="mt-3">
                <table class="table table-striped text-center table-hover">
                    <thead>
                        <tr>
                            <td class="bg-dark text-white">CODIGO</td>
                            <td class="bg-dark text-white">NOMBRE</td>
                            <td class="bg-dark text-white">PRECIO</td>
                            <td class="bg-dark text-white">STOCK</td>
                            <td class="bg-dark text-white">ESTADO</td>
                            <td class="bg-dark text-white">ACCIONES</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="producto" items="${productos}">    
                            <tr>
                                <td>${producto.getCodigoProducto()}</td>
                                <td>${producto.getNombreProducto()}</td>
                                <td>${producto.getPrecio()}</td>
                                <td>${producto.getStock()}</td>
                                <td>${producto.getEstado()}</td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editarModal${producto.getCodigoProducto()}">
                                        <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.7 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160V416c0 53 43 96 96 96H352c53 0 96-43 96-96V320c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V160c0-17.7 14.3-32 32-32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H96z"/></svg>                                
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="editarModal${producto.getCodigoProducto()}" tabindex="-1" aria-labelledby="editarModalLabel${producto.getCodigoProducto()}" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form action="Controlador?menu=Producto&codigoProducto=${producto.getCodigoProducto()}" method="POST" autocomplete="off">
                                                    <div class="modal-header">
                                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <label>Nombre:</label>
                                                            <input type="text" value="${producto.getNombreProducto()}" name="txtNombreProducto" class="form-control" required> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Precio:</label>
                                                            <input type="text" value="${producto.getPrecio()}" name="txtPrecio" class="form-control" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Stock:</label>
                                                            <input type="text" value="${producto.getStock()}" name="txtStock" class="form-control" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Estado:</label>
                                                            <input type="text" value="${producto.getEstado()}" name="txtEstado" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Eliminar&codigoProducto=${producto.getCodigoProducto()}">
                                        <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"/></svg
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>
