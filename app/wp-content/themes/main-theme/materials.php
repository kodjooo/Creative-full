<?php 
// Template Name: Materials
//Template Post Type: post, page, product
get_header(); ?>

<main>

<style>
	#sect-top-mini{
		background: url(<?php $img_bgc = get_the_post_thumbnail_url(); if($img_bgc){ the_post_thumbnail_url(); } else { echo '/wp-content/uploads/2017/12/Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture.jpg'; } ?>);
		background-size: cover;
		background-position: center;
		position: relative;
	}
	#sect-top-mini:before{
		content: '';
		background-color: rgba(0, 0, 0, 0.7);
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}



</style>

<!-- Top Section Mini (start) -->

<section id="sect-top-mini">
	<div class="container-fluid image-in-sect-top-mini">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12 text-in-top-wrapper">
						<div class="row">
							<div class="col-8">
								<div class="row">
									<div class="col-12">
										<div class="category-heading"><?php the_title(); ?></div>
									</div>
									<div class="col-12 breadcrumb-main-wrapper">
		                <div class="breadcrumb-main">
		                    <?php
		                    if(function_exists('bcn_display'))
		                    {
		                        bcn_display();
		                    }
		                    ?>
		                </div>
		              </div>
								</div>
							</div>
							<div class="col-4 align-self-center">
								<div class="row justify-content-end">
								<a href="#" class="">
									<span class="text-in-top-button"><?php the_field('text_for_touch_to_contact', 'option'); ?></span>
								</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Top Section Mini (finish) -->


<!-- Our Services (start) -->

<section id="sect-page-materials">
	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="row">
							<div class="col-12 m-b-30">
								<div class="row">
									<h1 class="heading-page"><?php the_field('heading_for_the_page'); ?></h1>
								</div>
							</div>		
							<div class="col-12 m-b-60">
								<div class="row">
									<div class="text-page"><?php the_field('description_of_the_page'); ?></div>
								</div>
							</div>	
						</div>
						<div class="col-12">
							<div class="row">
								<div class="controls text-center pb-30">
                        <div class="many-buttons">
	                        <?php
	                        $laminate = get_field('gallery_title_material_laminate');
	                        if( $laminate ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".laminate"><?php echo $laminate; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $vinil = get_field('gallery_title_material_vinil');
	                        if( $vinil ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".vinil"><?php echo $vinil; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $wood = get_field('gallery_title_material_wood');
	                        if( $wood ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".wood"><?php echo $wood; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $ceramic = get_field('gallery_title_material_ceramic');
	                        if( $ceramic ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".ceramic"><?php echo $ceramic; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $marble = get_field('gallery_title_material_marble');
	                        if( $marble ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".marble"><?php echo $marble; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $granite = get_field('gallery_title_material_granite');
	                        if( $granite ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".granite"><?php echo $granite; ?></button>
	                        <?php endif; ?>
                    		</div>
                    </div>
                    <!-- Article Start -->
            <article class="col-12 gallery-art-wrapper" id="article-<?php the_ID(); ?>">
                <div class="article_content">
                    <div class="gallery materials-galary">
                        <?php
                        $images = get_field('gallery_material_laminate');
                        ksort($images);
                        if( $images ): ?>
                          <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-2 mix laminate fancybox" rel="gallery-1">
                                    <img src="<?php echo $image['sizes']['gallery-materials-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                </a>
                                
                          <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_material_vinil');
                        ksort($images);

                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-2 mix vinil fancybox" rel="gallery-2">
                                    <img src="<?php echo $image['sizes']['gallery-materials-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_material_wood');
                        ksort($images);

                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-2 mix wood fancybox" rel="gallery-3">
                                    <img src="<?php echo $image['sizes']['gallery-materials-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_material_ceramic');
                        ksort($images);


                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-2 mix ceramic fancybox" rel="gallery-4">
                                    <img src="<?php echo $image['sizes']['gallery-materials-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_material_marble');
                        ksort($images);

                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-2 mix marble fancybox" rel="gallery-5">
                                    <img src="<?php echo $image['sizes']['gallery-materials-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_material_granite');
                        ksort($images);

                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-2 mix granite fancybox" rel="gallery-5">
                                    <img src="<?php echo $image['sizes']['gallery-materials-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </article>
            <!-- Article End -->
            <?php $select = $_GET['select']; ?>
            	<script>
            		$(function(){
								  $(".materials-galary").mixItUp({
								    // Нужно сначала дать display: none всем фильтрующимся элементам
								    // При загрузке фильтрует по этому фильтру
								    load: {
								     filter:'.<?php if( $select ){ echo $select; } else { echo 'laminate'; } ?>'
								     
								    },
								    // Добавляет класс акт. кнопке
								    controls: {
								     activeClass:'on'
								    } 
								    // animation: {
								    //  enable:true, - вкл. анимацию
								    //  effects:'scale fade',
								    //  duration:700
								    // }
								    // Поддерживаемые значения: fade, scale, translateY, translateZ, rotateX, rotateY, rotateZ, stagger, translateX
								  });
								});
            	</script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Our Services (finish) -->


</main>


<?php get_footer(); ?>