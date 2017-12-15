<?php 
// Template Name: Single Services
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

<section id="sect-page-single-services">
	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="row">
							<div class="col-3">
								<div class="row">
									<div class="sidebar-wrapper">
										<!-- Sidebar (start) -->
										<aside>
										<?php wp_nav_menu( array( 'theme_location' => 'single-services-sidebar-menu' ) ); ?>
										</aside>
										<!-- Sidebar (finish) -->	
									</div>
								</div>
							</div>
							<div class="col-9">
								<div class="row">
									<h1 class="heading-page"><?php the_field('heading_for_the_page'); ?></h1>
									<div class="text-page"><?php the_field('description_of_the_page'); ?></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 ss-top-galery">
						<div class="row">
							<?php
              $images = get_field('top_galery');
              ksort($images);
              if( $images ): ?>
              	<?php $numb_top_galary = 1; ?>
                <?php foreach( $images as $image ): ?>
                	<?php if($numb_top_galary <= 4): ?>
	                <a href="<?php echo $image['url']; ?>" class="col-3 mix-2 fancybox" rel="gallery-1">
	                    <img src="<?php echo $image['sizes']['ss-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
	                </a>
	                <?php $numb_top_galary++; ?>
	                <?php endif; ?>
                <?php endforeach; ?>
              <?php endif; ?>
						</div>
					</div>
					<div class="col-12">
	        	<div class="row">
	        		<div class="col-8">
	        			<div class="faq-heading"><?php the_field('faq_heading'); ?></div>
	        			<?php
	              $faq_repeter = get_field('faq_repeter');
	              if( $faq_repeter ): ?>
	              	<?php $faq_repet_num = 1; ?>
	                <?php foreach( $faq_repeter as $faq_repet ): ?>
	                	<?php if($faq_repet_num <= 4): ?>
										<?php  
										$faq_heading = $faq_repet['faq_heading'];
										$faq_description = $faq_repet['faq_description'];
										?>
										<div class="faq-repeter-wrapper">
											<div class="faq-repeter-icon"><i class="fa fa-play" aria-hidden="true"></i></div>
											<div class="faq-repeter-heading"><?php echo $faq_heading ?></div>
											<div class="faq-repeter-description"><?php echo $faq_description ?></div>
		                </div>
		                <?php $faq_repet_num++; ?>
		                <?php endif; ?>
	                <?php endforeach; ?>
	              <?php endif; ?>
	        		</div>
	        		<div class="col-4">
	        			<div class="row">
	        			<?php 
	        			$select_the_material = get_field('select_the_material');
	        			if ($select_the_material) {
	        			$catalog_num = 1; 
	        			$catalog_heading = get_field('gallery_title_material_'.$select_the_material, 88);
	        			$catalog_galary = get_field('gallery_material_'.$select_the_material, 88);
	        			?>
								<div class="catalog-heading"><?php echo $catalog_heading; ?> catalog</div>
								<?php foreach( $catalog_galary as $catalog_galary_val ): ?>
                	<?php if($catalog_num <= 6): ?>
									<a href="<?php echo $catalog_galary_val['url']; ?>" class="col-6 laminate mix fancybox" rel="gallery-2">
	                   <img src="<?php echo $catalog_galary_val['sizes']['gallery-materials-thumb']; ?>" alt="<?php echo $catalog_galary_val['alt']; ?>" />
	                </a>
	                <?php $catalog_num++; ?>
	                <?php endif; ?>
                <?php endforeach; ?>
								<button class="catalog-button"><a href="/materials?select=<?php echo $select_the_material; ?>">view full catalog</a></button>


	        			<?php
	        			}
	        			?>
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
			<div class="heading-bottom-galary col-12"><?php the_field('bottom_galary_heading'); ?></div>
			<?php
      $images = get_field('bottom_galery');
      ksort($images);
      if( $images ): ?>
      	<?php $numb_top_galary = 1; ?>
        <?php foreach( $images as $image ): ?>
        	<?php if($numb_top_galary <= 8): ?>
          <a href="<?php echo $image['url']; ?>" class="col-3 mix fancybox" rel="gallery-3">
              <img src="<?php echo $image['sizes']['gallery-project-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
              <div class="project-item-wrapper">
                <span class="project-item-head"><?php echo $image['caption']; ?></span>
                <span class="project-item-desc"><?php echo $image['description']; ?></span>
                <span class="icon-eye"></span>
          		</div>
          </a>
          <?php $numb_top_galary++; ?>
          <?php endif; ?>
        <?php endforeach; ?>
      <?php endif; ?>
		</div>
	</div>
</section>

<!-- Our Services (finish) -->


</main>


<?php get_footer(); ?>