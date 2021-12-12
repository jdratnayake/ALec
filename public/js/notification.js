$(document).ready(function () {
    //Initially update the unread message count
    getUnReadCount()

    //Update unread message count periodically
    setInterval(getUnReadCount, 3000);

    function getUnReadCount() {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/notification/notificationCount/",
            dataType: "html",
            success: function (response) {
                $(".active-status").html(response);
            }
        })
    }

    // $("#unread-name-toggle").change(function () {
    //     if ($(this).is(":checked")) {
    //         console.log("T");
    //     } else {
    //         console.log("F");
    //     }

    // });

    // $(".notification-container").click(function () {
    //     if ($(".pop-up").hasClass("show")) {
    //         console.log("Hi");
    //     }
    // });
});