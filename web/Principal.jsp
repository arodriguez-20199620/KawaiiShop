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
                    Kawaii Shop
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class=" collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav ms-auto ">
                        <li class="nav-item">
                            <a class="nav-link mx-2 active" aria-current="page" href="Controlador?menu=Home" target="myFrame">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2" href="Controlador?menu=Producto&accion=listar" target="myFrame">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2" href="Controlador?menu=Empleado&accion=listar" target="myFrame">Empleados</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2" href="Controlador?menu=Cliente&accion=listar" target="myFrame">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2" href="Controlador?menu=RegistrarVenta" target="myFrame">Registrar Venta</a>
                        </li>   
                        <li class="nav-item dropdown">
                            <a class="nav-link mx-2 dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                ${usuario.getNombresEmpleado()}
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item text-center" href="#">
                                    <img src="" alt="" width="50"/>
                                </a>
                                <li><a class="dropdown-item text-center" href="#">${usuario.getUsuario()}</a></li>
                                <li><a class="dropdown-item text-center" href="#">${usuario.getUsuario()}@kinal.edu.gt</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <form action="Validar" method="POST">
                                    <button name="accion" name="Salir" class="dropdown-item text-center btn-danger" href="#">Salir</button>
                                </form>
                            </ul>
                        </li>
                    </ul>
                    <ul class="navbar-nav ms-auto d-none d-lg-inline-flex">
                        <li class="nav-item mx-2">
                            <a class="nav-link text-dark h5" href="" target="blank"><i class="fab fa-google-plus-square"></i></a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link text-dark h5" href="" target="blank"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link text-dark h5" href="" target="blank"><i class="fab fa-facebook-square"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <iframe src="Home.jsp" name="myFrame" style="height: 560px; width: 100%; border: none;" frameborder="0"></iframe>            

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>
