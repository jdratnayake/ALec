$(document).ready(function () {
    $("#search").click(function (event) {
        event.preventDefault();
    });

    $("#search-tag").keyup(function () {
        var formData = $("#search").serialize();

        $.post(
            "http://localhost/ALec/tags/forumSearch",
            formData,
            function (data) {
                // $(".discussion-table").html(data);
                // $("<span>Hello world!</span>").insertAfter("p");
                $(".discussion-table").html(data);
            }
        );
    });
});