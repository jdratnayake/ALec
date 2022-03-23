$(document).ready(function () {

    $("#add-course-page-btn").click(function () {
        $(this).hide();
        $("#rmv-course-page-btn").show();
        changeStatus("T");
    });

    $("#rmv-course-page-btn").click(function () {
        $(this).hide();
        $("#add-course-page-btn").show();
        changeStatus("F");
    });

    function changeStatus(status) {
        const sessionId = $("#session-id").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/updateSessionQuestionStatus/" + sessionId + "/" + status,
            dataType: "html"
        })
    }
});