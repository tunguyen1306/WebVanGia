﻿
//click language
jQuery(function ($) {
    ///
    $('.item_content').hover(function () {

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


    $('#language').click(function () {

    });
    /////active menu 
    var t = window.location.pathname;
    if (t == "/")
        t = "Default.aspx";
    $('.iceMenuTitle[href*="' + t + '"]').css("background-color", "rgba(0, 0, 0, 0)");
   
    var lan = 2;
    if ($("[id*='lbtn_language'][rellan]").size() != 0) {
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
        success: function (data) {


            $.each(data.d, function (i, o) {
                if (o.key_word_vg.lastIndexOf("ip_") != -1)
                    $('.' + o.key_word_vg).val(o.name_vg);
                else if (o.key_word_vg.lastIndexOf("pl_") != -1)
                    $('.' + o.key_word_vg).attr("placeholder", o.name_vg);
                //else
                    //$('.' + o.key_word_vg).html(o.name_vg);

            });
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
        $('.icemegamenu li>a').click(function () {
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
        $('#icemegamenu li.parent[class^="iceMenuLiLevel"]').hover(function () {
            $('#icemegamenu li.parent[class^="iceMenuLiLevel"]').not($(this).parents('li')).not($(this)).removeClass('hover');
            $(this).addClass('hover').attr('data-hover', 'true');
            $(this).find('>ul.icesubMenu').addClass('visible');
        },
            function () {
                $(this).attr('data-hover', 'false');
                $(this).delay(800).queue(function (n) {
                    if ($(this).attr('data-hover') == 'false') {
                        $(this).removeClass('hover').delay(250).queue(function (n) {
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
    

});

jQuery(window).resize(function () {
    var browser_width = screen.width;
    console.log(screen.width);
    if (browser_width < 569) {
        jQuery('.divYoutube').removeClass('hidden');
        jQuery('.divSlide').addClass('hidden');
    }
    if (browser_width >= 568 && browser_width <= 1024) {
        jQuery('.divYoutube').addClass('hidden');
        jQuery('.divSlide').removeClass('hidden');
    }
    if (browser_width >= 1024 && browser_width <= 1366) {
        jQuery('.divYoutube').addClass('hidden');
        jQuery('.divSlide').addClass('hidden');
    }
});
jQuery(document).ready(function () {
    var browser_width = screen.width;
    console.log(screen.width);
    if (browser_width < 569) {
        jQuery('.divYoutube').removeClass('hidden');
        jQuery('.divSlide').addClass('hidden');
    }
    if (browser_width >= 568 && browser_width <= 1024) {
        jQuery('.divYoutube').addClass('hidden');
        jQuery('.divSlide').removeClass('hidden');
    }
    if (browser_width >= 1024 && browser_width <= 1366) {
        jQuery('.divYoutube').addClass('hidden');
        jQuery('.divSlide').addClass('hidden');
    }

});
jQuery(document).ready(function () {
    var browser_width1 = jQuery(window).width();
    jQuery("#icemegamenu").find(".icesubMenu").each(function (index) {
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
function tien(val) {

    if (val != null) {

        while (/(\d+)(\d{3})/.test(val.toString())) {
            val = val.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
        }
        return val;
    }
    else {
        return '';
    }

}


function myfunction() {
    var stringCity1 = "<option value=\"0\">Chọn Loại công trình</option>";
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 1 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            stringCity1 += "<option value=" + o.ValueMath + ">" + o.NameMath + "</option>";
        });
        $('#dropLoaiCongTrinh').html(stringCity1);
    }
});

    var stringCity2 = "<option value=\"0\">Chọn mặt tiền</option>";
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 2 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            stringCity2 += "<option value=" + o.ValueMath + ">" + o.NameMath + "</option>";
        });
        $('#dropMatTien').html(stringCity2);
    }
});

    var stringCity3 = "<option value=\"0\">Chọn mức đầu tư</option>";
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 3 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            stringCity3 += "<option value=" + o.ValueMath + ">" + o.NameMath + "</option>";
        });
        $('#dropDauTu').html(stringCity3);
    }
});

    var stringCity4 = "<option value=\"0\">Chọn loại móng</option>";
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 4 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            stringCity4 += "<option value=" + o.ValueMath + ">" + o.NameMath + "</option>";
        });
        $('#dropLoaiMong').html(stringCity4);
    }
});

    var stringCity5 = "<option value=\"0\">Chọn kiểu mái</option>";
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 5 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            stringCity5 += "<option value=" + o.ValueMath + ">" + o.NameMath + "</option>";
        });
        $('#dropKieuMai').html(stringCity5);
    }
});

    var stringCity6 = "<option value=\"0\">Chọn lộ giới</option>";
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 6 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            stringCity6 += "<option value=" + o.ValueMath + ">" + o.NameMath + "</option>";
        });
        $('#dropLoGioi').html(stringCity6);
    }
});

    var stringCity7 = "<option value=\"0\">Chọn loại tầng hầm</option>";
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 7 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            stringCity7 += "<option value=" + o.ValueMath + ">" + o.NameMath + "</option>";
        });
        $('#dropTangHam').html(stringCity7);
    }
});
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 8 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            $('#txtSoTien').val(o.ValueMath);
        });

    }
});
    $.ajax
