$(document).ready(function () {






    // $("#replies").hide();



});

function toggleSection(id) {
    $("#" + "reply_btn" + id).click(function () {
        // $("#" + "reply-section" + id).toggle();
        $("#" + "reply_btn" + id).next($("#reply-section")).toggle();
    });

    $("." + "btn_cancel" + id).click(function () {
        $("." + "btn_cancel" + id).next($("#reply-section")).toggle();
        // $("#reply-section").toggle();
    });
}
