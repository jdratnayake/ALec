

$(document).ready(function () {
    setInterval(checkActiveQuestion, 3000);

    function checkActiveQuestion() {
        const sessionId = $("#session-id").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/checkSessionActiveQuestion/" + sessionId,
            dataType: "html",
            success: function (response) {
                if (response == "") {
                    $('.status-symbols').each(function (i, obj) {
                        const statusTag = $(obj).children(":first")
                        statusTag.children(":first").val("F");
                        statusTag.next().next().hide();
                        statusTag.next().next().next().show();
                    });
                }
            }
        })
    }

});