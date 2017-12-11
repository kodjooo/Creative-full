<?php 
// Template Name: How we work
// Template Post Type: post, page, product
get_header(); ?>

<main>

<style>
	#sect-top-mini{
		background: url(<?php the_post_thumbnail_url(); ?>);
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
							<div class="col-6">
								<div class="category-heading"><?php the_title(); ?></div>
							</div>
							<div class="col-6  align-self-center">
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

<section id="sect-page-how-we-work">
	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="row">
							<div class="col-3">
								<div class="row">
									<div class="sidebar-wrapper"><?php get_sidebar(); ?></div>
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
					<div class="col-12">
						<div class="row justify-content-center">
							
              <div class="sub-heading text-center h3"><?php the_field('heading_for_stages'); ?></div>
              <div class="col-12">
              	<div class="row">
		              <div class="shagi owl-carousel owl-theme">
		            					<?php
							        		$stages_settings = get_field('stages_settings');
						              if($stages_settings) { 
						              $num = 1;
						              foreach($stages_settings as $stage_setting) { 
						              $heading_stage = $stage_setting['heading_stage'];
						              $description_stage = $stage_setting['description_stage'];
						              $backgroung_stage = $stage_setting['backgroung_stage'];
		                      ?>
		                      <div class="shagi-single horisontal spoiler non-visible">
		                          <div class="shagi-title">
		                              <div class="number"></div>
		                              <p><?php echo $heading_stage; ?></p>
		                          </div>
		                          <div class="shagi-desc"><?php echo $description_stage; ?></div>
		                          <div class="shagi-cover-bg"><img src="<?php echo $backgroung_stage; ?>"></div>
		                      </div>
		                  <?php } } ?>
		              </div>  
              	</div>
              </div>      
						</div>
            
					</div>
					<div class="col-12">
						<div class="row justify-content-center">
							
              <div class="sub-heading big-marg text-center h3"><?php the_field('heading_for_advantages'); ?></div>
              <div class="col-12">
              	<div class="row">
		              
          					<?php
				        		$advantages_settings = get_field('advantages_settings');
			              if($advantages_settings) { 
			              $num = 1;
			              foreach($advantages_settings as $advantages) { 
			              $icon_advantage = $advantages['icon_advantage'];
			              $heading_advantage = $advantages['heading_advantage'];
			              $description_advantage = $advantages['description_advantage'];
			              if($num % 2 === 0) {
                    ?>

                    <div class="col-6 advantage-hover">
                    	<div class="row">
                    		<div class="col-4">
                    			<div class="row height-100 justify-content-center align-items-center">
                    				<div class="icon-advantage-wrapper"><span class="<?php echo $icon_advantage; ?>"></span></div>
                    			</div>
                    		</div>
                    		<div class="col-8">
                    			<div class="row">
                    				<div class="advantage-item-wrapper-left">
	                    				<div class="head-advantage"><?php echo $heading_advantage; ?></div>
	                    				<div class="desc-advantage"><?php echo $description_advantage; ?></div>
                    				</div>
                    			</div>
                    		</div>
                    	</div>
                    </div>

                    <?php
                    $num++;
			              }
										else {
										?>

										<div class="col-6 advantage-hover">
                    	<div class="row">
                    		<div class="col-8">
                    			<div class="row">
                    				<div class="advantage-item-wrapper-right">
	                    				<div class="head-advantage"><?php echo $heading_advantage; ?></div>
	                    				<div class="desc-advantage"><?php echo $description_advantage; ?></div>
                    				</div>
                    			</div>
                    		</div>
                    		<div class="col-4">
                    			<div class="row height-100 justify-content-center align-items-center">
                    				<div class="icon-advantage-wrapper"><span class="<?php echo $icon_advantage; ?>"></span></div>
                    			</div>
                    		</div>
                    	</div>
                    </div>

                		<?php
                		$num++;
                		} } } 
                		?>
	              	
            		</div>
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