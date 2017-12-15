<?php 
// Template Name: About us
// Template Post Type: post, page, product
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


<!-- About Us (start) -->

<section id="sect-page-about-us">
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
						<div class="row">
							<div class="h3 col-12 align-c margins"><?php the_field('heading_our_mission'); ?></div>
							<?php 
							$missions_repeater = get_field('missions_repeater');
              if($missions_repeater) { 
              foreach($missions_repeater as $mission_repeater) { 
              $image_mission = $mission_repeater['image_mission'];
              $heading_mission = $mission_repeater['heading_mission'];
              $description_mission = $mission_repeater['description_mission'];
              $list_mission_repeater = $mission_repeater['list_mission_repeater'];
              ?>
							<div class="col-4 miss-wrapper">
								<div class="row">
									<div class="col-12 align-c img-mission-wrapper">
										<img src="<?php echo $image_mission; ?>" alt="">
									</div>
									<div class="col-12 align-c head-mission">
										<?php echo $heading_mission; ?>
									</div>
									<div class="col-12 align-c desc-mission">
										<div class="row">
											<div><?php echo $description_mission; ?></div>
										</div>
										
									</div>
									<div class="col-12 align-c mission-list-wrapper">
										<ul class="mission-list">

			              <?php
			              if($list_mission_repeater) { 
			              foreach($list_mission_repeater as $list_mission) { 
			              $list_mission_value = $list_mission['list_mission_value']
			              ?>
										
											<li><i class="fa fa-check-circle-o" aria-hidden="true"></i><?php echo $list_mission_value; ?></li>
											
										<?php } } ?>
										</ul>
									</div>
								</div>
							</div>
							
							<?php } } ?>
						</div>
					</div>
					<div class="col-12">
						<div class="row">
							<div class="col-6">
								<div class="row">
									<div class="h3 col-12 heading-margin"><?php the_field('heading_our_vision'); ?></div>
									<div id="accordion" class="accordion">
						        <div class="card m-b-0">
						        		<?php
						        		$vision_repeater = get_field('vision_repeater');
					              if($vision_repeater) { 
					              $num = 1;
					              foreach($vision_repeater as $vision_repeat) { 
					              $vision_heading = $vision_repeat['vision_heading'];
					              $vision_desc = $vision_repeat['vision_desc'];
					              if ( $num == 1 ){
					              ?>
						            <div class="card-header" data-toggle="collapse" data-parent="#accordion" href="#collapse_<?php echo $num; ?>" aria-expanded="true">
						            <?php 
						          	} else {
						            ?>
												<div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse_<?php echo $num; ?>">
						            <?php 
						            }
						            ?>
						                <a class="card-title">
						                    <div class="i-cart-wrapper"><i class="fa fa-play" aria-hidden="true"></i></div> <?php echo $vision_heading; ?>
						                </a>
						            </div>
						            <?php
						            if ( $num == 1 ){
					              ?>
						            <div id="collapse_<?php echo $num; ?>" class="card-block collapse show">
						                <?php echo $vision_desc; ?>
						            </div>
						            <?php 
						          	} else {
						            ?>
												<div id="collapse_<?php echo $num; ?>" class="card-block collapse">
						                <?php echo $vision_desc; ?>
						            </div>
						            <?php 
						            }
						            ?>
						            <?php
						            $num++;
						            } } 
						            ?>
						          </div>
						        </div>
								</div>
							</div>
							<div class="col-6">
								<div class="row">
									<div class="h3 col-12 heading-margin"><?php the_field('heading_we_are_spesialist'); ?></div>
									<div id="accordion_second" class="accordion">
						        <div class="card m-b-0">
						        		<?php
						        		$we_are_spesialist_repeater = get_field('we_are_spesialist_repeater');
					              if($we_are_spesialist_repeater) { 
					              $number = 1;
					              foreach($we_are_spesialist_repeater as $we_are_spesialist) { 
					              $spesialist_heading = $we_are_spesialist['we_are_spesialist_heading'];
					              $spesialist_desc = $we_are_spesialist['we_are_spesialist_desc'];
					              if ( $number == 1 ){
					              ?>
						            <div class="card-header" data-toggle="collapse" data-parent="#accordion_second" href="#collapses_<?php echo $number; ?>" aria-expanded="true">
						            <?php 
						          	} else {
						            ?>
												<div class="card-header collapsed" data-toggle="collapse" data-parent="#accordion_second" href="#collapses_<?php echo $number; ?>">
						            <?php 
						            }
						            ?>
						                <a class="card-title">
						                    <div class="i-cart-wrapper"><i class="fa fa-play" aria-hidden="true"></i></div> <?php echo $spesialist_heading; ?>
						                </a>
						            </div>
						            <?php
						            if ( $number == 1 ){
					              ?>
						            <div id="collapses_<?php echo $number; ?>" class="card-block collapse show">
						                <?php echo $spesialist_desc; ?>
						            </div>
						            <?php 
						          	} else {
						            ?>
												<div id="collapses_<?php echo $number; ?>" class="card-block collapse">
						                <?php echo $spesialist_desc; ?>
						            </div>
						            <?php 
						            }
						            ?>
						            <?php
						            $number++;
						            } } 
						            ?>
						          </div>
						        </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- About Us (finish) -->


</main>


<?php get_footer(); ?>