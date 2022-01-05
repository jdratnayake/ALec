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
                    hideAllCourses();

                    $("#active-course-ids").val(response);
                    response = response.trim().split("_");
                    response.forEach(updateIcons);
                }

                if (response == "") {
                    $("#session-empty-content").show();
                } else {
                    $("#session-empty-content").hide();
                }
            }
        })
    }

    function updateIcons(courseId) {
        const className = `.course-id-${courseId}`;

        $(className).show();
    }

    function hideAllCourses() {
        $('.row').each(function (i, obj) {
            $(obj).hide();
        });
    }


});