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





            

        } else if($(this).scrollTop() <= 100 && $menu.hasClass("fixed")) {

            $menu.removeClass("fixed").addClass("default");

            $("div.row.cont-info-header").removeClass("hidden");

            $("a.custom-logo-link img.custom-logo").removeClass("mini");



        }

    });//scroll

})


if(document.documentElement.clientWidth > 896) {
    $(document).ready(function(){
        $(".spoiler:first").removeClass("non-visible").addClass("visible");
    });
    $(".spoiler.non-visible").click(function(){
        $(".spoiler.visible").removeClass("visible").addClass("non-visible");
        $(this).removeClass("non-visible").addClass("visible");
    });
};
if(document.documentElement.clientWidth < 896) {
    $(document).ready(function(){
        $(".spoiler").removeClass("non-visible").addClass("visible");
    });
    $(".shagi").owlCarousel({
        nav : true, // Show next and prev buttons
        slideSpeed : 700,
        dots : true,
        items: 1,
        autoplay : false,
        navText: ['Лево', 'Право']
    });
};

$(function(){
  $(".portfolio").mixItUp({
    // Нужно сначала дать display: none всем фильтрующимся элементам
    // При загрузке фильтрует по этому фильтру
    load: {
     filter:'all'
    },
    // Добавляет класс акт. кнопке
    controls: {
     activeClass:'on'
    } 
    // animation: {
    //  enable:true, - вкл. анимацию
    //  effects:'scale fade',
    //  duration:700
    // }
    // Поддерживаемые значения: fade, scale, translateY, translateZ, rotateX, rotateY, rotateZ, stagger, translateX
  });
});

$(function(){
  $(".materials-galary").mixItUp({
    // Нужно сначала дать display: none всем фильтрующимся элементам
    // При загрузке фильтрует по этому фильтру
    load: {
     filter:'.laminate'
    },
    // Добавляет класс акт. кнопке
    controls: {
     activeClass:'on'
    } 
    // animation: {
    //  enable:true, - вкл. анимацию
    //  effects:'scale fade',
    //  duration:700
    // }
    // Поддерживаемые значения: fade, scale, translateY, translateZ, rotateX, rotateY, rotateZ, stagger, translateX
  });
});


