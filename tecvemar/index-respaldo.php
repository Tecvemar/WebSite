<!DOCTYPE html>
<?php 
require_once 'db_connect.php';
error_reporting(E_ERROR | E_WARNING | E_PARSE);

// connecting to db
$con = new DB_CONNECT();
//sleep(10);
mysql_query("SET NAMES utf8");
mysql_query("SET CHARACTER_SET utf");  

 ?>
<html lang="en">

<!-- Mirrored from theme.nileforest.com/html/Tecvemar-v1.4/02_Tecvemar_onepage/index8-video_youtube.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Aug 2016 18:07:40 GMT -->
<head>
    <meta charset="utf-8" />
    <title>Tecvemar - Marmoles y Granitos</title>
    <meta name="description" content="" />
    <meta name="keywords" content="creative, portfolio, template, theme, designed, html5, css3, responsive, Tecvemar, onepage" />
    <meta name="author" content="nileforest">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

    <!-- Favicone Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
    <link rel="icon" type="image/png" href="img/favicon.png" />
    <link rel="apple-touch-icon" href="img/favicon.png" />

    <!-- Css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/plugins/animate.css" rel="stylesheet" type="text/css" />
    <link href="css/plugins/YTPlayer.css" rel="stylesheet" type="text/css" />

    <!-- SLIDER REVOLUTION CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

<link rel="stylesheet" href="rs-plugin/vector-map/jquery-jvectormap.css" type="text/css" media="screen"/>
 


</head>
<body>

    <!-- Site preloader -->
    <section id="preloader">
        <div class="site-spinner"></div>
    </section>
    <!-- End Site preloader -->

    <!-- Page Wraper -->
    <div id="page-wraper">
        <div class="wrapper">

            <!-- Header -->
            <div id="header" class="header">
                <div class="header-inner">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="#">
                            <img class="img-thumbnail" src="img/logo-light.png" />
                        </a>
                    </div>
                    <!-- End Logo -->

                    <!--Navigation Icon-->
                    <div class="nav-menu-icon">
                        <a><i class="fa fa-bars"></i></a>
                    </div>
                    <!--End Navigation Icon-->

                    <!-- Navigation Menu -->
                    <div class="nav-menu singlepage-nav">
                        <ul class="nav-menu-inner">
                            <li><a href="#intro">Inicio</a></li>
                            <li><a href="#about">Empresa</a></li>
                            <li><a href="#latest-work">Canteras</a></li>
                            <li><a href="#portfolio">Catalogo</a></li>
                            <li><a href="#exportacion">Exportación</a></li>
                            <li><a href="#client">Obras</a></li>
                            <li><a href="#elements">Noticias</a></li>
                            <li><a href="#contact-us">Contacto</a></li>
                       
                        </ul>
                    </div>
                    <!-- End Navigation Menu -->
                </div>
            </div>
            <!-- End Header -->

            <!--Intro Section-->
            <section id="intro" class="intro-fullscreen bg-image" data-background-img="img/intro-video-bg.jpg">
                <!--Video Hero-->
                <div class="intro-media overlay-dark20">
                    <!-- youtube Video -->
                    <div id="video"  class="ytp-player" data-property="{videoURL:'https://youtu.be/3Mj8DGQYjV0',containment:'#intro', showControls:false, autoPlay:true, loop:true, mute:true, startAt:6, opacity:1, addRaster:false, quality:'default'}"></div>
                    <!-- End youtube Video -->
                </div>
                <div class="intro-caption-waper dark-bg">
                    <div class="intro-full-height container">
                        <div class="intro-content">
                            <div class="intro-content-inner">

                                <h6 class="page-title-alt mb-30">Marmoles y Granitos</h6>

                                <h1 class="intro-title mb-30">Tecvemar
                                </h1>

                                <a class="btn btn-md btn-color scroll-down" href="#about">Ver mas</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- End Video Hero-->

            </section>
            <!-- End Intro Section-->

            <!-- About Section -->
            <section id="about" class="section-padding text-center">
                <div class="container mb-60">
                    <div class="row text-center">
                        <div class="col-md-6 wow slideInUp" data-wow-delay="0.2s" data-wow-duration="1s">
                            <img src="img/mockup03.png" style="max-width: 457px; width: 100%;" class="img-thumbnail" alt="mockup" />
                        </div>
                        <div class="col-md-6 wow fadeIn" data-wow-delay="0.4s" data-wow-duration="2s">
                            <div class="spacer-15"></div>
                            <h6 class="page-title-alt color mb-10">Marmoles y Granitos</h6>
                            <h2 class="page-title mb-25">Nuestra <span class="text-light">Empresa</span></h2>
                            <p class="mb-35"><strong>TECVEMAR C.A.</strong>, es una empresa con más <strong>56 años de experiencia</strong> en la extracción, transformación e instalación de Granitos, Mármoles y otros materiales no ferrosos. 
                            </p> 
                             <img src="img/signature.png" alt="signature" />
                           
                        </div>
                    </div>
                </div>
            </section>
            <!-- End About Section -->

            <!-- About Section 2 -->
            <section id="about2" class="section-padding text-center gray-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-12 content-box mb-sm-30 wow fadeIn" data-wow-delay="0.2s" data-wow-duration="2s">
                            <div class="icon-top icon-black"><i class="icon icon-basic-gear"></i></div>
                            <h5 class="features-title">Calidad</h5>
                            <p>Utilizamos avanzados sistemas de producción y control de calidad.</p>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12 content-box mb-sm-30 wow fadeIn" data-wow-delay="0.4s" data-wow-duration="2s">
                            <div class="icon-top icon-black"><i class="icon icon-basic-paperplane"></i></div>
                            <h5 class="features-title">Precio</h5>
                            <p>Precios accesibles para nuestros clientes.</p>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12 content-box mb-sm-30 wow fadeIn" data-wow-delay="0.6s" data-wow-duration="2s">
                            <div class="icon-top icon-black"><i class="icon icon-basic-globe"></i></div>
                            <h5 class="features-title">Garantía</h5>
                            <p>Nuestra fabrica cuenta con maquinas 100% Italiana.</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End About Section 2 -->

            <!-- Statement1 Section -->
            <section id="Statement1" class="section-padding bg-image overlay-dark dark-bg text-center" data-stellar-background-ratio="0.5" data-background-img="img/full/33.jpg">
                <div class="container">
                    <p class="max-width-700 lead">Contamos con la unica planta resinadora a nivel nacional.</p>
                    <!-- <a class="btn btn-md btn-color">Download</a> -->
                </div>
            </section>
            <!-- End Statement1 Section -->

           

            <hr />

            <!-- Accordian & Skills Section-->
            <section id="accordian_skills" class="section-padding">
                <div class="container text-center">
                    <h2 class="page-title">Habilidades <span class="text-light">&</span> Historia</h2>
                </div>
                <div class="container">
                    <div class="row">
                        <!-- Accordian -->
                        <div class="col-md-6 col-sm-6 mb-sm-30">
                            <div class="accordion">
                                <div class="accordion-title">
                                    <a href="#">TECVEMAR C. A. ( El proceso )</a>
                                </div>
                                <div class="accordion-content">
                                   
