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
//
//ease = .2;
//
//colCenter_y += (y * ratio - colCenter_y) * ease;
//colLeft_y += (y - colLeft_y) * ease;