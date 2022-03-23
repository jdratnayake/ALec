$(document).ready(function () {

    $("#course-selection").change(function () {
        const courseId = $(this).val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/review/updateQuizList/" + courseId,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $(".quizzes").html(response);
            }
        })
    })

})