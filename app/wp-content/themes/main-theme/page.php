<?php 
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
							<div class="col-4  align-self-center">
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

<section id="sect-page-standart">
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
					</div>
						<div class="col-12">
								<div class="row">
									<!--?php get_sidebar(); ?-->
                    <?php while ( have_posts() ) : the_post(); ?>
                      <!-- Post Start -->
                        <div class="article_content">
                          <?php 
                          $image_page = get_field('image_for_page_separete');
                          if ($image_page) { ?>
                          <img class="img_page" src="<?php echo $image_page; ?>" alt="">
                          <?php   
                        } 
                        ?>
                       
                          
                          <div class="cont-wrapper"><?php the_content(); ?></div>
                          
                    	<!-- Post End -->
                    
                    
                  		<?php endwhile; ?>
								</div>
							</div>	
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="container-fluid">
		<div class="row">
			<?php
	        $images = get_field('gallery_separate');
	        
	        if( $images ): 
	        ksort($images);
	        ?>

	        <div class="heading-gallary-separate col-12"><?php the_field('heading_gallery'); ?></div>
	          <?php foreach( $images as $image ): ?>
	          			
	                <a href="<?php echo $image['url']; ?>" class="col-3 mix flooring fancybox" rel="gallery-1">
	                    <img src="<?php echo $image['sizes']['gallery-project-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
	                    
	                </a>
	                
	          <?php endforeach; ?>
	        <?php endif; ?>
	    </div>
		</div>
	</div>
</section>

<!-- Our Services (finish) -->


</main>


<?php get_footer(); ?>