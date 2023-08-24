<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="author" content="Muhamad Nauval Azhar">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="This is a login page template based on Bootstrap 5">
        <title>Kawwai Shop</title>
        <link href="img/LogoVentas.png" rel="shortcut icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>
    <body>
        <section class="h-100">
            <div class="container h-100">
                <div class="row justify-content-sm-center h-100">
                    <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                        <div class="card shadow-lg my-5 rounded">
                            <div class="card-body p-5 ">
                                <div class="">
                                    <h1 class="card-title fw-bold mb-4 text-dark">Kawaii Shop <img src="img/LogoVentas.png" alt="logo" width="100"> </h1>
                                </div>
                                <h3 class="fs-4 fw-bold mb-4">Login</h3>
                                <form method="POST" class="needs-validation" action="Validar" autocomplete="off">
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="email">Usuario</label>
                                        <input id="email" class="form-control" type="text" name="txtUser" required>
                                        <div class="invalid-feedback">
                                            Email is invalid
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <div class="mb-2 w-100">
                                            <label class="text-muted" for="password">Contraseña</label>
                                            <a href="forgot.html" class="float-end">
                                                ¿Olvidaste tu contraseña?
                                            </a>
                                        </div>
                                        <input id="password" type="password" class="form-control" name="txtPass" required>
                                        <div class="invalid-feedback">
                                            Password is required
                                        </div>
                                    </div>
                                    <div class="d-grid gap-2 py-3">
                                        <button class="btn btn-primary" type="submit" name="accion" value="Ingresar">
                                            Login
                                        </button>
                                    </div> 
                                </form>
                            </div>
                            <div class="card-footer">
                                <div class="text-center">
                                    ¿No tienes una cuenta? <a href="register.html" >registro</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>