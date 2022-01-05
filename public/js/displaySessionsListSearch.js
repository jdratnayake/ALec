$(document).ready(function () {
    $("#session-search").submit(function (e) {
        e.preventDefault();
    });

    $("#search-tag").keyup(function () {
        var formData = $("#session-search").serialize();

        $.post(
            "http://localhost/ALec/displaySessionsList/sessionSearch",
            formData,
            function (data) {
                $(".session-details-container").empty();
                $(".session-details-container").html(data);
            }
        );
    });
});