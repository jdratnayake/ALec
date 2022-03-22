$(document).ready(function () {

    $(document).on('click', '.fa-check-circle', function () {
        const questionId = $(this).parent().children(":first").val();

        //Indicate UnSolved
        if ($(this).hasClass("resolved")) {
            $(this).removeClass("resolved");
            $(this).addClass("check-resolved");
            statusUpdate(questionId, "0")
        }
        //Indicate Solved
        else {
            $(this).addClass("resolved");
            $(this).removeClass("check-resolved");
            statusUpdate(questionId, "1")
        }
    });

    function statusUpdate(questionId, status) {

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/changeQuestionResolveStatus/" + questionId + "/" + status,
            dataType: "html"
        })
    }

})