let setAnswer;

$(document).ready(function () {
    document.addEventListener('submit', function (e) {
        console.log("Hi");

        const type = $("#question-type").val();

        if (type == "open") {
            const answer = $("#open-question").val();
            $("#answer-id").val(answer);
        }

        if ($("#answer-id").val() != "") {
            $(e).submit()
        }
    });

    setAnswer = function (answerTag) {
        const answerId = $(answerTag).val();

        $("#answer-id").val(answerId);
    }
});
