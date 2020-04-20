$(window).on('scroll', function(){
    if($(window).scrollTop()){
        $('nav').addClass('black');
    }
    else {
        $('nav').removeClass('black');
    }

    $('.nav-link').on('click', function(){

        var tujuan = $(this).attr('href');
        var elemenTujuan = $(tujuan);

    // untuk agar tidak lag atau delay gunakan fungsi stop
        $('body').stop().animate({
            scrollTop: elemenTujuan.offset().top - 75
        } ,1500 ,'easeInOutExpo');

        // Buat Paralax Hero tapi gk di pakai juga masih work gk tau kenapa tuh 
        // $('.parallax-window').parallax({imageSrc: 'paralax7.jpg'});

    });

});
