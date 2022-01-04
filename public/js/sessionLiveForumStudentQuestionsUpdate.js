$(document).ready(function () {
    setInterval(checkQuestionIdArray, 3000);

    function checkQuestionIdArray() {
        const sessionId = $("#session-id").val();
        const questionIdArray = $("#questionIdArray").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/sessionLiveForumStudent/getQuestionIdArray/" + sessionId,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                if (response != questionIdArray) {
                    $("#questionIdArray").val(response);
                    updateQuestions();
                }
            }
        })
    }

    function updateQuestions() {
        const sessionId = $("#session-id").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/sessionLiveForumStudent/createForumQuestions/" + sessionId,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $(".questions-container").empty();
                $(".questions-container").append(response);
            }
        })
    }
})