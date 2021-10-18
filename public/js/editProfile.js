$(document).ready(function () {


    $("#btn-edit").click(function (event) {
        event.preventDefault();

        $(this).hide();
        $("#btn-save").show();
        $("#btn-cancel").show();

        $('input[type=text]').each(function () {
            if ($(this).attr('name') !== "email") {
                $(this).prop("disabled", false);
            }
        })
    });

    $("input[type=reset]").click(function (event) {
        $("#btn-edit").show();
        $("#btn-save").hide();
        $("#btn-cancel").hide();

        $('input[type=text]').each(function () {
            $(this).prop("disabled", true);
        })
    });

    $("#btn-upload").click(function (event) {
        // event.preventDefault();

        $(this).hide();
        $("#image-upload").show();
        $("#btn-upload-cancel").show();
    });

    $("#btn-upload-cancel").click(function (event) {
        event.preventDefault();

        $(this).hide();
        $("#image-upload").hide();
        $("#btn-upload").show();

    });
});