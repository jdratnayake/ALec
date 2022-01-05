let checkSessionStatus;

$(document).ready(function () {
    checkSessionStatus = function (sessionId) {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/attemptPoolQuestion/checkSessionStatus/" + sessionId,
            dataType: "html",
            success: function (response) {
                if (response == "F") {
                    location.href = 'http://localhost/ALec/courseSelectionSessions/index';
                }
            }
        })
    }
});