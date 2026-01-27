(function ($) {
    "use strict";

    // Initiate the wowjs animation library
    new WOW().init();

    // Initiate nav menu
    $('.menu, .overlay').click(function () {
        $('.menu').toggleClass('clicked');
        $('#nav').toggleClass('show');
    });

    //Portfolio modal slider
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

    $('#popover-content-download').hide();
    $("[data-toggle=popover]").each(function (e) {
        $(this).popover({
            html: true,
            content: function () {
                var id = $(this).attr('id')
                return $('#popover-content-' + id).html();
            }
        });

    });

    // Date and time picker of booking section
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

    // Theme Toggle Logic
    const themeToggle = $('#theme-toggle');
    const themeText = $('#theme-text');
    const body = $('body');

    function setTheme(isDark) {
        if (isDark) {
            body.addClass('dark-mode');
            themeText.text('Dark');
            localStorage.setItem('theme', 'dark');
        } else {
            body.removeClass('dark-mode');
            themeText.text('Light');
            localStorage.setItem('theme', 'light');
        }
    }

    // Initialize Theme
    const savedTheme = localStorage.getItem('theme');
    if (savedTheme === 'dark') {
        setTheme(true);
    }

    themeToggle.click(function () {
        const isDark = body.hasClass('dark-mode');
        setTheme(!isDark);
    });

    // RTL Toggle Logic
    const rtlToggle = $('#rtl-toggle');
    const rtlText = $('#rtl-text');
    const html = $('html');

    function setRTL(isRTL) {
        if (isRTL) {
            html.attr('dir', 'rtl');
            rtlText.text('On');
            localStorage.setItem('rtl', 'on');
        } else {
            html.removeAttr('dir');
            rtlText.text('Off');
            localStorage.setItem('rtl', 'off');
        }
    }

    // Initialize RTL
    const savedRTL = localStorage.getItem('rtl');
    if (savedRTL === 'on') {
        setRTL(true);
    }

    rtlToggle.click(function () {
        const isRTL = html.attr('dir') === 'rtl';
        setRTL(!isRTL);
    });

})(jQuery);

