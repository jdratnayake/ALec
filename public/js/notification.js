$(document).ready(function () {
    $("#unread-name-toggle").change(function () {
        if ($(this).is(":checked")) {
            console.log("T");
        } else {
            console.log("F");
        }

    });
});