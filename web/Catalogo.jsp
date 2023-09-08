<%-- 
    Document   : Catalogo
    Created on : 27/08/2023, 06:54:29 PM
    Author     : Kaled Rodriguez
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/2833bb8570.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container-fluid px-5">  
            <h1 class="mb-5">Catalogo</h1>
            <div class="row">
                <c:forEach var="producto" items="${productos}">    
                    <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                        <div class="card h-100">
                            <a href="#" data-bs-toggle="modal" data-bs-target="#detalles${producto.getCodigoProducto()}"><img class="card-img-top" src="ControladorIMGProd?codigoProducto=${producto.getCodigoProducto()}" height="400" alt=""></a>
                            <div class="card-body text-center">
                                <h3 class="card-title">${producto.getNombreProducto()}</h3>
                                <p class="card-text fs-5">Precio: Q.${producto.getPrecio()}</p>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="detalles${producto.getCodigoProducto()}" tabindex="-1" aria-labelledby="detallesLabel${producto.getCodigoProducto()}" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Detalles</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-4">
                                            <img class="border border-dark rounded"src="ControladorIMGProd?codigoProducto=${producto.getCodigoProducto()}" height="300" alt="">
                                        </div>
                                        <div class="col-8 my-auto">
                                            <h1>${producto.getNombreProducto()}</h1>
                                            <div class="col">
                                                <h3 class="text-success">Q${producto.getPrecio()}</h3>
                                                <p class="fs-6">${producto.getDescripcion()}</p>
                                                <div class="row align-items-start text-center">
                                                    <div class="col">
                                                        <ul class="list-group">
                                                            <li class="list-group-item d-flex justify-content-between align-items-start">
                                                                <div class="fw-bold">Disponibilidad</div>
                                                                <span class="badge bg-primary rounded-pill">${producto.getStock()}</span>
                                                            </li>
                                                        </ul>
                                                    </div>  
                                                    <div class="col">
                                                        <a class="btn btn-dark shadow-lg" href="Controlador?menu=Catalogo&accion=carrito&codigoProducto=${producto.getCodigoProducto()}"><i class="fa-solid fa-truck" style="color: #ffffff;"></i> Agregar al carrito</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div
                    </div>
                </div>
            </c:forEach>
    </body>
</html>
