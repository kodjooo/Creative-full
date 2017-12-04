<?php 
// Template Name: Main page
//Template Post Type: post, page, product
get_header(); ?>

<main>

<style>
	#sect-top div.image-in-sect-top{
		background: url(<?php the_field('main_top_image'); ?>);
		background-size: cover;
		background-position: center;
	}
</style>

<!-- Top Section (start) -->

<section id="sect-top">
	<div class="container-fluid image-in-sect-top">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12 text-in-top-wrapper">
						<span class="text-in-top-1"><?php the_field('text_in_top_1'); ?></span>
						<span class="text-in-top-2"><?php the_field('text_in_top_2'); ?></span>
						<span class="text-in-top-3"><?php the_field('text_in_top_3'); ?></span>
						<a href="#">
							<span class="text-in-top-button"><?php the_field('text_in_top_button'); ?></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid projects-in-sect-top">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="row">
							<div class="completed-project-wrapper col-8">
								<div class="row">
									<div class="completed-project-img-wrapper col-6">
										<div class="completed-project-img-sub-wrapper">
										<img src="<?php the_field('image_for_completed_project'); ?>" alt="">
										<span class="completed-count"><?php the_field('how_much_complete_project'); ?></span>
										</div>
									</div>
									<div class="completed-project-text-wrapper col-6">
										<span class="completed-project-heading">Completed <span class="bold">Projects</span></span>
										<span class="completed-project-value"><?php the_field('description_completed_projects'); ?></span>
									</div>
								</div>
							</div>
							<div class="offer-wrapper">
								<div class="offer-value">
									<span><?php the_field('text_description_for_button_in_top_section'); ?></span>
								</div>
								<a href="#">
									<div class="offer-button">
										<span><?php the_field('text_for_button_in_top_section'); ?></span>	
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Top Section (finish) -->

<!-- Our Services (start) -->

<?php 

$id_this_page_servises = get_field('link_to_the_page_our_services'); 

$post = $id_this_page_servises;
setup_postdata( $post );


?>

<section id="sect-page-servises">
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
								$children_this_page = get_pages( array( 'parent' => $id_this_page_servises, 'hierarchical' => 1, 'sort_column' => 'post_date' ) );
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

<?php wp_reset_postdata(); ?>

<!-- Our Services (finish) -->

<!-- Latest Projects (start) -->

<section id="sect-latest-projects">
	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12 align-c h2-main">Look Our Latest Projects</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Latest Projects (finish) -->

<!-- Our Partners (start) -->

<?php 

$id_this_page_partners = get_field('link_to_the_page_our_partners'); 

$post = $id_this_page_partners;
setup_postdata( $post );
$desc = get_field('description_of_the_page');
$mini_desc = mb_strimwidth($desc, 0, 200, " ...");

?>

<section id="sect-partners">
	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="row">
							<div class="col-4 pad-l-30">
								<div class="row">
									<h1 class="heading-page"><?php the_field('heading_for_the_page'); ?></h1>
									<div class="text-page"><?php echo $mini_desc; ?></div>
								</div>
							</div>
							<div class="col-8 pad-l-50">
								<div class="row">
									<?php 
									$partners_repeater = get_field('partners_repeater');
		              if($partners_repeater) { 
		              foreach($partners_repeater as $partner_repeater) { 
		              $image = $partner_repeater['image'];
		              ?>
		              <div class="col-6 mar-15 img-wrapper">
		              	<div class="row justify-content-center">
		              		<img src="<?php echo $image; ?>" alt="">
		              	</div>
		              </div>
									<?php } } ?>
								</div>
							</div>
						</div>
					</div>		
				</div>
			</div>
		</div>
	</div>
</section>

<?php wp_reset_postdata(); ?>

<!-- Our Partners (finish) -->


</main>


<?php get_footer(); ?>