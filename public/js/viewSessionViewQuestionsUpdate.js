$(document).ready(function () {
    setInterval(checkQuestionIdArray, 3000);

    function checkQuestionIdArray() {
        // console.log("Hi");

        // return 0;
        const sessionId = $("#session-id").val();
        const questionIdArray = $("#questionIdArray").val();
        // console.log(sessionId)
        // console.log(questionIdArray)

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/getQuestionIdArray/" + sessionId + "/" + "2",
            dataType: "html",

            success: function (response) {
                // console.log(response)
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

            url: "http://localhost/ALec/viewSession/createForumQuestionsForViewSession/" + sessionId,
            dataType: "html",

            success: function (response) {
                $("div.sessions").last().empty();
                $("div.sessions").last().append(response)
            }
        })
    }
})