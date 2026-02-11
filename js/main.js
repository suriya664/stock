(function ($) {
    "use strict";

    // --- Early Initialization (Theme & RTL) ---
    const body = $('body');
    const html = $('html');

    // Theme Logic
    function setTheme(isDark) {
        if (isDark) {
            body.addClass('dark-mode');
            $('.theme-text').text('Dark');
            localStorage.setItem('theme', 'dark');
        } else {
            body.removeClass('dark-mode');
            $('.theme-text').text('Light');
            localStorage.setItem('theme', 'light');
        }
    }

    // RTL Logic
    function setRTL(isRTL) {
        if (isRTL) {
            html.attr('dir', 'rtl');
            $('.rtl-text').text('On');
            localStorage.setItem('rtl', 'on');
        } else {
            html.removeAttr('dir');
            $('.rtl-text').text('Off');
            localStorage.setItem('rtl', 'off');
        }
    }

    // Initialize Theme & RTL
    if (localStorage.getItem('theme') === 'dark') setTheme(true);
    if (localStorage.getItem('rtl') === 'on') setRTL(true);

    // Robust Event Binding (Delegation)
    $(document).on('click', '.theme-toggle', function (e) {
        e.preventDefault();
        setTheme(!body.hasClass('dark-mode'));
    });

    $(document).on('click', '.rtl-toggle', function (e) {
        e.preventDefault();
        setRTL(html.attr('dir') !== 'rtl');
    });
    // --- End Initialization ---

    // Initiate the wowjs animation library
    if (typeof WOW === 'function') {
        new WOW().init();
    }

    // Initiate nav menu
    $('.menu, .overlay').click(function () {
        $('.menu').toggleClass('clicked');
        $('#nav').toggleClass('show');
    });

    // Portfolio modal slider
    if ($.fn.slick) {
        $('.port-slider').slick({
            autoplay: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            fade: true,
            asNavFor: '.port-slider-nav'
        });
        $('.port-slider-nav').slick({
            autoplay: true,
            slidesToShow: 3,
            slidesToScroll: 1,
            asNavFor: '.port-slider',
            arrows: false,
            dots: false,
            centerMode: true,
            focusOnSelect: true
        });
    }

    $('#popover-content-download').hide();
    if ($.fn.popover) {
        $("[data-toggle=popover]").each(function (e) {
            $(this).popover({
                html: true,
                content: function () {
                    var id = $(this).attr('id')
                    return $('#popover-content-' + id).html();
                }
            });
        });
    }

    // Date and time picker of booking section
    if ($.fn.datetimepicker) {
        if ($('#date-1, #date-2').length) {
            $('#date-1, #date-2').datetimepicker({
                format: 'L'
            });
        }
        if ($('#time-1, #time-2').length) {
            $('#time-1, #time-2').datetimepicker({
                format: 'LT'
            });
        }
    }


    // Active Menu Highlighting
    var path = window.location.pathname.split("/").pop();
    if (path == '') path = 'index.html';
    $('#nav ul.main li a').each(function () {
        var href = $(this).attr('href');
        if (path === href) {
            $(this).addClass('active');
        }
    });

    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({ scrollTop: 0 }, 1500, 'easeInOutExpo');
        return false;
    });

    // Password Toggle
    $('.password-toggle').click(function () {
        var input = $(this).siblings('input');
        if (input.attr('type') === 'password') {
            input.attr('type', 'text');
            $(this).removeClass('fa-eye').addClass('fa-eye-slash');
        } else {
            input.attr('type', 'password');
            $(this).removeClass('fa-eye-slash').addClass('fa-eye');
        }
    });

    // Dashboard Navigation (Smooth scroll or section show/hide)
    $('.dashboard-nav .nav-link').click(function (e) {
        var target = $(this).attr('href');
        if (target.startsWith('#')) {
            e.preventDefault();
            $('.dashboard-nav .nav-link').removeClass('active');
            $(this).addClass('active');

            // Example simple hide/show logic if sections exist
            // $('section.dashboard-section').hide();
            // $(target).show();

            // Or smooth scroll if they are all on one page
            $('html, body').animate({
                scrollTop: $(target).offset().top - 150
            }, 1000);
        }
    });

})(jQuery);

