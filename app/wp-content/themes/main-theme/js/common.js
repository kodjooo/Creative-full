$(function() {

	//SVG Fallback
	if(!Modernizr.svg) {
		$("img[src*='svg']").attr("src", function() {
			return $(this).attr("src").replace(".svg", ".png");
		});
	};

	//E-mail Ajax Send
	//Documentation & Example: https://github.com/agragregra/uniMail
	$("form").submit(function() { //Change
		var th = $(this);
		$.ajax({
			type: "POST",
			url: "mail.php", //Change
			data: th.serialize()
		}).done(function() {
			alert("Thank you!");
			setTimeout(function() {
				// Done Functions
				th.trigger("reset");
			}, 1000);
		});
		return false;
	});

});

$(document).ready(function(){

    var $menu = $(".main-header");

    $(window).scroll(function(){

        if ( $(this).scrollTop() > 100 && $menu.hasClass("default") ){

            $menu.removeClass("default").addClass("fixed");

            $("div.row.cont-info-header").addClass("hidden");

            $("a.custom-logo-link img").addClass("mini");

            // if($(".main-search-mini-wrapper").hasClass("active-top")){

            //     $(".main-search-mini-wrapper").removeClass("active-top");

            //     $(".main-search-mini-wrapper").addClass("active");

            // }

            // if($(".main-menu-mini-wrapper").hasClass("active-top")){

            //     $(".main-menu-mini-wrapper").removeClass("active-top");

            //     $(".main-menu-mini-wrapper").addClass("active");

            // }

            // $(".main-search-mini-wrapper").removeClass('active-top').addClass("active");

            // $(".main-menu-mini-wrapper").removeClass('active-top').addClass("active");



            

        } else if($(this).scrollTop() <= 100 && $menu.hasClass("fixed")) {

            $menu.removeClass("fixed").addClass("default");

            $("div.row.cont-info-header").removeClass("hidden");

            $("a.custom-logo-link img.custom-logo").removeClass("mini");

            // if($(".main-search-mini-wrapper").hasClass("active")){

            //     $(".main-search-mini-wrapper").removeClass("active");

            //     $(".main-search-mini-wrapper").addClass("active-top");

            // }

            // if($(".main-menu-mini-wrapper").hasClass("active")){

            //     $(".main-menu-mini-wrapper").removeClass("active");

            //     $(".main-menu-mini-wrapper").addClass("active-top");

            // }

            // $(".main-search-mini-wrapper").removeClass('active').addClass("active-top");

            // $(".main-menu-mini-wrapper").removeClass('active').addClass("active-top");

        }

    });//scroll

})
