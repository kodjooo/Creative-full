<?php 
// Template Name: History
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


<!-- Our Services (start) -->

<section id="sect-page-history">
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
							<div id="accordion" class="accordion">
								<div class="card m-b-0">
								<?php 
								$history_repeater = get_field('history_repeater');
				        if($history_repeater) { 
				        $num = 1;
				        foreach($history_repeater as $history_repeat) { 
				        $year_moment = $history_repeat['year_moment'];
				        $heading_moment = $history_repeat['heading_moment'];
				        $image_moment = $history_repeat['image_moment'];
				        $description_moment = $history_repeat['description_moment'];
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
											<div class="col-12">
												<div class="row">
													<div class="col-2">
														<div class="row">
															<div class="year-wrapper"><?php echo $year_moment; ?></div>
														</div>
													</div>
													<div class="col-10">
														<div class="row height-100 align-items-center">
															<div class="heading-wrapper"><?php echo $heading_moment; ?></div>
														</div>
													</div>
												</div>
											</div>
										</a>
									</div>
									<?php
									if ( $num == 1 ){
									?>
									<div id="collapse_<?php echo $num; ?>" class="card-block collapse show">
									  <div class="col-12">
											<div class="row">
												<div class="moment-desc-wrapper">
													<img src="<?php echo $image_moment; ?>" alt="">
					                <?php echo $description_moment; ?>
			                	</div>
											</div>
										</div>
									</div>
									<?php 
									} else {
									?>
									<div id="collapse_<?php echo $num; ?>" class="card-block collapse">
									  <div class="col-12">
											<div class="row">
												<div class="moment-desc-wrapper">
													<img src="<?php echo $image_moment; ?>" alt="">
					                <?php echo $description_moment; ?>
			                	</div>
											</div>
										</div>
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
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Our Services (finish) -->


</main>


<?php get_footer(); ?>