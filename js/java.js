// var image = document.getElementsByClassName('thumbnail');
// new simpleParallax(image, {
// 	scale: 1.5
// });

$(window).on('scroll', function(){
    if($(window).scrollTop()){
        $('.navbar').addClass('black');
        $('.toggle-collapse').addClass('white');
    }
    else {
        $('.navbar').removeClass('black');
        $('.toggle-collapse'). removeClass('white');
    }
 
    $('.page').on('click', function(){
        var tujuan = $(this).attr('href');
        var elemenTujuan = $(tujuan);

        $('body, html').stop().animate({
            scrollTop: elemenTujuan.offset().top - 70 
        } ,1500 ,'easeInOutExpo');

    });

    // $('#search-tombol').on('click', function(){
    //     // var tujuan = $('#list-book');
    //     // var elemenTujuan = $(tujuan);

    //     $('body, html').stop().animate({
    //         scrollTop: HTMLDocument.offset().top - 70 
    //     } ,1500 ,'easeInOutExpo');

    // });

});

// function buton(){
//     var dots1 = document.getElementById("dots1");
//     var more2 = document.getElementById("more2");
//     var moreTeks = document.getElementById("more1");
//     var btnTeks =  document.getElementById("read1");

//     if (dots2.style.display === "flex") {
//         dots1.style.display = "flex";
//         more2.style.display = "none";
//         moreTeks.style.display = "none";
//         btnTeks.innerHTML = "Show More";

//     } else {
//         dots1.style.display = "flex";
//         moreTeks.style.display = "flex";
//         more2.style.display = "flex";
//         btnTeks.innerHTML = "Show Less";
//     }
// }

$(document).ready(function(){

    var trigger = $('#next'),
        container = $('#content');

    trigger.on('click', function(){

        var $this = $(this)
            target = $this.data('target'); 

        container.load(target + '.html');

    });
});



