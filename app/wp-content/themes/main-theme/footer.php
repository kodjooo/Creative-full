<!-- Footer (start) -->

<style>
#sect-footer {
	background-image: url(<?php the_field('back_footer', 'option'); ?>);
  background-size: cover;
  position: relative;
  padding: 100px 0px 60px 0px;
}
</style>

<footer>
	<section id="sect-footer">
		<div class="container-fluid">
			<div class="row">
				<div class="container">
					<div class="row">
						<div class="col-12 align-c heading-footer-cont">
							<span class="heading-footer-cont-value"><?php the_field('heading_footer', 'option'); ?></span>
						</div>
						<div class="col-12 contact-icon">
							<div class="row">
								<div class="col-4">
									<div class="row">
										<div class="col-4">
											<div class="i-wrapper">
												<i class="fa fa-phone" aria-hidden="true"></i>
											</div>
										</div>
										<div class="cont-i-wrapper col-8">
											<div class="con-i-value align-self-center">
												<span class="con-tel"><?php the_field('tel-first_footer', 'option'); ?></span>
												<span class="con-tel"><?php the_field('tel-second_footer', 'option'); ?></span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-4">
									<div class="row">
										<div class="col-4">
											<div class="i-wrapper">
												<i class="fa fa-map-marker" aria-hidden="true"></i>
											</div>
										</div>
										<div class="cont-i-wrapper col-8">
											<div class="con-i-value align-self-center"><?php the_field('location_footer', 'option'); ?></div>
										</div>
									</div>
								</div>
								<div class="col-4">
									<div class="row">
										<div class="col-4">
											<div class="i-wrapper">
												<i class="fa fa-envelope" aria-hidden="true"></i>
											</div>
										</div>
										<div class="cont-i-wrapper col-8">
											<div class="con-i-value align-self-center"><?php the_field('email_footer', 'option'); ?></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12">
							
								<?php echo do_shortcode( '[contact-form-7 id="19" title="Main contact-form"]' ); ?>
							
						</div>
						
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="sub-footer">
		<div class="row">
			<div class="sub-footer-wrapper-text col-12">
				<div class="sub-footer-value-text">	&copy; Creative Tile & Stone design, Inc. <?php echo date('Y') ?> All rights reserved </div>
			</div>
		</div>
	</section>
</footer>
<!-- Footer (finish) -->	

<div class="hidden"></div>

<!--[if lt IE 9]>
<script src="libs/html5shiv/es5-shim.min.js"></script>
<script src="libs/html5shiv/html5shiv.min.js"></script>
<script src="libs/html5shiv/html5shiv-printshiv.min.js"></script>
<script src="libs/respond/respond.min.js"></script>
<![endif]-->

<!-- Load Scripts Start -->
<script>var scr = {"scripts":[
	// {"src" : "/wp-content/themes/main-theme/js/libs.js", "async" : false},
	{"src" : "/wp-content/themes/main-theme/js/common.js", "async" : false}
	]};!function(t,n,r){"use strict";var c=function(t){if("[object Array]"!==Object.prototype.toString.call(t))return!1;for(var r=0;r<t.length;r++){var c=n.createElement("script"),e=t[r];c.src=e.src,c.async=e.async,n.body.appendChild(c)}return!0};t.addEventListener?t.addEventListener("load",function(){c(r.scripts);},!1):t.attachEvent?t.attachEvent("onload",function(){c(r.scripts)}):t.onload=function(){c(r.scripts)}}(window,document,scr);
</script>
<!-- Load Scripts End -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>
