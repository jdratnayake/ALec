$(document).ready(function () {
    const sessionId = $("#session-id").val();

    //Unshow
    $(".fa-eye").click(function () {
        const questionId = $(this).prev().val();
        $(this).prev().prev().val("F");
        $(this).hide();
        $(this).next().show();

        setEyeSymbol();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/changeQuestionStatus/" + sessionId + "/" + questionId + "/F"
        })
    });

    //Show
    $(".fa-eye-slash").click(function () {
        //Set False all tags status
        $('.status-symbols').each(function (i, obj) {
            $(obj).children(":first").val("F");
        });

        const questionId = $(this).prev().prev().val();
        $(this).prev().prev().prev().val("T");
        $(this).hide();
        $(this).prev().show();

        setEyeSymbol();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/changeQuestionStatus/" + sessionId + "/" + questionId + "/T"
        })
    });

    function setEyeSymbol() {
        $('.status-symbols').each(function (i, obj) {
            const statusTag = $(obj).children(":first")
            const status = statusTag.val();

            if (status == "T") {
                statusTag.next().next().show();
                statusTag.next().next().next().hide();
            } else if (status == "F") {
                statusTag.next().next().hide();
                statusTag.next().next().next().show();
            }
        });
    }

});