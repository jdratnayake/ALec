let loginForm = document.getElementById('published-form');

let checkEmpty;
let checkInvalidDate;
let checkRange;
let checkRangeWithDates;

$(document).ready(function () {
    loginForm.addEventListener('submit', function (event) {

        checkEmpty();
        checkInvalidDate();
        checkRange();
        checkRangeWithDates();

        if (checkEmpty() && checkInvalidDate() && checkRange() && checkRangeWithDates()) {
            loginForm.submit();
        } else {
            event.preventDefault();
        }
    });

    //Check empty values
    checkEmpty = function () {
        const publishDatetime = $("#publishdatetime").val();
        const closeDatetime = $("#closedatetime").val();
        const duration = $("#time-picker").val();

        if (!Date.parse(publishDatetime) || 0) {
            $("#publishdatetime").next().text("Publish Date & Time is required");
            return false;
        }

        $("#publishdatetime").next().text("");

        if (!Date.parse(closeDatetime) || 0) {
            $("#closedatetime").next().text("Close Date & Time is required");
            return false;
        }

        $("#closedatetime").next().text("");

        if (duration == "" || duration == "0:0:0") {
            $("#time-picker").next().text("Duration is required");
            return false;
        }

        $("#time-picker").next().text("");

        return true;
    }

    //Check entered date is greater than or equal to current date
    checkInvalidDate = function () {
        const currentDatetime = new Date();
        const publishDatetime = new Date($("#publishdatetime").val());
        const closeDatetime = new Date($("#closedatetime").val());

        //Publish date
        if (publishDatetime < currentDatetime) {
            $("#publishdatetime").next().text("Invalid Publish Date & Time");
            return false;
        }

        $("#publishdatetime").next().text("");

        //Close date
        if (closeDatetime < currentDatetime) {
            $("#closedatetime").next().text("Invalid Close Date & Time");
            return false;
        }

        $("#closedatetime").next().text("");

        return true;
    }

    //Check that close date > publish date
    checkRange = function () {
        const publishDatetime = new Date($("#publishdatetime").val());
        const closeDatetime = new Date($("#closedatetime").val());

        if (closeDatetime <= publishDatetime) {
            $("#publishdatetime").next().text("Publish Date Must Be Less Than Close Date");
            $("#closedatetime").next().text("Close Date Must Be Greater Than Publish Date");
            return false;
        }

        $("#publishdatetime").next().text("");
        $("#closedatetime").next().text("");

        return true;
    }

    //Check (publish date - close date) >= duration
    checkRangeWithDates = function () {
        const publishDatetime = new Date($("#publishdatetime").val());
        const closeDatetime = new Date($("#closedatetime").val());
        const dateDuration = closeDatetime.getTime() - publishDatetime.getTime();

        let duration = $("#time-picker").val();
        const tempDate = new Date("1970-01-01 00:00:00");
        const durationDate = new Date("1970-01-01 " + duration);
        duration = durationDate.getTime() - tempDate.getTime()

        if (dateDuration < duration) {
            $("#time-picker").next().text("Duration Must Be Decreased");
            return false;
        }

        $("#time-picker").next().text("");
        return true;
    }
});