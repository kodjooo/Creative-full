<?php 
// Template Name: Partners
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




</main>


<?php get_footer(); ?>