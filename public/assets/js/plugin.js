// ===================== Document Ready ===================== //
$(function () {
    // ===================== Window Scroll ===================== //
    $(window).scroll(function () {
        navbarScroll();
    });
    // ===================== Document Ready Initiate ===================== //
    navbarScroll();
    // ===================== Scroll To About US ===================== //
    $('.about_clinic').click(function (e) {
        scrollToSection(e, '.about_clinic_sec');
    });
    $('.cont_clinic').click(function (e) {
        scrollToSection(e, '.mess_faq_sec');
    });
    var param_scroll = getParameterByName('id');
    if(param_scroll){
        $('html, body').animate({
            scrollTop: $("#"+param_scroll).offset().top - $('.sm_wbnv_cont').outerHeight()
        }, 1000);
    }
    // ===================== Mobile Navbar Ready ===================== //
    $('.mob_nv_btn').click(function () {
        $(this).toggleClass('active').next().stop(true).slideToggle(300);
    });
    $('.sub_mneu_ttle').click(function () {
        $(this).next('.mob_sub_btn').toggleClass('active').next('.mob_sbmnu_lst').stop(true).slideToggle(300);
        $('.mob_sub_btn').not($(this).next('.mob_sub_btn')).removeClass('active');
        $('.mob_sbmnu_lst').not($(this).next('.mob_sub_btn').next()).stop(true).slideUp(300);
    });
    // ===================== Sliders ===================== //
    var header_slider = new Swiper('.header_slider', {
        autoplay: {
            delay: 5000,
            disableOnInteraction: false
        },
        speed: 400,
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },

    });
    var testim_slider = new Swiper('.testim_slider', {
        speed: 400,
        loop: true
       /* effect: 'fade',*/
    });
    var faci_slider = new Swiper('.faci_slider', {
        slidesPerView: 'auto',
        observer: true,
        observeParents: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        }
    });

    // ===================== Departments Tabs ===================== //
    $('.sin_tab_btn').click(function () {
        siteTabs($(this), 'tab', '.sin_tab_cont');
    });
    // ===================== FAQ Accordion ===================== //
    $('.acc_ttle').click(function () {
        $(this).toggleClass('active').next().stop(true).slideToggle(300);
        $('.acc_ttle').not($(this)).removeClass('active');
        $('.acc_desc').not($(this).next()).stop(true).slideUp(300);
    });
    // ===================== Scroll To Footer ===================== //
    $('.scroll_lk').click(function (e) {
        e.preventDefault();
        $('html, body').stop(true).animate({scrollTop: $('.main_footer').offset().top}, 1000);
    });
    // ===================== Facilities Tabs ===================== //
    $('.sld_tab_btn').click(function () {
        // var tgt_cont = $(this).parents('.fac_tb_cont').find('.sin_sld_cont[sld_tab="'+ $(this).attr('sld_tab') +'"]');
        // siteTabs($(this), 'sld_tab', tgt_cont);

        var tb_btn = $(this).attr('sld_tab'),
            tgt_cont = $(this).parents('.fac_tb_cont').find('.sin_sld_cont[sld_tab="'+ $(this).attr('sld_tab') +'"]');
        $(this).addClass('active').siblings().removeClass('active');
        tgt_cont.stop(true).fadeIn(300).siblings().hide();

    });
    $('.fac_tb_btn').click(function () {siteTabs($(this), 'tab', '.fac_tb_cont');});
    // ===================== fancybox ===================== //
    $("[data-fancybox]").fancybox({
        loop : true,
        arrows : true,
        animationEffect : "zoom",
        buttons : [
            'close',
            'fullScreen'
        ],
        image : {
            zoom: true
        }
    });
});
// ===================== Document Scroll ===================== //
$(document).on('scroll click', function (e) {
    /* ============= Mobile Hide Navbar when scrolling ============= */
    var mb_btn = $(".mob_nv_btn"),
        mb_lks = $(".mob_lks_list");
    if(!$(e.target).parents().is('.mob_nv_btn') && !mb_lks.is(e.target) && !$(e.target).parents().is('.mob_lks_list') && mb_btn.hasClass('active')) {
        mb_btn.removeClass('active');
        mb_lks.stop(true).slideUp(300);
        $('.mob_sub_btn').removeClass('active').next().stop(true).slideUp(300);
    }
});
// ===================== Functions ===================== //
function siteTabs(btn, attr, targetCont) {
    var btn_attr = $(btn).attr(attr);
    $(btn).addClass('active').siblings().removeClass('active');
    $(targetCont+'['+attr+'='+ btn_attr +']').stop(true).fadeIn(300).siblings().hide();
}
function navbarScroll() {
    var main_hd = $('.main_header'),
        sm_wbnv_cont = $('.sm_wbnv_cont'),
        header_hght = main_hd.offset().top + main_hd.outerHeight();
    if($(window).scrollTop() > header_hght && !sm_wbnv_cont.hasClass('scrollNavbar')){
        sm_wbnv_cont.addClass('scrollNavbar');
    } else if($(window).scrollTop() <= header_hght && sm_wbnv_cont.hasClass('scrollNavbar')) {
        sm_wbnv_cont.removeClass('scrollNavbar');
    }
}
function scrollToSection(e, tgt_sec) {
    e.preventDefault();
    if($(this).parents().is('.mob_nav')) {
        $("html, body").animate({
            scrollTop: $().offset(tgt_sec).top - $('.mob_nav').outerHeight() - $('.head_smed').outerHeight()
        }, 1000);
        $(".mob_nv_btn").removeClass('active');
        $(".mob_lks_list").stop(true).slideUp(300);
    } else {
        $("html, body").animate({
            scrollTop: $(tgt_sec).offset().top - $('.web_nav').outerHeight() - $('.head_smed').outerHeight()
        }, 1000);
    }
}
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

