<?php 
// Template Name: Project
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

<section id="sect-page-projects">
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
							<div class="controls text-center pb-30">
                        <button type="button" class="button main-my-button filter" data-filter="all">ALL PROJECT</button>
                        <div class="many-buttons">
	                        <?php
	                        $flooring = get_field('gallery_title_flooring');
	                        if( $flooring ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".flooring"><?php echo $flooring; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $kuhni = get_field('gallery_title_kuhni');
	                        if( $kuhni ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".kuhni"><?php echo $kuhni; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $bathroom = get_field('gallery_title_bathroom');
	                        if( $bathroom ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".bathroom"><?php echo $bathroom; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $counertops = get_field('gallery_title_counertops');
	                        if( $counertops ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".counertops"><?php echo $counertops; ?></button>
	                        <?php endif; ?>
	                        <?php
	                        $cabinets = get_field('gallery_title_cabinets');
	                        if( $cabinets ): ?>
	                        <button type="button" class="button my-button filter" data-filter=".cabinets"><?php echo $cabinets; ?></button>
	                        <?php endif; ?>
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
			<div class="col-12">
				<div class="row">
					<!-- Article Start -->
            <article class="col-12 gallery-art-wrapper" id="article-<?php the_ID(); ?>">
                <div class="article_content">
                    <div class="gallery portfolio">
                        <?php

                        $images = get_field('gallery_flooring');
                        ksort($images);
                        if( $images ): ?>
                          <?php foreach( $images as $image ): ?>
                          			
                                <a href="<?php echo $image['url']; ?>" class="col-3 mix flooring fancybox" rel="gallery-1">
                                    <img src="<?php echo $image['sizes']['gallery-project-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                    <div class="project-item-wrapper">
			                                <span class="project-item-head"><?php echo $image['caption']; ?></span>
			                                <span class="project-item-desc"><?php echo $image['description']; ?></span>
			                                <span class="icon-eye"></span>
		                            		</div>
                                </a>
                                
                          <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_kuhni');
                        ksort($images);

                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-3 mix kuhni fancybox" rel="gallery-2">
                                    <img src="<?php echo $image['sizes']['gallery-project-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                    <div class="project-item-wrapper">
			                                <span class="project-item-head"><?php echo $image['caption']; ?></span>
			                                <span class="project-item-desc"><?php echo $image['description']; ?></span>
			                                <span class="icon-eye"></span>
		                            		</div>
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_bathroom');
                        ksort($images);

                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-3 mix bathroom fancybox" rel="gallery-3">
                                    <img src="<?php echo $image['sizes']['gallery-project-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                    <div class="project-item-wrapper">
			                                <span class="project-item-head"><?php echo $image['caption']; ?></span>
			                                <span class="project-item-desc"><?php echo $image['description']; ?></span>
			                                <span class="icon-eye"></span>
		                            		</div>
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_counertops');
                        ksort($images);


                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-3 mix counertops fancybox" rel="gallery-4">
                                    <img src="<?php echo $image['sizes']['gallery-project-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                    <div class="project-item-wrapper">
			                                <span class="project-item-head"><?php echo $image['caption']; ?></span>
			                                <span class="project-item-desc"><?php echo $image['description']; ?></span>
			                                <span class="icon-eye"></span>
		                            		</div>
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <?php

                        $images = get_field('gallery_cabinets');
                        ksort($images);

                        if( $images ): ?>
                            <?php foreach( $images as $image ): ?>
                                <a href="<?php echo $image['url']; ?>" class="col-3 mix cabinets fancybox" rel="gallery-5">
                                    <img src="<?php echo $image['sizes']['gallery-project-thumb']; ?>" alt="<?php echo $image['alt']; ?>" />
                                    <div class="project-item-wrapper">
			                                <span class="project-item-head"><?php echo $image['caption']; ?></span>
			                                <span class="project-item-desc"><?php echo $image['description']; ?></span>
			                                <span class="icon-eye"></span>
		                            		</div>
                                </a>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </article>
            <!-- Article End -->
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Our Services (finish) -->


</main>


<?php get_footer(); ?>