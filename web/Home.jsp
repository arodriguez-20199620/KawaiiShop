<%-- 
    Document   : Home
    Created on : 9/08/2023, 09:24:38 AM
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="noticias">
            <header id="inicio" class="bg-dark text-white text-center" style="background-color: #CD6272;">
                <div class="container">
                    <div id="carouselExampleCaptions" class="carousel slide">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="img/slider1.jpg" class="d-center w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Chainsaw man</h5>
                                    <p>El anime que parece ser un fracaso para los espectadores.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="img/slider2.jpg" class="d-center w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Cyberpunk: Edgerunners</h5>
                                    <p>Cyberpunk 2077 revive de manera milagrosa luego del estreno de la serie Edgerunners.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="img/slider3.jpg" class="d-center w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Zom 100 bucket list of the dead barner</h5>
                                    <p>Crunchyroll también transmitirá Zom 100: Bucket List of the Dead y con doblaje latino</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="img/slider4.jpg" class="d-center w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>My love story with yamada-kun at lv999</h5>
                                    <p>Cyberpunk 2077 revive de manera milagrosa <br>luego del estreno de la serie Edgerunners.</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </header>
        </section>

        <section id="productos" class="py-5">
            <div class="container">
                <h2 class="text-center mb-5">Nuevos Lanzamientos</h2>
                <div class="row">
                    <div class="col-lg-4 mb-5">
                        <div class="card">
                            <img src="img/Mangas/ChainsawManVol1.jpg" class="card-img-top" alt="Computadora Gamer 1">
                            <div class="card-body">
                                <h5 class="card-title">Chainsaw Man Vol. 1</h5>
                                <p class="card-text">Potencia y rendimiento excepcionales para los juegos más exigentes.</p>
                                <a href="#" class="btn btn-dark">Ver detalles</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-5">
                        <div class="card">
                            <img src="img/Mangas/Zom100Vol1.jpg" class="card-img-top" alt="Computadora Gamer 2">
                            <div class="card-body">
                                <h5 class="card-title">Zom 100 bucket list of the dead barner Vol.1</h5>
                                <p class="card-text">Sumérgete en mundos virtuales con gráficos de alta calidad y fluidez.</p>
                                <a href="#" class="btn btn-dark">Ver detalles</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-5">
                        <div class="card">
                            <img src="img/Mangas/oshinokoVol1.jpg" class="card-img-top" alt="Computadora Gamer 3" >
                            <div class="card-body">
                                <h5 class="card-title">Oshi no ko Vol.1</h5>
                                <p class="card-text">Rendimiento inigualable para una experiencia de juego inmersiva.</p>
                                <a href="#" class="btn btn-dark">Ver detalles</a>
                            </div>
                        </div>
                    </div>
                    <a href="productos.html" class="text-center">Ver más...</a>
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
        <section>
            <div class="container-fluid py-3 text-center bg-dark text-white">
                <p><img src="img/Foto.jpg" alt="foto" height="400px"> <br>
                    proyecto hecho en java ee para un proyecto sobre ventas todo esto gestionado en una base de datos usando mysql
                </p>
            </div>
        </section>
        <footer class="bg-dark text-white py-3 text-center">
            <div class="container">
                <p>&copy; 2023 Kawaii Shop. Todos los derechos reservados.</p>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>
