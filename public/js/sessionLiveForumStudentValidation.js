var questionValidation;

$(document).ready(function () {

    $(".fa-check-circle-o").click(function () {

        if (questionValidation()) {
            $("#liveForum-form").submit()
        }
    });

    questionValidation = function () {
        if ($("#new-question").val() == "") {
            $(".error").text("Question is required")
            return 0;
        } else {
            $(".error").text("")
            return 1;
        }
    }
});