El proceso comienza en el Estado Bolívar con la extracción de la materia prima nacional: Bloques de granito. Continúa con su procesamiento en las instalaciones en el estado Miranda -en el eje Guarenas-Guatire- y es ofrecida directamente a través de nuestra red de distribución en los estados Anzoátegui, Bolívar, Carabobo, Falcón, Lara, Miranda y Monagas..
                                </div>
                                <div class="accordion-title">
                                    <a href="#">Fundación: Año ( 1958 ) </a>
                                </div>
                                <div class="accordion-content">
                                 Somos una empresa dedicada a La producción y comercialización de laminas y baldosas de Granito Natural Nacional utilizadas en la industria de La construcción para revestimientos de pisos, paredes, escalones para interiores y exteriores en diferentes formatos y acabados (pulidos, semipulido, flameado, brushing o cepillado). Así como también la comercialización de laminas, baldosas, mosaicos, spaccatos, scapezzatos de Marmol, Travertinos, Pizarras, Coralinas y Granitos Importados.
                                </div>
                                <div class="accordion-title">
                                    <a href="#">Canteras propias ( Tecvemar ) </a>
                                </div>
                                <div class="accordion-content">
                                    Contamos con diversas Canteras propias que garantizan el abastecimiento de la materia prima de Granitos Nacional entre las que se encuentran: Gris Orinokia, Gris Leona, Gris Aro, Rojo Multicolor Orinoco, Rojo Aponwao, Rojo Guaimir, Rojo Amara, Verde Capri, Rosa Caribe.
                                </div>
                            </div>
                        </div>
                        <!-- End Accordian -->

                        <!-- Skills -->
                        <div class="col-md-6 col-sm-6">
                            <div class="skillbar" data-percent="35%">
                                <h6 class="skillbar-title">Planta: </h6>
                                <div class="skill-bar-percent">35.000 Mt2</div>
                                <div class="skillbar-bar">
                                    <div class="skillbar-bar-child"></div>
                                </div>
                            </div>

                            <div class="skillbar" data-percent="90%">
                                <h6 class="skillbar-title">Productividad: </h6>
                                <div class="skill-bar-percent">90.0000 Mt2 Diarios</div>
                                <div class="skillbar-bar">
                                    <div class="skillbar-bar-child"></div>
                                </div>
                            </div>

                            <div class="skillbar" data-percent="60%">
                                <h6 class="skillbar-title">Mano de obra:</h6>
                                <div class="skill-bar-percent">Mas de 60 personas</div>
                                <div class="skillbar-bar">
                                    <div class="skillbar-bar-child"></div>
                                </div>
                            </div>

                            <div class="skillbar" data-percent="100%">
                                <h6 class="skillbar-title">Asesoramiento:</h6>
                                <div class="skill-bar-percent">100%</div>
                                <div class="skillbar-bar">
                                    <div class="skillbar-bar-child"></div>
                                </div>
                            </div>

                               <div class="skillbar" data-percent="100%">
                                <h6 class="skillbar-title">Protección ambiental:</h6>
                                <div class="skill-bar-percent">Cumplimos con la normativa 100%   </div>
                                <div class="skillbar-bar">
                                    <div class="skillbar-bar-child"></div>
                                </div>
                            </div>
                        </div>
                        <!-- End Skills -->
                    </div>
                </div>
            </section>
            <!-- End Accordian & Skills Section-->

            <!-- Testimonials Section-->
            <section id="testimonials" class="section-padding bg-image overlay-dark dark-bg text-center" data-stellar-background-ratio="0.5" data-background-img="img/full/05.jpg">
                <div class="container">
                    <div class="owl-carousel testimonial-carousel nf-carousel-theme white">
                        <div class="item">
                            <div class="testimonial text-center max-width-700">
                                <div class="page-icon-sm"><i class="fa fa-quote-right"></i></div>
                                <p class="lead">Una familia conformada por trabajadores comprometidos.</p>
                                <h6 class="quote-author"><span class="text-regular">( Tecvemar )</span></h6>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial text-center max-width-700">
                                <div class="page-icon-sm"><i class="fa fa-quote-right"></i></div>
                                <p class="lead">Técnica marmolera Venezolana.</p>
                                <h6 class="quote-author">Slogan <span class="text-regular">( Tecvemar )</span></h6>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial text-center max-width-700">
                                <div class="page-icon-sm"><i class="fa fa-quote-right"></i></div>
                                <p class="lead">Exportación de granito nacional hacia países latinoamericanos.!</p>
                                <h6 class="quote-author"> <span class="text-regular">( Tecvemar )</span></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Testimonials Section -->

           

            <hr />

            <!--Latest Work Section-->
            <section id="latest-work" class="section-padding">
                <div class="container text-center">
                    <h2 class="page-title">Nuestras <span class="text-light">Canteras</span></h2>
                </div>
                <div class="owl-carousel content-carousel content-slider">
                    <div class="item">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 mb-sm-30">
                                    <img src="img/foto_mdr.png" alt="" />
                                </div>
                                
                                <div class="col-md-5 col-md-offset-1">
                                    <h4 class="content-title">Cantera 1</h4>
                                    <p>Cras dapibus Vivamus elementum semper nisi Aenean vulputate eleifend tellus Aenean leo ligula, porttitor eu consequat vitae Phasellus viverra nulla ut metus varius laoreet.</p>
                                    <ul class="list-inside">
                                        <li>Branding Design</li>
                                        <li>Web Design</li>
                                    </ul>
                                    <a target="_blank" href="http://google.com/" class="btn btn-md btn-black">Visit Site <i class="fa fa-external-link right"></i></a>
                                </div>


                            </div>
                        </div>
                    </div>
                    




                    <div class="item">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 mb-sm-30">
                                    <img src="img/foto_ccs.png" alt="" />
                                </div>
                                <div class="col-md-5 col-md-offset-1">
                                    <h4 class="content-title">Cantera 2</h4>
                                    <p>Cras dapibus Vivamus elementum semper nisi Aenean vulputate eleifend tellus Aenean leo ligula, porttitor eu consequat vitae Phasellus viverra nulla ut metus varius laoreet.</p>
                                    <p>porttitor eu consequat vitae Phasellus viverra nulla ut metus varius laoreet</p>
                                    <div class="spacer-15"></div>
                                    <a target="_blank" href="http://google.com/" class="btn btn-md btn-black">Visit Site <i class="fa fa-external-link right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>



                </div>
            </section>
            <!-- End Latest Work Section-->

          <?php require_once 'protafolio.php'; ?>

            <!-- Action Box Section -->
            <section id="action-box2" class="action-box action-black">
                <div class="container">
                    <div class="row action-box-left">
                        <h4 class="action-box-title">"En Tecvemar contamos con inventario para sus obras" </h4>
                    </div>
                    <div class="action-box-right">
                        <a class="btn btn-md btn-color" href="http://google.com/" target="_blank">Ver mas</a>
                    </div>
                </div>
            </section>
            <!-- Action Box Section -->

            <!-- Service Section -->
            <section  class="section-padding">
                <div class="container mb-60 text-center">
                    <h2>Nuestros <span class="text-light">Acabados</span></h2>
                    <p class="max-width-700 large"></p>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 pt-30 pt-sm-0">
                            <div class="content-box right wow fadeIn" data-wow-delay="0.2s" data-wow-duration="2s">
                                <div class="icon-right"><i class="icon icon-basic-eye"></i></div>
                                <h5 class="features-title">Sellado</h5>
                                <p>Proceso en el que se dota al mármol de selladores de superficie, que son impermeabilizantes protectores de las superficies. Es un sellado a base de resinas acrílicas de alta calidad, para interiores. No amarillea y hace la limpieza más fácil. Se realiza en acabado brillo y mate.</p>
                            </div>
                            <div class="content-box right wow fadeIn" data-wow-delay="0.2s" data-wow-duration="4s">
                                <div class="icon-right"><i class="icon icon-basic-eye"></i></div>
                                <h5 class="features-title">Apomazado</h5>
                                <p>Acabado que se efectúa mediante la abrasión con piedra pómez u otro abrasivo similar, con un procedimiento similar al que se realiza para el pulido, pero sin llegar al brillo; de esta manera la superficie queda lisa pero completamente mate.</p>
                            </div>
                            <div class="content-box right wow fadeIn" data-wow-delay="0.2s" data-wow-duration="6s">
                                <div class="icon-right"><i class="icon icon-basic-eye"></i></div>
                                <h5 class="features-title">Envejecido</h5>
                                <p>Se desbasta la tabla con 9 cabezales con abrasivos, y luego se trata con 14 cabezales con cepillos, dejando un acabado envejecido, que puede ser mate o con brillo.</p>
                            </div>
                            <div class="content-box right wow fadeIn" data-wow-delay="0.2s" data-wow-duration="8s">
                                <div class="icon-right"><i class="icon icon-basic-eye"></i></div>
                                <h5 class="features-title">Flameado</h5>
                                <p>El flameado consiste en un tratamiento térmico efectuado a alta temperatura en la superficie de rocas graníticas, aplicando sucesivamente una llama con 45º de inclinación, mediante mecheros, sencillos o múltiples, de oxiacetileno que consiguen alcanzar unos 2.800 º C..</p>
                            </div>
                        </div>
                        <div class="col-md-4 hidden-sm hidden-xs text-center">
                            <img src="img/mockup02.png" alt="" />
                        </div>
                        <div class="col-md-4 col-sm-6 pt-30 pt-sm-0">
                            <div class="content-box left wow fadeIn" data-wow-delay="0.2s" data-wow-duration="2s">
                                <div class="icon-left"><i class="icon icon-basic-eye"></i></div>
                                <h5 class="features-title">Resinado</h5>
                                <p>Proceso para enmasillar, principalmente mármol Travertino, y rellenar los huecos propios de este tipo de mármol, conservando una total transparencia. Se aplica una resina formulada con las mejores resinas de Poliéster.</p>
                            </div>
                            <div class="content-box left wow fadeIn" data-wow-delay="0.4s" data-wow-duration="2s">
                                <div class="icon-left"><i class="icon iicon-basic-eye"></i></div>
                                <h5 class="features-title">Mallado</h5>
                                <p>Colocación malla-fibra de vidrio: Consiste en la colocación de una red de malla de fibra de vidrio en la parte trasera de la tabla teniendo como pegamento una resina de poliester, lo que refuerza la tabla y lo dota de mayor resistencia.</p>
                            </div>
                          
                            <div class="content-box left wow fadeIn" data-wow-delay="0.8s" data-wow-duration="2s">
                                <div class="icon-left"><i class="icon icon-basic-eye"></i></div>
                                <h5 class="features-title">Pulido</h5>
                                <p>El pulido se consigue mediante procedimientos de abrasión, pasando por diferentes granulometrías cada vez mas finas, que dan a la piedra ese aspecto brillante.</p>
                            </div>

                              <div class="content-box left wow fadeIn" data-wow-delay="0.6s" data-wow-duration="2s">
                                <div class="icon-left"><i class="icon icon-basic-eye"></i></div>
                                <h5 class="features-title">Masillado</h5>
                                <p> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Service Section -->

            <!-- Counter Section -->
            <section id="counter" class="section-padding bg-image overlay-dark dark-bg" data-stellar-background-ratio="0.5" data-background-img="img/full/14.jpg">
                <div class="container text-center">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 mb-sm-30">
                            <div class="alt-icon-top counter-icon"><i class="icon icon-basic-cup"></i></div>
                            <h1 class="counter-title counter-num">4</h1>
                            <h5 class="counter-sub-title">Telares</h5>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-sm-30">
                            <div class="alt-icon-top counter-icon"><i class="icon icon-basic-heart"></i></div>
                            <h1 class="counter-title counter-num">8352</h1>
                            <h5 class="counter-sub-title">clientes</h5>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-sm-30">
                            <div class="alt-icon-top counter-icon"><i class="icon icon-basic-case"></i></div>
                            <h1 class="counter-title counter-num">9</h1>
                            <h5 class="counter-sub-title">Canteras</h5>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-sm-30">
                            <div class="alt-icon-top counter-icon"><i class="icon icon-basic-lightbulb"></i></div>
                            <h1 class="counter-title counter-num">375000</h1>
                            <h5 class="counter-sub-title">Material Procesado mt2</h5>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Counter Section -->

            <!-- exportacion Table -->

            <section id="exportacion" class="section-padding">
                <div class="container mb-60 text-center">
                    <h2>Nosotros <span class="text-light">Exportamos</span></h2>
                    <p class="max-width-700 large">A todos los destinos internacionales granito Venezolano.</p>
                </div>

  <div id="world-map" style="width: 100%; height: 400px"></div>
              
            </section>
            <!-- End exportacion Table -->

            <!-- video Section -->
            <section id="video-action" class="section-padding bg-image overlay-dark dark-bg" data-stellar-background-ratio="0.5" data-background-img="img/full/02.jpg">
                <div class="container text-center">
                    <div class="page-icon">
                        <a class="video-popup white" href="https://www.youtube.com/watch?v=3Mj8DGQYjV0"><i class="icon icon-music-play-button"></i></a>
                    </div>
                    <p class="max-width-700 lead">
                        Nuestra empresa video 2016,<br />
                        No te pierdas de ver el video promocional.
                    </p>
                    <h6 class="page-title-alt color mb-0">Ver video</h6>
                </div>
            </section>
            <!-- End video Section -->

            <!-- Client Logo -->
            <section id="client" class="section-padding">
                <div class="container mb-60 text-center">
                    <h2 class="">Obras <span class="text-light">Realizadas</span></h2>
                     <p class="max-width-700 large">Puedes ver nuestro material instalado en.</p>
                </div>
                <div class="container">
                    <div class="owl-carousel client-carousel">
                        <div class="item">
                            <div class="client-logo">
                                <a href="#"   data-nombre="PASEO EL HATILLO LA LAGUNITA" data-direccion="Urb. La Lagunita. Caracas">
                                    <img src="img/logos/01.png"  alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                                  <a href="#"   data-nombre="MULTINACIONAL DE SEGUROS, SEDE PRINCIPAL" data-direccion="Urb. La castellana. Caracas">
                                    <img src="img/logos/02.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                              <a href="#"   data-nombre="CENTRO SAN IGNACIO" data-direccion="Urb. La castellana. Caracas">
                                    <img src="img/logos/03.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                               <a href="#"   data-nombre="HOTEL JW MARRIOTT CARACAS" data-direccion="Urb. El Rosal. Caracas">
                                    <img src="img/logos/04.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                             <a href="#"   data-nombre="CENTRO COMERCIAL SANTA FE" data-direccion="Urb. Santa Fe. Caracas">
                                    <img src="img/logos/05.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                               <a href="#"   data-nombre="CENTRO COMERCIAL MACARACUAY PLAZA" data-direccion="Urb. Macaracuay. Caracas">
                                    <img src="img/logos/06.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                                 <a href="#"   data-nombre="CENTRO COMERCIAL CITY MARKET" data-direccion="Urb. Sabana Grande. Caracas">
                                    <img src="img/logos/08.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                                <a href="#">
                                    <img src="img/logos/01.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                                <a href="#">
                                    <img src="img/logos/02.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="client-logo">
                                <a href="#">
                                    <img src="img/logos/03.png" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Client Logo -->

            <hr />

                 
 
            <!-- Tabs & Extra Elements -->
            <section id="elements" class="section-padding">
                <div class="container text-center">
                     <h2 class="page-title">Noticias<span class="text-light"></span></h2>
                </div>
                <div class="container">

                    <ul class="tabs-nav alt-icon-tab text-center hidden">
                        <li class="mb-30 active">
                            <a href="#tab-video" data-toggle="tab">
                                <div class="alt-icon-top"><i class="icon icon-basic-video"></i></div>
                                <h6>Video</h6>
                            </a>
                        </li>
                        <li class="mb-30">
                            <a href="#tab-image-slider" data-toggle="tab">
                                <div class="alt-icon-top"><i class="icon icon-basic-picture"></i></div>
                                <h6>Image Slider</h6>
                            </a>
                        </li>
                        <li class="mb-30">
                            <a href="#tab-icon-box" data-toggle="tab">
                                <div class="alt-icon-top"><i class="icon icon-basic-spades"></i></div>
                                <h6>Icon Box</h6>
                            </a>
                        </li>
                        <li class="mb-30">
                            <a href="#tab-content-box" data-toggle="tab">
                                <div class="alt-icon-top"><i class="icon icon-basic-webpage-txt"></i></div>
                                <h6>Content Box</h6>
                            </a>
                        </li>
                        <li class="mb-30">
                            <a href="#tab-cover-box" data-toggle="tab">
                                <div class="alt-icon-top"><i class="icon icon-basic-webpage-multiple"></i></div>
                                <h6>Cover Box</h6>
                            </a>
                        </li>
                    </ul>
                   

                    <div class="tabs-cont">
                        <div id="tab-video" class="tab-pane">
                            <div class="row">
                                <!--<div class="col-md-6">
                                    <div class="media">
                                        <iframe src="https://player.vimeo.com/video/37298913?color=ffffff&title=0&byline=0&portrait=0" frameborder="0" allowfullscreen></iframe>
                                    </div>
                                    </div>-->
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="media">
                                        <iframe src="https://www.youtube.com/embed/k9EyPfc0FXc?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-image-slider" class="tab-pane">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="owl-carousel image-carousel nf-carousel-theme white">
                                        <div class="item">
                                            <img src="img/full/06.jpg" alt="" />
                                        </div>
                                        <div class="item">
                                            <img src="img/full/14.jpg" alt="" />
                                        </div>
                                        <div class="item">
                                            <img src="img/full/09.jpg" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-icon-box" class="tab-pane">
                            <div class="row">
                                <div class="col-md-4 col-sm-6 col-xs-12 mb-sm-30">
                                    <div class="content-box alt-left">
                                        <div class="alt-icon-left">
                                            <i class="icon icon-basic-cup"></i>
                                        </div>
                                        <h5 class="features-title">Branding Design</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 mb-sm-30">
                                    <div class="content-box alt-left">
                                        <div class="alt-icon-left">
                                            <i class="icon icon-basic-life-buoy"></i>
                                        </div>
                                        <h5 class="features-title">Web Design</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 mb-sm-30">
                                    <div class="content-box alt-right">
                                        <div class="alt-icon-right">
                                            <i class="icon icon-basic-lightbulb"></i>
                                        </div>
                                        <h5 class="features-title">App Development</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 mb-sm-30">
                                    <div class="content-box alt-left">
                                        <div class="alt-icon-left">
                                            <i class="icon icon-basic-star"></i>
                                        </div>
                                        <h5 class="features-title">Graphic Design</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 mb-sm-30">
                                    <div class="content-box alt-left">
                                        <div class="alt-icon-left">
                                            <i class="icon icon-ecommerce-graph1"></i>
                                        </div>
                                        <h5 class="features-title">Landscape Photography</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12 mb-sm-30">
                                    <div class="content-box alt-right">
                                        <div class="alt-icon-right">
                                            <i class="icon icon-music-play-button"></i>
                                        </div>
                                        <h5 class="features-title">Photo Editing</h5>
                                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-content-box" class="tab-pane ">
                            <div class="container text-center">
                                <div class="row">
                                    <div class="col-md-4 col-sm-6 col-xs-12 mb-30">
                                        <div class="content-box content-box-with-bg">
                                            <div class="icon-top icon-color"><i class="icon icon-basic-accelerator"></i></div>
                                            <h5 class="features-title">Branding Design</h5>
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum dolorem.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12 mb-30">
                                        <div class="content-box content-box-with-bg">
                                            <div class="icon-top icon-color"><i class="icon icon-basic-cup"></i></div>
                                            <h5 class="features-title">Web Design</h5>
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum dolorem.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12 mb-30">
                                        <div class="content-box content-box-with-bg">
                                            <div class="icon-top icon-color"><i class="icon icon-basic-anchor"></i></div>
                                            <h5 class="features-title">App Development</h5>
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum dolorem.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12 mb-30">
                                        <div class="content-box content-box-with-bg">
                                            <div class="icon-top icon-black"><i class="icon icon-basic-globe"></i></div>
                                            <h5 class="features-title">Graphic Design</h5>
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum dolorem.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12 mb-30">
                                        <div class="content-box content-box-with-bg">
                                            <div class="icon-top icon-black"><i class="icon icon-basic-gear"></i></div>
                                            <h5 class="features-title">Photography</h5>
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum dolorem.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12 mb-30">
                                        <div class="content-box content-box-with-bg">
                                            <div class="icon-top icon-black"><i class="icon icon-basic-paperplane"></i></div>
                                            <h5 class="features-title">Photo Editing</h5>
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum dolorem.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div id="tab-cover-box" class="tab-pane active">
                            <div class="container">
                                <div class="row">
                                    

  <?php 


                    $i=0;
                    $resul =  mysql_query("SELECT * FROM tecvemar_content where state = 1 order by created desc LIMIT 0,3 ");
                    while($row =  mysql_fetch_array($resul) ) {
                    

                                    
                    //echo $row['nombre_opcion'].'<br>';;
                    $news['news'][]=$row;
                    
                     $pictures = json_decode($news['news'][$i]['images']); 
                     ?>



                                    <div class="col-md-4">
                                        <div class="cover-box mb-30">
                                            <figure class="cover-box-img">
                                                <img src="gestor/<?php echo $pictures->{'image_intro'} ?>" alt="cover-img" />
                                            </figure>
                                            <div class="cover-box-content">
                                                <h5> <?php echo $news['news'][$i]['title']  ?></h5>
                                                <p><?php echo substr(strip_tags($news['news'][$i]['introtext']),0,200)?>...</p>
                                                <a class="link">Leer Mas <i class="fa fa-angle-right right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <?php $i++; } ?> 
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
            <!-- End Tabs & Extra Elements -->

            <!-- Contact Form -->
            <section id="contact-us" class="section-padding dark-bg bg-image overlay-dark60" data-background-img="img/full/33.jpg" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row text-center">
                        <h6 class="page-title-alt color mb-15">Hola...! quieres decirnos algo? </h6>
                        <h2 class="page-title">Formulario  <span class="text-light">de Contacto</span></h2>
                    </div>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="row">
                                <form id="formulario" class="contact-form" action="" role="form">
                                    <div class="col-md-12 text-center">
                                        <h5 class="successContent">
                                            <i class="fa fa-check left" style="color: #5cb45d;"></i>Your message has been sent successfully.
                                        </h5>
                                        <h5 class="errorContent" style="color: #e1534f;">
                                            <i class="fa fa-exclamation-circle left"></i>There was a problem validating the form please check!
                                        </h5>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-field-wrapper">
                                            <input class="input-md form-full" id="form-name" type="text" name="nombre" placeholder="Su nombre y apellido" required />
                                        </div>
                                        <div class="form-field-wrapper">
                                            <input class="input-md form-full" id="form-email" type="email" name="email" placeholder="Email" required />
                                        </div>
                                        <div class="form-field-wrapper">
                                            <input class="input-md form-full" id="form-subject" type="text" name="asunto" placeholder="Asunto" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-0">
                                        <div class="form-field-wrapper">
                                            <textarea class="input-md form-full" id="form-message" rows="7" name="mensaje" placeholder="Su mensaje" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12 text-center">
                                        

<!-- <div class="g-recaptcha" data-sitekey="6LdOBCkTAAAAAJb-Pg8imrxj8Usno-q6ZQtKwkty"></div> -->

                                        <button type="submit" id="boton" class="btn-contact-submit btn btn-md btn-color" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> Enviando...!"> Enviar   </button>

                                        
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Contact Form -->

            <!-- Map section -->
            <section class="map" id="map"></section>
            <!-- End Map section -->

            <!--Contact Info Section-->
            <section id="contct-info" class="section-padding">
                <div class="container text-center">
                    <div class="row">
                        <div class="col-md-4 mb-sm-30 wow fadeIn" data-wow-delay="0.2s" data-wow-duration="2s">
                            <div class="alt-icon-sm-top"><i class="icon icon-basic-geolocalize-05"></i></div>
                            <h5 class="features-title">Dirección</h5>
                            <p>
                                Zona industrial del Este, Avenida, F, Parcela 19, <br />
                                Guarenas, Miranda. Venezuela.
                            </p>
                        </div>
                        <div class="col-md-4 mb-sm-30 wow fadeIn" data-wow-delay="0.4s" data-wow-duration="2s">
                            <div class="alt-icon-sm-top"><i class="icon icon-basic-alarm"></i></div>
                            <h5 class="features-title">Horario de atención</h5>
                            <p>
                                Lun - Vie : 8am A 6pm<br />
                                
                            </p>
                        </div>
                        <div class="col-md-4 mb-sm-30 wow fadeIn" data-wow-delay="0.6s" data-wow-duration="2s">
                            <div class="alt-icon-sm-top"><i class="icon icon-basic-headset"></i></div>
                            <h5 class="features-title">Contacto</h5>
                            <p class="contact-link">
                                <a href="mailto:ventas@tecvemar.com"><span class="text-bold">Email :</span> ventas@tecvemar.com</a><br />
                                <a href="mailto:ventas@tecvemar.com.ve"><span class="text-bold">Email :</span> ventas@tecvemar.com.ve</a><br />
                                <a><span class="text-bold">Teléfonos 1 :</span> +58 212-361.26.68</a>
                                <br>
                                <a><span class="text-bold">Teléfonos 2 :</span> +58 212-361.06.45</a>
                                <br>
                                <a><span class="text-bold">Teléfonos 3 :</span> +58 212-361.50.31</a>
                                  <br>
                                <a><span class="text-bold">Teléfonos 4 :</span> +58 212-361.01.17</a>
                                 <br>
                                <a><span class="text-bold">Teléfonos 5 :</span> +58 212-361.31.92</a>
                                <br>
                                <a><span class="text-bold">Fax :</span> +58 212-362.34.44</a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Contact Info Section-->

            <!--Footer Section-->
            <footer id="footer" class="footer section-padding gray-bg">
                <div class="container text-center">

                    <!--Footer Logo-->
                    <div class="footer-logo mb-25 wow fadeInUp" data-wow-duration="1.5s">
                        <a class="scroll-top" href="#intro">
                            <img src="img/signature.png" alt="Tecvemar" />
                        </a>
                    </div>
                    <!--End Footer Logo-->

                    <!-- Copyright -->
                    <p class="copyright mb-25">
                        &copy; 2015 <a><b>Tecvemar</b></a>. All Rights Reserved.<br>
                        Template by <a href="http://tuweblink.com/" target="_blank"><b>tuweblink.com</b></a>
                    </p>
                    <!-- Copyright -->

                    <!-- Social -->
                    <ul class="social">
                        <li>
                            <a href="http://facebook.com/tecvemar" target="_blank"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="https://twitter.com/tecvemar" target="_blank"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/tecvemargranitos/" target="_blank"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/channel/UCUx6OMaxl_yYlU-vqnLE2DA" target="_blank"><i class="fa fa-youtube"></i></a>
                        </li>
                    </ul>
                    <!-- End Social -->

                </div>
            </footer>
            <!-- End Footer Section-->

        </div>
    </div>
    <!-- End Page Wraper -->

    <!-- Js -->
    <script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/plugins/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.fitvids.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.stellar.min.js" type="text/javascript"></script>
    <script src="js/plugins/isotope.pkgd.min.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.appear.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.fs.tipper.min.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.countTo.js" type="text/javascript"></script>
    <script src="js/plugins/owl.carousel.min.js" type="text/javascript"></script>
    <!-- SLIDER REVOLUTION SCRIPTS  -->
    <script src="rs-plugin/js/jquery.themepunch.tools.min.js" type="text/javascript"></script>
    <script src="rs-plugin/js/jquery.themepunch.revolution.min.js" type="text/javascript"></script>
    <!-- End SLIDER REVOLUTION SCRIPTS  -->
    <script src="js/plugins/jquery.magnific-popup.min.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.mb.YTPlayer.min.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.singlePageNav.min.js" type="text/javascript"></script>
    <script src="js/plugins/wow.min.js" type="text/javascript"></script>
    <script src="js/plugins/jquery.validate.min.js" type="text/javascript"></script>
    <script src="js/contact-form.js" type="text/javascript"></script>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyDRLPGq4mmjB3xEuX2oK-Eo8tuvLpq5Yn0" type="text/javascript"></script>
    <script src="js/map.js" type="text/javascript"></script>
      
    <script src="js/theme.js" type="text/javascript"></script>
  <script src="rs-plugin/vector-map/jquery-jvectormap-2.0.3.min.js"></script>
  <script src="rs-plugin/vector-map/jquery-jvectormap-world-mill.js"></script>

</body>

<script type="text/javascript">

 


 var gdpData = {
  "US": 16.63,
  "CO": 16.63,
  "NI": 16.63,
  "EC": 16.63,
   "MX": 16.63,
   "BO": 16.63,
"CR": 16.63,
  "VE": 158.97
 
};

  
$(document).ready(function() {
 
 $('.client-logo a').each(function () {
// getting options from html 
var Self = $(this);
 
var nombre = Self.data('nombre');
 
console.log(nombre)
});


$('.client-logo a').on('click', function(event) {
    event.preventDefault();
    var Self = $(this);
    var nombre = Self.data('nombre');
    var direccion = Self.data('direccion');
    /* Act on the event */
    alert(nombre+'\n'+direccion);
});

$('#world-map').vectorMap({
    map: 'world_mill',
series: {
    regions: [{
      values: gdpData,
      scale: ['#c7a674', '#8a6d3b'],
      normalizeFunction: 'polynomial'
    }]
  } 
});

$('#formulario').on('submit',  function(event) {
    event.preventDefault();
$('#boton').button('loading');
//alert('aaa');

$.ajax({
    url: 'sendmail.php',
    type: 'POST',
 
    data: $('#formulario').serialize(),
})
.done(function(data) {
    console.log("success");
    console.log(data);
    if (data==1) {alert('Mensaje Enviado')}
$('#formulario')[0].reset();


})
.fail(function() {
    console.log("error");
})
.always(function() {
    console.log("complete");
$('#boton').button('reset');

});



});

});



</script>

<!-- Mirrored from theme.nileforest.com/html/Tecvemar-v1.4/02_Tecvemar_onepage/index8-video_youtube.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Aug 2016 18:11:40 GMT -->
</html>
