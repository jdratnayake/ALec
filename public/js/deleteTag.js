$(document).ready(function () {
    $(".tag-element").click(function () {
        const tagId = $(this).find("input").val();

        const link = "tags/deleteTag/" + tagId;

        deleteFunction(link);
    });
});