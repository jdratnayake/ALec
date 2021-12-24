$(document).ready(function () {
    setInterval(checkIconStatus, 3000);


    function checkIconStatus() {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/courseSelectionSessions/getActiveCourses",
            dataType: "html",
            success: function (response) {

                const activeCourseIdList = $("#active-course-ids").val();

                if (response != activeCourseIdList) {
                    hideAllIcons();

                    $("#active-course-ids").val(response);
                    response = response.trim().split("_");
                    response.forEach(updateIcons);
                }
            }
        })
    }

    function updateIcons(courseId) {
        const className = `.course-id-${courseId}`;

        $(className).children().show();
    }

    function hideAllIcons() {
        $('.row').each(function (i, obj) {
            $(obj).children().hide();
        });
    }


});