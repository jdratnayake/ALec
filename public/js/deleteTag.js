$(document).ready(function () {
    $(".tag-element").click(function () {
        const tagId = $(this).find("input").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/tags/deleteTag/" + tagId
        })

        $(this).remove();
    });
});