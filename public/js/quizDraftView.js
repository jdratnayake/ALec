let updateQuizes;

$(document).ready(function () {

    $('#course-selection').change(function () {
        const courseId = $(this).val();

        $("#no-course-selected").hide();


        updateQuizes();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/quizDraft/topic/" + courseId,
            dataType: "html",
            success: function (response) {
                $("#topic-selection").html(response);
            }
        })
    })

    $('#topic-selection').change(function () {

        updateQuizes();

    })

    updateQuizes = function () {
        const courseId = $("#course-selection").val();
        const topicId = $("#topic-selection").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/quizDraft/draftQuiz/" + courseId + "/" + topicId,
            dataType: "html",
            success: function (response) {

                if (response == "") {
                    console.log("Hi");
                    $(".draft-details-container").hide();
                    $("#no-draft-quiz-selected").show();
                } else {
                    $(".no-draft-quiz-selected").hide();
                    $(".draft-details-container").show();
                    $(".draft-details-container").html(response);
                }
            }
        })
    }

});