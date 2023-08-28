<%-- 
    Document   : Register
    Created on : 26/08/2023, 11:28:37 PM
    Author     : Kaled Rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kawaii shop : Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-sm-center">
                <div class="col-xxl-4 col-xl-9 col-lg-5 col-md-7 col-sm-9">
                    <form action="Validar" method="POST" enctype="multipart/form-data" autocomplete="off">
                        <div class="card shadow-lg rounded mt-4">
                            <div class="card-body ">
                                <div class="card-header text-bg-dark">
                                    <h2 class=""><img src="img/LogoVentas.png" alt="logo" width="50">Registrarse </h2>
                                </div>
                                <div class="card-body mt-4">
                                    <div class="container overflow-hidden">
                                        <div class="row gy-5">
                                            <div class="col-6">
                                                <div class="px-3">
                                                    <h5>Correo electronico:</h5>
                                                    <div class="input-group">
                                                        <input type="email" class="form-control" placeholder="Correo electronico" name="txtCorreo"required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="px-3">
                                                    <h5>Usuario:</h5>
                                                    <div class="input-group">
                                                        <span class="input-group-text" id="basic-addon1">@</span>
                                                        <input type="text" class="form-control" placeholder="Usuario" name="txtUsuario" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="px-3">
                                                    <h5>Nombre/s:</h5>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Nombre completo" name="txtNombres"required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="px-3">
                                                    <h5>DPI:</h5>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="No. Identificacion" name="txtDPI"required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="px-3">
                                                    <h5>Direccion:</h5>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Direccion" name="txtDireccion"required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="px-3">
                                                    <h5>Estado</h5>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Estado" name="txtEstado"required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="px-3">
                                                    <h5>Foto de perfil</h5>
                                                    <div class="input-group">
                                                        <input type="file" class="form-control" placeholder="Foto" name="foto"required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer ms-5">
                                        <div class="d-grid gap-2 d-md-flex justify-content-md-end ">
                                            <button class="btn btn-success btn-lg" type="submit" name="accion" value="Crear">
                                                Crear
                                            </button>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

    </body>
</html>
