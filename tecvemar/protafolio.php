  <!-- Portfolio Section -->
            <section id="portfolio" class="section-padding-t gray-bg">
                <div class="container text-center">
                    <h2>Nuestro <span class="text-light">Catalogo</span></h2>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <ul class="portfolio-filter categories-filter">
                            <li><a class="categories active" data-filter="*">Todos</a></li>
                            

  <?php 
 $prefix = 'tecvemar_';
$tablaCAtegoria = $prefix.'jshopping_categories';

                    $i=0;
                    $res =  mysql_query("SELECT `category_id`, `name_es-ES`, `category_image` FROM `$tablaCAtegoria` order by `name_es-ES` ");
                    while($row =  mysql_fetch_array($res) ) {
                    

                                    
                   // echo $row['name_es-ES'].'<br>';;
                    //$catalogo['catalogo'][]=$row;
                    
                    // $pictures = json_decode($catalogo['catalogo'][$i]['images']); 
                     ?>

                      
                    <li><a class="categories" data-filter=".<?php echo $row['category_id'] ?>">  <?php echo $row['name_es-ES'] ?>  </a></li>
                      
                        <?php $i++; } ?> 
                      




                        
                       
                        </ul>

                    </div>
                    <div class="portfolio-grid-fit row gallery-popup">
                        
                       


  <!--====================================================
                      =           AQUI EL ITEMS DE LOS PRODUCTOS            =
                      =====================================================-->
                     
                      <?php 

$tablaCAtegoria = $prefix.'jshopping_categories';

                    $e=0;
                    $ressp =  mysql_query("SELECT producto.product_id, producto.product_ean, 
CONVERT(SUBSTRING_INDEX(producto.product_ean,'-',-1),UNSIGNED INTEGER) AS num, producto.`name_es-ES` AS titulo , producto.`short_description_es-ES` AS subtitulo, producto.image, relacion.category_id, producto.product_price, categoria.`name_es-ES` 
FROM ".$prefix."jshopping_products AS producto, ".$prefix."jshopping_products_to_categories AS relacion, `".$prefix."jshopping_categories` AS categoria
WHERE producto.product_id = relacion.product_id
AND categoria.category_id = relacion.category_id
AND producto.product_publish =1
ORDER BY num");
                    
                    while($row =  mysql_fetch_array($ressp) ) {

$imagen = explode('_', $row['image']);

 
$imagen = str_replace("thums","thumb",$row['image']);

 //echo  $row['category_id'] ;
                       ?>


                    <div class="portfolio-item <?php echo $row['category_id'] ?> ">
                    <div class="portfolio-box">
                    <a class="portfolio-image-wrap">
                    <img src="gestor/components/com_jshopping/files/img_products/thumb_<?php echo $row['image'] ?>" alt="" /></a>
                    <div class="portfolio-caption">
                    <div class="portfolio-caption-tb">
                    <div class="portfolio-caption-tb-cell">
                    <h5> <?php echo $row['titulo'] ?> </h5>
                    <p><?php echo $row['subtitulo'] ?> </p>
                    <ul class="portfolio-btn-wraper">

                    <li>
                    <a class="gallery-popup-link btn btn-color" href="gestor/components/com_jshopping/files/img_products/<?php echo $imagen; ?>" title="Portfolio Image 01"><i class="fa fa-search"></i></a>
                    </li>

                    <li>
                    <a href="http://facebook.com/tecvemar" class="btn btn-black" target="_blank"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                    <a href="https://twitter.com/tecvemar" class="btn btn-black"  target="_blank"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                    <a href="https://www.instagram.com/tecvemargranitos/" class="btn btn-black"  target="_blank"><i class="fa fa-instagram"></i></a>
                    </li>
                    <li>
                    <a href="https://www.youtube.com/channel/UCUx6OMaxl_yYlU-vqnLE2DA" class="btn btn-black"  target="_blank"><i class="fa fa-youtube"></i></a>
                    </li>
                    </ul>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>

     <?php $e++; } ?> 
                                
 <!--====  End ofAQUI EL ITEMS DE LOS PRODUCTOS  ====-->


                    </div>
                </div>
            </section>
            <!-- End Portfolio Section -->