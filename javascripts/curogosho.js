/*
 ======================================================
 skrollr
 ======================================================
 */
$(function () {
    $(window).scroll(function () {
        var y = jQuery(this).scrollTop();
        $("#scroll").text("Scroll:" + y);
    });
});
