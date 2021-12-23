$(document).ready(function () {
    $(".fa-ellipsis-v").click(function () {
        if ($(this).next().css('display') == 'block') {
            $(this).next().hide();
        } else {
            $(this).next().show();
        }

        console.log($(this).next().css('display'));
    });
});