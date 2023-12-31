<%-- 
    Document   : RegistrarVenta
    Created on : 18/07/2023, 07:59:45 AM
    Author     : informatica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Ventas</title>
        <style>

            @media print{
                .parte01{
                    display: none;
                }
            }

        </style>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <form action="Controlador?menu=RegistrarVenta" parte01 method="POST">
                        <div class="card-body">
                            <!--FORMULARIO CLIENTE-->
                            <div>
                                <label>Datos del Cliente:</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtCodigoCliente" value="${cliente.getDPICliente()}" class="form-control" placeholder="Codigo">
                                    <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNombresCliente" value="${cliente.getNombresCliente()}" class="form-control">
                                </div>
                            </div>
                            <!--FORMULARIO PRODUCTO-->
                            <div class="form-group">
                                <label>Datos Producto</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtCodigoProducto" value="${producto.getCodigoProducto()}" class="form-control" placeholder="Producto">
                                    <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">Buscar</button>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNombreProducto" value="${producto.getNombreProducto()}" class="form-control" placeholder="Producto">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtPrecio" value="${producto.getPrecio()}" class="form-control" placeholder="Q.00.00">
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="txtCantidad" value="1" class="form-control">
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="txtStock" value="${producto.getStock()}" class="form-control" placeholder="Stock">
                                </div>
                            </div>
                            <!--AGREGAR REGISTRO-->
                            <div class="form-group">
                                <div>
                                    <button type="submit" name="accion" value="AgregarVenta" class="btn btn-outline-info">Agregar Producto</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-6 ml-auto">
                            <label>Serie No.</label>
                            <input type="text" name="txtNumSerie" value="${numeroSerie}" class="form-control"> <br>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>NUMERO</th>
                                    <th>CODIGO</th>
                                    <th>DESCRIPCION</th> 
                                    <th>PRECIO</th>
                                    <th>CANTIDAD</th>
                                    <th>SUBTOTAL</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>                            
                                    <c:forEach var="list" items="${lista}">
                                    <tr>
                                        <td>${list.getItem()}</td>
                                        <td>${list.getCodigoProducto()}</td>
                                        <td>${list.getDescripcionProd()}</td>
                                        <td>${list.getPrecio()}</td>
                                        <td>${list.getCantidad()}</td>
                                        <td>${list.getSubTotal()}</td>
                                        <td class="d-flex">
                                            <a href="#" class="btn btn-warning">Editar</a>
                                            <a href="Controlador?menu=RegistrarVenta&accion=Eliminar&codigoProducto=${list.getCodigoProducto()}" class="btn btn-danger" style="margin-left: 10px">Eliminar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-sm-6">
                            <a href="Controlador?menu=RegistrarVenta&accion=GenerarVenta" onclick="print()" class="btn btn-success">Generar Venta</a>
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                        </div>
                        <div class="col-sm-4 ml-auto">
                            <input type="text" name="txtTotal" value="Q.${totalPagar}0" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>