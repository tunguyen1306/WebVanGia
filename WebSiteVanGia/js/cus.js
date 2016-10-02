
//click language
jQuery(function ($) {
    ///
    $('.item_content').hover(function ()
    {
        
        $(this).find('span').addClass("selected");

    }, function () {
        $(this).find('span').removeClass("selected");
        //$(this).find('span').css("background-color", "blue")

    });

   (function ($, undefined) {
        $.fn.BlackAndWhite_init = function () {
            var selector = $(this);
            selector.find('img').not(".slide-img").parent().BlackAndWhite({
                invertHoverEffect: ".$this->params->get('invertHoverEffect').",
                intensity: 1,
                responsive: true,
                speed: {
                    fadeIn: ".$this->params->get('fadeIn').",
                    fadeOut: ".$this->params->get('fadeOut')."
                }
            });
        }
    })(jQuery);
    //jQuery(window).load(function ($) {
    //    jQuery('.item_img a').find('img').not('.lazy').parent().BlackAndWhite_init();
    //});
   


    //$(document).ready(function () {
    //    $(".iceMenuTitle").hover(function () {
    //        $(this).css("background-color", "rgba(0, 0, 0, 0.05)");
    //    }, function () {
    //        $(this).css("background-color", "rgba(0, 0, 0, 0)");
    //    });
    //});


    $('#language').click(function() {

    });
    /////active menu 
    var t = window.location.pathname;
    if (t == "/")
        t = "Default.aspx";
    $('.iceMenuTitle[href*="' + t + '"]').css("background-color", "rgba(0, 0, 0, 0)");
        
        var lan=2;
        if ($("[id*='lbtn_language'][rellan]").size()!=0) {
            lan = $("[id*='lbtn_language'][rellan]").attr('rellan');
        }


    //load lan
    $.ajax
    ({
        type: "POST",
        url: "WebLoadData.asmx/GetRowLan", //LyricsloadMore
        data: JSON.stringify({ lan: lan }),
        dataType: "json",
        contentType: "application/json;charset=utf-8",
        success: function(data) {


            $.each(data.d, function(i, o) {
                if (o.key_word_vg.lastIndexOf("ip_") != -1)
                    $('.' + o.key_word_vg).val(o.name_vg);
                else if (o.key_word_vg.lastIndexOf("pl_") != -1)
                    $('.' + o.key_word_vg).attr("placeholder", o.name_vg);
                else
                    $('.' + o.key_word_vg).html(o.name_vg);

            });
            console.log(data);

        }
    });
    //load lan end


});

//jQuery(document).ready(function ($) {
//    $(window).load(function () {

//        var $cols = 3;
//        var $container = $('#isotopeContainer');

//        $item = $('.gallery-item')

//        $container.mixitup({
//            targetSelector: '.gallery-item',
//            filterSelector: '.filter',
//            sortSelector: '.sort',
//            buttonEvent: 'click',
//            effects: [],
//            listEffects: null,
//            easing: 'smooth',
//            layoutMode: 'grid',
//            targetDisplayGrid: 'inline-block',
//            targetDisplayList: 'block',
//            gridClass: 'grid',
//            listClass: 'list',
//            transitionSpeed: 600,
//            showOnLoad: 'all',
//            sortOnLoad: false,
//            multiFilter: false,
//            filterLogic: 'or',
//            resizeContainer: true,
//            minHeight: 0,
//            failClass: 'fail',
//            perspectiveDistance: '3000',
//            perspectiveOrigin: '50% 50%',
//            animateGridList: true,
//            onMixLoad: function () {
//                $container.addClass('loaded');
//            },
//            onMixStart: function (config) {
//                if (config.layoutMode == 'list') {
//                    config.effects = ['fade', 'scale']
//                }
//                else {
//                    config.effects = []
//                    $container.find('.mix').removeClass('gallery-list').addClass('gallery-grid');
//                }
//            },
//            onMixEnd: function (config) {
//                if (config.layoutMode == 'list') {
//                    $container.find('.mix').addClass('gallery-list').removeClass('gallery-grid');
//                }
//            }
//        });

//        $('.toGrid').click(function () {
//            $('.layout-mode a').removeClass('active');
//            $(this).addClass('active');
//            $container.mixitup('toGrid')
//        })

