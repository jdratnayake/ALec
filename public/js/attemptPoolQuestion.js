$(document).ready(function () {
    const sessionId = $("#new-session-id").val();

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
        let questionId = $("#new-question-id").val();

        if (questionId != newQuestionId) {
            //change current question id
            $("#new-question-id").val(newQuestionId);

            autoSubmit();
            deleteExistQuestion();

            if (newQuestionId != "") {
                $("#session-question-status").remove();
                renderQuestion();
            }
        }
    }



    function deleteExistQuestion() {
        $("#js-question-id").val("");
        $("#question-content").remove();
        $("#session-question-status").show();
    }

    function autoSubmit() {
        if ($("#question-type").val() == "open") {
            $("#answer-id").val($("#open-question").val());
        }

        if ($("#answer-id").val() != "") {
            $("#poll-form").submit();
        }
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