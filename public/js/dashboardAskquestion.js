$(document).ready(function () {
    $("#ask-question-btn").click(function () {
        if ($("#dropdown-content").css("display") == "none") {
            $("#dropdown-content").css("display", "initial");
        } else {
            $("#dropdown-content").css("display", "none");
        }

    });
});