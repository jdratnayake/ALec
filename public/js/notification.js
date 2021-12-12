let readNotification;

$(document).ready(function () {
    //Initially update the unread message count
    getUnReadCount()

    //Update unread message count periodically
    setInterval(getUnReadCount, 3000);

    $(".notification-container").click(function () {
        if ($(".pop-up").hasClass("show")) {
            updateNotificationList();
        }
    });

    readNotification = function (notificationId) {
        const tagId = `#notification-${notificationId}`;

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/notification/readNotification/" + notificationId,
            dataType: "html",
        })

        $(tagId).empty();

        if ($("#unread-name-toggle").is(":checked")) {
            updateUnreadNotificationList();
        }
    }

    $("#unread-name-toggle").change(function () {
        if ($(this).is(":checked")) {
            updateUnreadNotificationList();
        } else {
            updateNotificationList();
        }

    });

    function getUnReadCount() {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/notification/notificationCount/",
            dataType: "html",
            success: function (response) {
                if (response == "0") {
                    $(".active-status").hide();
                } else {
                    $(".active-status").show();
                }
                $(".active-status").html(response);
            }
        })
    }

    function updateNotificationList() {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/notification/updateNotification/",
            dataType: "html",
            success: function (response) {
                $(".notification-details").html(response);
            }
        })
    }

    function updateUnreadNotificationList() {
        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/notification/getUnreadNotification/",
            dataType: "html",
            success: function (response) {
                $(".notification-details").html(response);
            }
        })
    }
});