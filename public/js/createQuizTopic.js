$(document).ready(function () {
    $("#course").change(function () {
        const temp = $("#course").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/createQuizDashboard/topic/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#topic").html(response);
            }
        })
    })
})