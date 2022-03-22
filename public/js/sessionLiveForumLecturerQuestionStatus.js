$(document).ready(function () {

    $(document).on('click', '.fa-check-circle', function () {
        const questionId = $(this).parent().parent().parent().children(":first").val();

        //Indicate UnSolved
        if ($(this).hasClass("resolved")) {
            $(this).removeClass("resolved");
            $(this).addClass("check-resolved");

            //Hide resolved label
            $(this).next().addClass("resolved-label-hide");

            statusUpdate(questionId, "0")
        }
        //Indicate Solved
        else {
            $(this).addClass("resolved");
            $(this).removeClass("check-resolved");

            //Show resolved label
            $(this).next().removeClass("resolved-label-hide");

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