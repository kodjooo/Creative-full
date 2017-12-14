<?php 
// Template Name: Single Services
//Template Post Type: post, page, product
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
							<div class="col-8">
								<div class="category-heading"><?php the_title(); ?></div>
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

<section id="sect-page-services-details">
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
								<?php 
								$id_this_page = get_the_ID();
								$children_this_page = get_pages( array( 'parent' => $id_this_page, 'hierarchical' => 1, 'sort_column' => 'post_date' ) );
								if ($children_this_page) {
								$number = 1;
                foreach( $children_this_page as $child_this_page ){ 
								if ( $child_this_page->post_title ) { 
								$url_thumb = get_the_post_thumbnail_url( $child_this_page->ID, "full" );
								?>
								<style>
									div.service-wrapper-<?php echo $number; ?>{
										background: url(<?php echo $url_thumb; ?>);
										background-size: cover;
										background-position: center;
									}
								</style>
								<div class="col-6">
									<a href="<?php echo $child_this_page->ID ?>">
										<div class="col-12 service-wrapper service-wrapper-<?php echo $number; ?>">
											<div class="row height-100">
												<div class="col-12 service-value align-self-center">
													<div class="row height-100">
														<div class="col-12 align-self-center align-c service-text"><?php echo $child_this_page->post_title ?></div>
													</div>
												</div>
											</div>
										</div>
									</a>
								</div>

								<?php } $number++; } } ?>
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