$(document).ready(function () {
    const sessionId = $("#js-session-id").val();

    setInterval(getActiveQuestionId, 3000);

    function getActiveQuestionId() {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/attemptPoolQuestion/getActiveQuestionId/" + sessionId,
            dataType: "html",
            success: function (response) {
                check(response);
            }
        })
    }

    function check(newQuestionId) {
        const questionId = $("#js-question-id").val();

        // console.log(newQuestionId + " " + questionId);
        if (newQuestionId == "") {
            deleteExistQuestion();
        }
        else if (questionId != newQuestionId) {
            //change current question id
            $("#js-question-id").val(newQuestionId);

            deleteExistQuestion();
            $("#session-question-status").remove();
            renderQuestion();
        }
    }



    function deleteExistQuestion() {
        $("#js-question-id").val("");
        $("#question-content").remove();
        $("#session-question-status").show();
    }

    function renderQuestion() {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/attemptPoolQuestion/getActiveQuestion/" + sessionId,
            dataType: "html",
            success: function (response) {
                $(response).insertAfter(".heading");
            }
        })
    }
});