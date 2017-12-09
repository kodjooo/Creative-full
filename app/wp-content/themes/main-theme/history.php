<?php 
// Template Name: History
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

<section id="sect-page-partners">
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
					<div class="col-12 partners-repeater">
						<div class="row">
							<?php 
							$partners_repeater = get_field('partners_repeater');
              if($partners_repeater) { 
              foreach($partners_repeater as $partner_repeater) { 
              $name = $partner_repeater['name'];
              $image = $partner_repeater['image'];
              $description = $partner_repeater['description'];
              ?>
							<div class="col-6 partner-wrapper">
								<div class="row m-0">
									<div class="col-5">
										<div class="row">
											<img src="<?php echo $image; ?>" alt="">
										</div>
									</div>
									<div class="col-7">
										<div class="row">
											<div class="name-partner"><?php echo $name; ?></div>
											<div class="desc-partner"><?php echo $description; ?></div>
										</div>
									</div>
								</div>
								
							</div>
							<?php } } ?>
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