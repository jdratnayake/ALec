$(document).ready(function () {
    $(".fa-times").click(function () {
        const tagId = $(this).parent().find("input").val();

        const link = "tags/deleteTag/" + tagId;

        deleteFunction(link);
    });
});