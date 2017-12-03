<?php 
// Template Name: Главная
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

<section id="sect-our-services">
	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12 align-c h2-main">Our Services</div>
					<div class="col-12 desc-text align-c">Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.   </div>
					<div class="col-12">
						<div class="row">
							<div class="col-6">
								<div class="col-12 service-wrapper">
									<div class="row height-100">
										<div class="col-12 service-value align-self-center">
											<div class="row height-100">
												<div class="col-12 align-self-center align-c service-text">Lorem ipsum dolor sit amet.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="col-12 service-wrapper">
									<div class="row height-100">
										<div class="col-12 service-value align-self-center">
											<div class="row height-100">
												<div class="col-12 align-self-center align-c service-text">Lorem ipsum dolor sit amet.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="col-12 service-wrapper">
									<div class="row height-100">
										<div class="col-12 service-value align-self-center">
											<div class="row height-100">
												<div class="col-12 align-self-center align-c service-text">Lorem ipsum dolor sit amet.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="col-12 service-wrapper">
									<div class="row height-100">
										<div class="col-12 service-value align-self-center">
											<div class="row height-100">
												<div class="col-12 align-self-center align-c service-text">Lorem ipsum dolor sit amet.</div>
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
	</div>
</section>

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

<section id="sect-partners">
	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-12 align-c h2-main">Our Partners</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Our Partners (finish) -->


</main>


<?php get_footer(); ?>