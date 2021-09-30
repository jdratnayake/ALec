$(document).ready(function () {
    $("#all").click(function () {
        $("#all").addClass("active-type");
        $("#one").removeClass("active-type");
        $("#two").removeClass("active-type");
        $("#three").removeClass("active-type");
        $("#four").removeClass("active-type");

        const temp = "all";

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/courseDetails/ajaxCourseDetails/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });

    $("#one").click(function () {
        $("#one").addClass("active-type");
        $("#all").removeClass("active-type");
        $("#two").removeClass("active-type");
        $("#three").removeClass("active-type");
        $("#four").removeClass("active-type");

        const temp = "1";

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/courseDetails/ajaxCourseDetails/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });

    $("#two").click(function () {
        $("#two").addClass("active-type");
        $("#all").removeClass("active-type");
        $("#one").removeClass("active-type");
        $("#three").removeClass("active-type");
        $("#four").removeClass("active-type");

        const temp = "2";

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/courseDetails/ajaxCourseDetails/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });

    $("#three").click(function () {
        $("#three").addClass("active-type");
        $("#all").removeClass("active-type");
        $("#one").removeClass("active-type");
        $("#two").removeClass("active-type");
        $("#four").removeClass("active-type");

        const temp = "3";

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/courseDetails/ajaxCourseDetails/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });

    $("#four").click(function () {
        $("#four").addClass("active-type");
        $("#all").removeClass("active-type");
        $("#one").removeClass("active-type");
        $("#three").removeClass("active-type");
        $("#two").removeClass("active-type");

        const temp = "4";

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/courseDetails/ajaxCourseDetails/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });
})