$(document).ready(function () {
    function colorButtons() {
        let topicIds = $("#points-given-course-ids").val().trim().split(" ");

        $('.fa-caret-up').each(function (i, obj) {
            const id = $(obj).prev().val();

            if (topicIds.includes(id)) {
                $(obj).css("color", "orange");
            }
        });
    }

    colorButtons();

    $(document).on("click", ".fa-caret-up", function () {
        const topicId = $(this).prev().val();
        let signal;
        const pointsTag = $(this).next();
        const marks = parseInt(pointsTag.text());

        // 0 = remove marks
        // 1 = add marks
        if ($(this).css("color") == "rgb(255, 165, 0)") {
            $(this).css("color", "darkgray");
            signal = 0;
            pointsTag.text(marks - 1);
        } else {
            $(this).css("color", "orange");
            signal = 1;
            pointsTag.text(marks + 1);
        }

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/lecturerForumTopic/toggleMarksTopic/" + topicId + "/" + signal
        })
    });
});