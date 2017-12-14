<!DOCTYPE html>
<html class="no-js" lang="ru">

<head>

	<meta charset="utf-8">

	<title>Заголовок</title>
	<meta name="description" content="">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<meta property="og:image" content="path/to/image.jpg">

	<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="img/favicon/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-touch-icon-114x114.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<link rel="stylesheet" href="/wp-content/themes/main-theme/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Saira|Muli|Nunito" rel="stylesheet">
	<link rel="stylesheet" href="/wp-content/themes/main-theme/css/simple-line-icons.css">
	<link rel="stylesheet" type="text/css" href="/wp-content/themes/main-theme/css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="/wp-content/themes/main-theme/css/owl.theme.default.min.css">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script type="text/javascript" src="/wp-content/themes/main-theme/js/jquery.mixitup.js"></script>

	

	<!-- Header CSS (First Sections of Website: paste after release from header.min.css here) -->
	<style></style>

	<!-- Load CSS, CSS Localstorage & WebFonts Main Function -->
	<script>!function(e){"use strict";function t(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent&&e.attachEvent("on"+t,n)}function n(t,n){return e.localStorage&&localStorage[t+"_content"]&&localStorage[t+"_file"]===n}function a(t,a){if(e.localStorage&&e.XMLHttpRequest)n(t,a)?o(localStorage[t+"_content"]):l(t,a);else{var s=r.createElement("link");s.href=a,s.id=t,s.rel="stylesheet",s.type="text/css",r.getElementsByTagName("head")[0].appendChild(s),r.cookie=t}}function l(e,t){var n=new XMLHttpRequest;n.open("GET",t,!0),n.onreadystatechange=function(){4===n.readyState&&200===n.status&&(o(n.responseText),localStorage[e+"_content"]=n.responseText,localStorage[e+"_file"]=t)},n.send()}function o(e){var t=r.createElement("style");t.setAttribute("type","text/css"),r.getElementsByTagName("head")[0].appendChild(t),t.styleSheet?t.styleSheet.cssText=e:t.innerHTML=e}var r=e.document;e.loadCSS=function(e,t,n){var a,l=r.createElement("link");if(t)a=t;else{var o;o=r.querySelectorAll?r.querySelectorAll("style,link[rel=stylesheet],script"):(r.body||r.getElementsByTagName("head")[0]).childNodes,a=o[o.length-1]}var s=r.styleSheets;l.rel="stylesheet",l.href=e,l.media="only x",a.parentNode.insertBefore(l,t?a:a.nextSibling);var c=function(e){for(var t=l.href,n=s.length;n--;)if(s[n].href===t)return e();setTimeout(function(){c(e)})};return l.onloadcssdefined=c,c(function(){l.media=n||"all"}),l},e.loadLocalStorageCSS=function(l,o){n(l,o)||r.cookie.indexOf(l)>-1?a(l,o):t(e,"load",function(){a(l,o)})}}(this);</script>

	<!-- Load CSS Start -->
	<script>loadLocalStorageCSS( "webfonts", "/wp-content/themes/main-theme/css/fonts.min.css?ver=1.0.0" );</script>
	<script>loadCSS( "/wp-content/themes/main-theme/css/header.min.css?ver=1.0.0", false, "all" );</script>
	<script>loadCSS( "/wp-content/themes/main-theme/style.css?ver=1.0.0", false, "all" );</script>
	<!-- Load CSS End -->
	
	<!-- Load CSS Compiled without JS -->
	<noscript>
		<link rel="stylesheet" href="/wp-content/themes/main-theme/css/fonts.min.css">
		<link rel="stylesheet" href="/wp-content/themes/main-theme/style.css">
	</noscript>

</head>

<body>

<!-- Header (start) -->

<header>
	
<div class="container-fluid main-header default">
		<div class="row height-100">
			<div class="container height-100 relative">
				<div class="row height-100">
					<div class="col-5 align-self-center logo-head">
						<a href="" class="custom-logo-link">
							<img src="<?php the_field('main-logo-header', 'option'); ?>" class="custom-logo" alt="">
							<img src="<?php the_field('sub-main-logo-header', 'option'); ?>" class="custom-logo-mini" alt="">
						</a>
					</div>
					<div class="row cont-info-header align-items-center justify-content-end">
						<div class="col-7">
							<div class="row">
								<div class="col-8 cont-header-value">
									<div class="cont-text-wrapper relative">
										<i class="fa fa-map-marker cont-header-icon" aria-hidden="true"></i> 
										<span class="bold">Adress:</span>
										<span class="value-text-cont">234 Roud Street, SW Florids</span>
									</div>
								</div>
								<div class="col-4 cont-header-value">
									<div class="cont-text-wrapper relative">
										<i class="fa fa-clock-o cont-header-icon" aria-hidden="true"></i> 
										<span class="bold">Mon-Fri:</span>
										<span class="value-text-cont">08:00 - 16:00</span>
									 </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-7 main-menu-wrapper align-self-end">
						<?php wp_nav_menu( array( 'theme_location' => 'main-menu' ) ); ?>
						</div>
				</div>
			</div>
		</div>
	</div>	

<?php wp_head() ?>
</header>

<!-- Header (footer) -->