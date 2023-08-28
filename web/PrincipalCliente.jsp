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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark p-3">
            <div class="container-fluid">
                <a class="navbar-brand" href="Home.jsp" target="myFrame">
                    <img src="img/LogoVentas.png" alt="Logo" width="30" height="30" class="d-inline-block align-text-top">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link mx-2 active" aria-current="page" href="Controlador?menu=Home" target="myFrame">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2" href="Controlador?menu=Catalogo&accion=listar" target="myFrame">Catalogo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2" href="Controlador?menu=Empleado&accion=listar" target="myFrame">Empleados</a>
                        </li>
                    </ul>
                </div>
                <div class="dropdown-center">
                    <a class="btn btn-dark dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ${usuario.getNombresCliente()}
                    </a>

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-dark">
                        <li>
                            <a class="dropdown-item text-center" href="#">
                                <img class="rounded-circle" src="ControladorIMGCli?codigoCliente=${usuario.getCodigoCliente()}" alt="foto" width="50"><br>
                                ${usuario.getUsuario()}
                            </a>
                            <a class="dropdown-item text-center" href="#">${usuario.getCorreo()}</a>
                        </li>
                        <li><hr class="dropdown-divider"></li>
                        <li>
                            <form action="Validar" method="POST">
                                <div class="d-md-flex justify-content-center ">
                                    <button name="accion" name="Salir" class="btn btn-danger text-center" href="#">Cerra sesion</button>
                                </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <iframe src="Home.jsp" name="myFrame" style="height: 564px; width: 100%; border: none;" frameborder="0"></iframe>            

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>
