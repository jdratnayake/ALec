$(document).ready(function () {

    $("#year-selection").change(function () {
        const temp = $(this).val();

        console.log(temp);

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/leaderboard/updateLeaderboard/" + temp,
            dataType: "html",
            success: function (response) {
                $("#leaderboard-content").html(response);
            }
        })
    });

})