({
    type: "POST",
    url: "WebLoadData.asmx/GetLoaiCongTrinh", //LyricsloadMore
    data: JSON.stringify({ id: 9 }),
    dataType: "json",
    contentType: "application/json;charset=utf-8",
    success: function (data) {

        $.each(data.d, function (i, o) {
            $("#txtTyLe").val(o.ValueMath);
        });

    }
});

    $('.btnTinhTien').click(function () {
        var t = 0;
        var a = $("#dropLoaiCongTrinh option:selected").val();
        var b = $("#dropMatTien option:selected").val();
        var c = $("#dropDauTu option:selected").val();
        var d = $("#dropLoaiMong option:selected").val();
        var e = $("#dropKieuMai option:selected").val();
        var f = $("#dropLoGioi option:selected").val();
        var g = $("#dropTangHam option:selected").val();
        var h = $('#txtSoTien').val();
        var i = $("#txtChieuNgang").val();
        var j = $("#txtChieuDoc").val();
        var k = $("#txtSoTang").val();
        var w = $("#txtTyLe").val();
        if (a == 0) {
            alert('Chọn Loại công trình');
            t++

        }

        if (b == 0) {
            alert('Chọn Loại mặt tiền');
            t++

        }
        if (c == 0) {
            alert('Chọn Loại đầu tư');
            t++
        }
        if (d == 0) {
            alert('Chọn Loại móng');
            t++
        }
        if (e == 0) {
            alert('Chọn kiểu mái');
            t++
        }
        if (f == 0) {
            alert('Chọn Lộ giới');
            t++
        }
        if (g == 0) {
            alert('Chọn tầng hầm');
            t++
        }
        if (h == "") {
            t++
        }
        if (i == "") {
            alert('Chiều ngang không được rỗng');
            t++
        }
        if (j == "") {
            alert('Chiều dài không được rỗng');
            t++
        }
        if (k == "") {
            alert('Số tầng không được rỗng');
            t++
        }
        if (t == 0) {

            var k1 = parseInt(k) + 1.5
            var total = ((a * b * c * d * e * f * g * h * i * j * k1) / 1000000).toFixed(0);
            //var tu=0;
            //if (total.length>6) {
            //    tu= total.substr(0, total.length - 6)
            //} else {
            //    tu = total;
            //}

            var y = total * 30 / 100
            var totalall = tien(total);
            $('.txtGiaThanh').html(totalall + ',000,000đ');
            //$('.txtNhanCong').html(tien(y));
        }

    });
}

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