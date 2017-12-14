<?php 
// Template Name: Servises Details
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
              // Находим данные о дочерних страницах к основным категориям (обычные категории товаров)
              $id_this_page = get_the_ID();
              $page_children = get_pages(
                  array( 'parent' => $id_this_page, 'hierarchical' => 1, 'sort_column' => 'menu_order' )
              );
              // var_dump($page_children);
              if ($page_children) {
	            // Выводим информацию из дочерних страниц
              $num = 1;
	            foreach( $page_children as $page_child ){
							$desc = get_field('description_of_the_page', $page_child->ID);
							$mini_desc = mb_strimwidth($desc, 0, 280, " [...]");
							if($num % 2 === 0) {
	            ?>
	            <a class="a-wrapper chet" href="<?php echo get_page_link( $page_child->ID ); ?>">
		            <div class="single-page-wrapper">
			            <div class="desc-single-page-wrapper-right">
				            <div class="head-single-page"><?php the_field('heading_for_the_page', $page_child->ID); ?></div>
				            <div class="desc-single-page"><?php echo $mini_desc; ?></div>
			            </div>
			            <div class="img-single-page-wrapper-left">
			            	<?php echo get_the_post_thumbnail( $page_child->ID, "serv-details-thumb", array( "class" => "img-responsive") ); ?>
			            </div>
		            </div>
	            </a>
							<?php
							$num++;
							} else { ?>

	            <a class="a-wrapper nechet" href="<?php echo get_page_link( $page_child->ID ); ?>">
		            <div class="single-page-wrapper">
			            <div class="desc-single-page-wrapper-left">
				            <div class="head-single-page"><?php the_field('heading_for_the_page', $page_child->ID); ?></div>
				            <div class="desc-single-page"><?php echo $mini_desc; ?></div>
			            </div>
			            <div class="img-single-page-wrapper-right">
			            	<?php echo get_the_post_thumbnail( $page_child->ID, "serv-details-thumb", array( "class" => "img-responsive") ); ?>
			            </div>
		            </div>
	            </a>


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
</section>

<!-- Our Services (finish) -->


</main>


<?php get_footer(); ?>