//        $('.toList').click(function () {
//            $('.layout-mode a').removeClass('active');
//            $(this).addClass('active');
//            $container.mixitup('toList');

//        })

//        $('ul#isotopeContainer a[data-fancybox="fancybox"]').fancybox({
//            padding: 0,
//            margin: 0,
//            loop: true,
//            openSpeed: 500,
//            closeSpeed: 500,
//            nextSpeed: 500,
//            prevSpeed: 500,
//            afterLoad: function () {
//                $('.fancybox-inner').click(function () {
//                    if (click == true) {
//                        $('body').toggleClass('fancybox-full');
//                    }
//                })
//            },
//            beforeShow: function () {
//                $('body').addClass('fancybox-lock');
//            },
//            afterClose: function () {
//                $('body').removeClass('fancybox-lock');
//            },
//            tpl: {
//                image: '&lt;div class="fancybox-image" style="background-image: url(\'{href}\');"/&gt;',
//                iframe: '&lt;span class="iframe-before"/&gt;&lt;iframe id="fancybox-frame{rnd}" width="60%" height="60%" name="fancybox-frame{rnd}" class="fancybox-iframe" frameborder="0" vspace="0" hspace="0"' + ($.browser.msie ? ' allowtransparency="true"' : '') + '/&gt;'
//            },
//            helpers: {
//                title: null,
//                thumbs: {
//                    height: 50,
//                    width: 80,
//                    source: function (current) {
//                        return $(current.element).find('img').data('src') ? $(current.element).find('img').data('src') : $(current.element).find('img').attr('src');
//                    }
//                },
//                overlay: {
//                    css: {
//                        'background': '#191919'
//                    }
//                }
//            }
//        });
//        $('#sort .sort').click(function () {
//            $('#sort .sort').removeClass('selected').removeClass('active');
//            $(this).addClass('selected');
//            if ($(this).attr('data-order') == 'desc') {
//                $(this).attr('data-order', 'asc')
//            }
//            else {
//                $(this).attr('data-order', 'desc')
//            }
//        })
//    });
//});
jQuery(function ($) {
    if ($('body').hasClass('desktop_mode') || ($('body').hasClass('mobile') && screen.width > 767)) {
        $('.icemegamenu li>a').click(function() {
            var link = $(this);
            if (link.closest('li').hasClass("parent")) {
                if (link.closest('li').hasClass("hover")) {
                    if (link.attr('href').length) {
                        window.location = link.attr('href');
                    }
                } else {
                    $('.icemegamenu li.parent').not(link.closest('li').parents('li')).not(link.closest('li')).removeClass('hover');
                    link.closest('li').addClass('hover').attr('data-hover', 'true');
                    link.closest('li').find('>ul.icesubMenu').addClass('visible');
                    return false;
                }
            }
        });
    }
    else {
        $('#icemegamenu li.parent[class^="iceMenuLiLevel"]').hover(function() {
                $('#icemegamenu li.parent[class^="iceMenuLiLevel"]').not($(this).parents('li')).not($(this)).removeClass('hover');
                $(this).addClass('hover').attr('data-hover', 'true');
                $(this).find('>ul.icesubMenu').addClass('visible');
            },
            function() {
                $(this).attr('data-hover', 'false');
                $(this).delay(800).queue(function(n) {
                    if ($(this).attr('data-hover') == 'false') {
                        $(this).removeClass('hover').delay(250).queue(function(n) {
                            if ($(this).attr('data-hover') == 'false') {
                                $(this).find('>ul.icesubMenu').removeClass('visible');
                            }
                            n();
                        });
                    }
                    n();
                });
            });
    }
    // if(screen.width>767){
    // 	$(window).load(function(){
    // 		$('#icemegamenu').parents('[id*="-row"]').scrollToFixed({minWidth: 768});
    // 	})
    // }
});
jQuery(document).ready(function() {
    var browser_width1 = jQuery(window).width();
    jQuery("#icemegamenu").find(".icesubMenu").each(function(index) {
        var offset1 = jQuery(this).offset();
        var xwidth1 = offset1.left + jQuery(this).width();
        if (xwidth1 >= browser_width1) {
            jQuery(this).addClass("ice_righttoleft");
        }
    });

});
jQuery(window).resize(function () {
    var browser_width = jQuery(window).width();
    jQuery("#icemegamenu").find(".icesubMenu").removeClass("ice_righttoleft");
    jQuery("#icemegamenu").find(".icesubMenu").each(function (index) {
        var offset = jQuery(this).offset();
        var xwidth = offset.left + jQuery(this).width();

        if (xwidth >= browser_width) {
            jQuery(this).addClass("ice_righttoleft");
        }
    });
});
jQuery(function () {
    jQuery('#camera-slideshow_92').camera({
        alignment: "topCenter", //topLeft, topCenter, topRight, centerLeft, center, centerRight, bottomLeft, bottomCenter, bottomRight
        autoAdvance: true,	//true, false
        mobileAutoAdvance: true, //true, false. Auto-advancing for mobile devices
        barDirection: "leftToRight",	//'leftToRight', 'rightToLeft', 'topToBottom', 'bottomToTop'
        barPosition: "bottom",	//'bottom', 'left', 'top', 'right'
        cols: 6,
        easing: "swing",	//for the complete list http://jqueryui.com/demos/effect/easing.html
        mobileEasing: "swing",	//leave empty if you want to display the same easing on mobile devices and on desktop etc.
        fx: "simpleFade",
        mobileFx: "simpleFade",		//leave empty if you want to display the same effect on mobile devices and on desktop etc.
        gridDifference: 250,	//to make the grid blocks slower than the slices, this value must be smaller than transPeriod
        height: "50.50505050505051%",	//here you can type pixels (for instance '300px'), a percentage (relative to the width of the slideshow, for instance '50%') or 'auto'
        imagePath: 'img/',	//the path to the image folder (it serves for the blank.gif, when you want to display videos)
        hover: true,	//true, false. Puase on state hover. Not available for mobile devices
        loader: "none",	//pie, bar, none (even if you choose "pie", old browsers like IE8- can't display it... they will display always a loading bar)
        loaderColor: "#eeeeee",
        loaderBgColor: "#222222",
        loaderOpacity: .8,	//0, .1, .2, .3, .4, .5, .6, .7, .8, .9, 1
        loaderPadding: 2,	//how many empty pixels you want to display between the loader and its background
        loaderStroke: 7,	//the thickness both of the pie loader and of the bar loader. Remember: for the pie, the loader thickness must be less than a half of the pie diameter
        minHeight: "200px",	//you can also leave it blank
        navigation: true,	//true or false, to display or not the navigation buttons
        navigationHover: false,	//if true the navigation button (prev, next and play/stop buttons) will be visible on hover state only, if false they will be 	visible always
        mobileNavHover: false,	//same as above, but only for mobile devices
        opacityOnGrid: false,	//true, false. Decide to apply a fade effect to blocks and slices: if your slideshow is fullscreen or simply big, I recommend to set it false to have a smoother effect 
        overlayer: false,	//a layer on the images to prevent the users grab them simply by clicking the right button of their mouse (.camera_overlayer)
        pagination: false,
        playPause: false,	//true or false, to display or not the play/pause buttons
        pauseOnClick: false,	//true, false. It stops the slideshow when you click the sliders.
        pieDiameter: 38,
        piePosition: "rightTop",	//'rightTop', 'leftTop', 'leftBottom', 'rightBottom'
        portrait: false, //true, false. Select true if you don't want that your images are cropped
        rows: 4,
        slicedCols: 6,	//if 0 the same value of cols
        slicedRows: 4,	//if 0 the same value of rows
        // slideOn				: "",	//next, prev, random: decide if the transition effect will be applied to the current (prev) or the next slide
        thumbnails: false,
        time: 7000,	//milliseconds between the end of the sliding effect and the start of the nex one
        transPeriod: 1500	//lenght of the sliding effect in milliseconds
        // onEndTransition		: function() {  },	//this callback is invoked when the transition effect ends
        // onLoaded					: function() {  },	//this callback is invoked when the image on a slide has completely loaded
        // onStartLoading		: function() {  },	//this callback is invoked when the image on a slide start loading
        // onStartTransition	: function() {  }	//this callback is invoked when the transition effect starts
    });
});
jQuery(window).on('load', function () {
    new JCaption('img.caption');
});
window.setInterval(function () { var r; try { r = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP") } catch (e) { } if (r) { r.open("GET", "./", true); r.send(null) } }, 840000);
jQuery(document).ready(function () {
    jQuery('.hasTooltip').tooltip({ "html": true, "container": "body" });
});

jQuery(function ($) {
    $("img.lazy").lazy({
        threshold: 200,
        visibleOnly: false,
        effect: "show",
        effectTime: 0,
        throttle: 500,
        beforeLoad: function (element) {
            element.unwrap();
            element.next().remove();
        },
        afterLoad: function (element) {
            setTimeout(function () {
                element.removeClass("lazy");
                if (typeof $.fn.BlackAndWhite_init == "function") {
                    jQuery(element).parent("1a").BlackAndWhite_init();
                }
            }, 100)
        },
        //onError: function (element) {
            
        //    alert("fgfgfgf " + element.attr('src') + " not exist");
        //}
    });
});

//jQuery(function ($) {
//    var success = "Thank You! Your message has been sent.",
//    error = "Something went wrong, please try again later.",
//    recaptcha_error = "Please enter a correct Captcha answer.",
//    id = "137",
//    validator = $('#contact-form_137').validate({
//        wrapper: "span",
//        rules: {
//            phone: {
//                number: true
//            },
//            message: {
//                minlength: 0
//            }
//        },
//        submitHandler: function (form) {
//            $("#message_137")
//            .removeClass("success")
//            .removeClass("error")
//            .addClass("loader")
//            .html("Sending message")
//            .fadeIn("slow");
//            $(form).ajaxsendmail(validator, success, id);
//            return false;
//        }
//    });
//    $.support.placeholder = ('placeholder' in document.createElement('input'));
//    $('#clear_137').click(function () {
//        $('#contact-form_137').trigger('reset');
//        validator.resetForm();
//        if (!$.support.placeholder) {
//            $('.mod_tm_ajax_contact_form *[placeholder]').each(function (n) {
//                $(this)
//                .parent('.controls')
//                .find('>.mod_tm_ajax_contact_form_placeholder')
//                .show();
//            })
//        }
//        return false;
//    })
//    if (!$.support.placeholder) {
//        $('.mod_tm_ajax_contact_form *[placeholder]').each(function (n) {
//            $(this)
//            .attr('autocomplete', 'off')
//            .addClass('ie_placeholder')
//            .bind('keydown keyup click blur focus change paste cut', function (e) {
//                $(this).delay(10)
//                .queue(function (n) {
//                    if ($(this).val() != '') {
//                        $(this)
//                        .parent('.controls')
//                        .find('>.mod_tm_ajax_contact_form_placeholder')
//                        .hide();
//                    }
//                    else {
//                        $(this)
//                        .parent('.controls')
//                        .find('>.mod_tm_ajax_contact_form_placeholder')
//                        .show();
//                    }
//                    n();
//                });
//            })
//            .before('<label class="mod_tm_ajax_contact_form_placeholder"/>')
//            .parent('.controls')
//            .addClass('ie_placeholder_controls')
//            .find('>.mod_tm_ajax_contact_form_placeholder')
//            .attr('for', $(this).parent('.controls').find('>*[placeholder]').attr('id'))
//            .text($(this).parent('.controls').find('>*[placeholder]').attr('placeholder'))
//            .css({
//                paddingTop: $(this).parent('.controls').find('>*[placeholder]').css('paddingTop'),
//                paddingBottom: $(this).parent('.controls').find('>*[placeholder]').css('paddingBottom'),
//                paddingLeft: $(this).parent('.controls').find('>*[placeholder]').css('paddingLeft'),
//                paddingRight: $(this).parent('.controls').find('>*[placeholder]').css('paddingRight'),
//                borderTopWidth: $(this).parent('.controls').find('>*[placeholder]').css('borderTopWidth'),
//                borderBottomWidth: $(this).parent('.controls').find('>*[placeholder]').css('borderBottomWidth'),
//                borderLeftWidth: $(this).parent('.controls').find('>*[placeholder]').css('borderLeftWidth'),
//                borderRightWidth: $(this).parent('.controls').find('>*[placeholder]').css('borderRightWidth'),
//                fontSize: $(this).parent('.controls').find('>*[placeholder]').css('fontSize'),
//                color: $(this).parent('.controls').find('>*[placeholder]').css('color')
//            })
//        })
//    }
//})