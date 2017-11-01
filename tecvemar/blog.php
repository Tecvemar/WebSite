<!DOCTYPE html>
<?php 
require_once 'db_connect.php';


// connecting to db
$con = new DB_CONNECT();
//sleep(10);
mysql_query("SET NAMES utf8");
mysql_query("SET CHARACTER_SET utf");  

 ?>



<html lang="es">

<!-- Mirrored from theme.nileforest.com/html/Cohen y Aguirre-v1.4/02_Cohen y Aguirre_onepage/index8-video_youtube.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Aug 2016 18:07:40 GMT -->
<head>
    <meta charset="utf-8" />
    <title><?php echo  $_GET['titulo']  ?></title>
    <meta name="description" content="Cohen y Aguirre - Noticias" />
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





<style type="text/css">
    .page-title-alt2{
font-size: 10em; 


}

@media only screen and (max-width: 400px) {

.page-title-alt2{
font-size: 4em; 

}}
    
</style>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-84602463-1', 'auto');
  ga('send', 'pageview');

</script>

</head>
<body>

 

    <!-- Page Wraper -->
    <div id="page-wraper">
        <div class="wrapper">

        
<?php $titulo = 'Blog';

$subtitulo = 'Noticias todos los Días';

$id= $_GET['id'];

         ?>
   

         

            <!-- Statement1 Section -->
         <?php require_once 'header.php'; ?>
            <!-- End Statement1 Section -->

    <?php //require 'team.php'; ?>

    

    <hr />

           

       
          

            <!-- Action Box Section -->
            <section id="action-box2" class="action-box action-black">
                <div class="container">
                    <div class="row action-box-left">
                        <h4 class="action-box-title">Disfruta de mas información en nuestras redes sociales </h4>
                    </div>
                    <div class="action-box-right">
                        <a class="btn btn-md btn-color" href="http://facebook.com/tecvemar" target="_blank"> <i class="fa fa-facebook"></i> Ver mas</a>
                    </div>
                </div>
            </section>
            <!-- Action Box Section -->






    <!--=======================================
            =            Noticia principal            =
            ========================================-->
                  <?php 


                    $a=0;
                    $resul1 =  mysql_query("SELECT * FROM tecvemar_content where state = 1 and id=$id");
                    while($row1 =  mysql_fetch_array($resul1) ) {
                    

                                    
                    //echo $row1['nombre_opcion'].'<br>';;
                    $news2['news'][]=$row1;
                    
                     $pictures2 = json_decode($news2['news'][0]['images']); 
                     $a++; }
                     ?>

 <?php if (isset($_GET['id'])) {
        
 ?>
     
  


                <section id="elements" class="section-padding">
                <div class="container text-center">
                     <h1 class="page-title"><?php echo $news2['news'][0]['title']  ?>  </h1>
              
 
                </div>
                <div class="container">
<!-- <img class="img-responsive" src="administrator/<?php echo $pictures->{'image_intro'} ?>" alt="cover-img" /> -->

<div id="body" style="text-align: justify;"><?php echo $news2['news'][0]['introtext']?>
 

   


</div>

</div>
                                       
                                    
                                    

                </section>
            
            <!--====  End of Noticia principal  ====-->
                    
 

 <?php        
 }?>






           



            <hr />

            <!-- Tabs & Extra Elements -->
            <section id="elements" class="section-padding">
                <div class="container text-center">
                     <h2 class="page-title">Ultimas <span class="text-light">Noticias</span></h2>
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

<!--======================================================
=            blog este es en realidad el blog            =
=======================================================-->




 


                        <div id="tab-cover-box" class="tab-pane active">
                            <div class="container">
                                <div class="row">
                                    

                          <div id="tab-cover-box" class="tab-pane active">
                            <div class="container">
                                <div class="row"> 
                                    

  <?php 


                    $i=0;
                    $resul =  mysql_query("SELECT * FROM tecvemar_content where state = 1 order by created desc LIMIT 0,12 ");
                    while($row =  mysql_fetch_array($resul) ) {
                    

                                    
                    //echo $row['nombre_opcion'].'<br>';;
                    $news['news'][]=$row;
                    
                     $pictures = json_decode($news['news'][$i]['images']); 
                     ?>



                                    <div class="col-md-4">
                                        <div class="cover-box mb-30">
                                            <figure class="cover-box-img">
                                                <img title="<?php echo $news['news'][$i]['title']  ?>" src="<?php echo $pictures->{'image_intro'} ?>" alt="<?php echo substr(strip_tags($news['news'][$i]['introtext']),0,500)?>" />
                                            </figure>
                                            <div class="cover-box-content">
                                                <h5> <?php echo $news['news'][$i]['title']  ?></h5>
                                                <p><?php echo substr(strip_tags($news['news'][$i]['introtext']),0,200)?>...</p>
                                               <a class="link" href="blog.php?id=<?php echo $news['news'][$i]['id']  ?>&titulo=<?php echo $news['news'][$i]['title']  ?>"  >Leer Mas <i class="fa fa-angle-right right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <?php $i++; } ?> 
                                </div>
                            </div>
                        </div>



                               
                           

                                    <!--====  End of blog este es en realidad el blog  ====-->
                                </div>

                             <!--    <center><a  href="blog-full.php" class="btn-contact-submit btn btn-md btn-color" type="submit" id="form-submit" name="submit">Blog</a></center> -->
                            </div>
                        </div>
                    </div>

                </div>
            </section>
            <!-- End Tabs & Extra Elements -->

            <!-- Contact Form -->
  <?php require_once 'formulario.php'; ?>
            <!-- End Contact Form -->

           
        

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
    <script src="js/theme.js" type="text/javascript"></script>
 <script src="js/plugins/jquery.stellar.min.js" type="text/javascript"></script>
<script src="js/plugins/isotope.pkgd.min.js" type="text/javascript"></script>
 <script src="js/plugins/owl.carousel.min.js" type="text/javascript"></script>
 


   

 


<script type="text/javascript">





    
$(document).ready(function() {




$('#formulario').on('submit',  function(event) {
    event.preventDefault();
$('#boton').button('loading');
//alert('aaa');


$.ajax({
    url: 'formularioEnvio.php',
    type: 'POST',
 
    data: $('#formulario').serialize(),
})
.done(function(data) {
    console.log("success");
    console.log(data);

  //alert(data);
   
  if (data==1) { swal("Buen trabajo!", "Mensaje enviado!", "success");}
    else
    {
 sweetAlert("Oops...", "Intente luego no se a podido enviar su mensaje!", "error");

    }
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


</body>

<!-- Mirrored from theme.nileforest.com/html/Cohen y Aguirre-v1.4/02_Cohen y Aguirre_onepage/index8-video_youtube.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Aug 2016 18:11:40 GMT -->
</html>
