jQuery(document).ready(function () {
    jQuery("#setting_switch").on("click", function (e) {
        e.preventDefault();
        e.stopPropagation();

        jQuery(this).toggleClass("active");
        jQuery("#settings").toggleClass("active");
    });

    jQuery(document).on("click", function (e) {
        jQuery("#settings").removeClass("active");
    });

    jQuery("#settings").on("click", function (e) {
        e.stopPropagation();
    });
});