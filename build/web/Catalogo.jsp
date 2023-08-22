<%-- 
    Document   : Productos
    Created on : 18/07/2023, 11:37:55 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Catálogo de Productos</title>
  <!-- Agrega las referencias a los archivos de Bootstrap -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css">
</head>
<body>
  <!-- Barra de navegación -->
  <nav class="navbar fixed-top navbar-expand-lg bg-dark">
    <div class="container-fluid">
      <img src="imagenes/Icon.png" alt="Bootstrap" width="30" height="30">
      <a class="navbar-brand" href="index.html" style="color: white;">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.html" style="color: white;">Inicio</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" style="color: white;"href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Productos
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#" >Mangas</a></li>
              <li><a class="dropdown-item" href="#" >Another action</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#" >Something else here</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contacto" style="color: white;">Contacto</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Catálogo de productos -->
  <section id="productos" class="py-5">
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-4">
          <div class="card">
            <img src="imagenes/Productos/Mangas/ChainsawManVol1.jpg" class="card-img-top" alt="Computadora Gamer 1">
            <div class="card-body">
              <h5 class="card-title">Chainsaw Man Vol. 1</h5>
              <p class="card-text">Descripción del producto 1.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="imagenes/Productos/Mangas/JujutsuKaisenVol1..jpg" class="card-img-top" alt="Producto 2">
            <div class="card-body">
              <h5 class="card-title">Jujutsu Kaisen Vol. 1</h5>
              <p class="card-text">Descripción del producto 2.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="ruta-de-imagen" class="card-img-top" alt="Producto 3">
            <div class="card-body">
              <h5 class="card-title">Producto 3</h5>
              <p class="card-text">Descripción del producto 3.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
      </div>
  
      <div class="row mt-4">
        <div class="col-md-4">
          <div class="card">
            <img src="ruta-de-imagen" class="card-img-top" alt="Producto 4">
            <div class="card-body">
              <h5 class="card-title">Producto 4</h5>
              <p class="card-text">Descripción del producto 4.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="ruta-de-imagen" class="card-img-top" alt="Producto 5">
            <div class="card-body">
              <h5 class="card-title">Producto 5</h5>
              <p class="card-text">Descripción del producto 5.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="ruta-de-imagen" class="card-img-top" alt="Producto 6">
            <div class="card-body">
              <h5 class="card-title">Producto 6</h5>
              <p class="card-text">Descripción del producto 6.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
      </div>
      
      <div class="row mt-4">
        <div class="col-md-4">
          <div class="card">
            <img src="ruta-de-imagen" class="card-img-top" alt="Producto 7">
            <div class="card-body">
              <h5 class="card-title">Producto 7</h5>
              <p class="card-text">Descripción del producto 7.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="ruta-de-imagen" class="card-img-top" alt="Producto 8">
            <div class="card-body">
              <h5 class="card-title">Producto 8</h5>
              <p class="card-text">Descripción del producto 8.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="ruta-de-imagen" class="card-img-top" alt="Producto 9">
            <div class="card-body">
              <h5 class="card-title">Producto 9</h5>
              <p class="card-text">Descripción del producto 9.</p>
              <a href="#" class="btn btn-primary">Comprar</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  
  <section id="contacto" class="bg-light py-5">
    <div class="container">
      <h2 class="text-center mb-5">Contáctanos</h2>
      <div class="row">
        <div class="col-md-6">
          <form>
            <div class="form-group">
              <label for="nombre">Nombre</label>
              <input type="text" class="form-control" id="nombre" placeholder="Ingresa tu nombre">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" class="form-control" id="email" placeholder="Ingresa tu email">
            </div>
            <div class="form-group">
              <label for="mensaje">Mensaje</label>
              <textarea class="form-control" id="mensaje" rows="5" placeholder="Ingresa tu mensaje"></textarea>
            </div>
            <button type="submit" class="btn btn-dark">Enviar mensaje</button>
          </form>
        </div>
        <div class="col-md-6">
          <p>Puedes encontrarnos en:</p>
          <address>
            <strong>Kawaii Shop</strong><br>
            6A Avenida 13-54, Cdad. de Guatemala<br>
            Ciudad de Guatemala, Guatemala<br>
            Teléfono: 2216 0000
          </address>
        </div>
      </div>
    </div>
  </section>

  <footer class="bg-dark text-white py-3 text-center">
    <div class="container">
      <p>&copy; 2023 Kawaii Shop. Todos los derechos reservados.</p>
    </div>
  </footer>
  <!-- Agrega la referencia al archivo de JavaScript de Bootstrap -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>

