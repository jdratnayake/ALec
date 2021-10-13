$(document).ready(function () {
    $('#manage-accounts-btn').click(function () {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/adminDashboard/course",
            dataType: "html",

            success: function (response) {
                $("#COURSE").html(response);
            }
        })
    })
})