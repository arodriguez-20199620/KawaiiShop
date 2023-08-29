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
    </head>
    <body>
        <div class="container mt-4">  
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <c:forEach var="producto" items="${productos}">    
                    <div class="card mx-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4 mt-3">
                                <img src="ControladorIMGProd?codigoProducto=${producto.getCodigoProducto()}" class="img-fluid rounded-start" alt="...">
                                <button class="btn btn-primary mt-3" href="">
                                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 640 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M48 0C21.5 0 0 21.5 0 48V368c0 26.5 21.5 48 48 48H64c0 53 43 96 96 96s96-43 96-96H384c0 53 43 96 96 96s96-43 96-96h32c17.7 0 32-14.3 32-32s-14.3-32-32-32V288 256 237.3c0-17-6.7-33.3-18.7-45.3L512 114.7c-12-12-28.3-18.7-45.3-18.7H416V48c0-26.5-21.5-48-48-48H48zM416 160h50.7L544 237.3V256H416V160zM112 416a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm368-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z"/></svg>
                                    Agregar
                                </button>

                                <p class="card-text fw-bold mt-3"> Cantidad</p>
                                <input class="form-control"type="number" name="cantidad" min="1" value="1"/>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">${producto.getNombreProducto()}</h5>
                                    <p class="card-text">${producto.getDescripcion()}</p>
                                    <p class="card-text fw-bold"><small class="text-body-secondary">Precio: Q${producto.getPrecio()}</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!--
                <c:forEach var="producto" items="${productos}">    
                    <div class="col">
                        <div class="card" style="width: 350px;">
                            <img src="ControladorIMGProd?codigoProducto=${producto.getCodigoProducto()}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${producto.getNombreProducto()}</h5>
                                <p class="card-text">${producto.getDescripcion()}</p>
                                <div class="clearfix">
                                    <p class="card-text float-start">Precio: Q${producto.getPrecio()}</p>
                                    <p class="card-text float-end">Disponible ${producto.getStock()}</p>
                                </div>
                            </div>
                            <div class="card-footer">
                                <form action="Controlador?menu">
                                    <div class="row">
                                        <div class="col">
                                            <input class="form-control float-end"type="number" name="cantidad" min="1" value="1"/>
                                        </div>
                                        <div class="col">
                                            <button class="btn btn-primary float-start" href="">
                                                
                                                Agregar
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                -->
            </div>
        </div>
    </body>
</html>
