$(document).ready(function () {

    courseName();
    topicName();
    quizName();
    duration();



    function courseName() {
        const value = $("#course").val();

        if (value == "null") {
            $("#course").parent(".form-group").find(".error").text("Course name must be selected");
            return false;
        }

        return true;
    }

    function topicName() {
        const value = $("#topic").val();

        if (value == "null") {
            $("#topic").parent(".form-group").find(".error").text("Topic name must be selected");
            return false;
        }

        return true;
    }

    function quizName() {
        const value = $("#quiz-name").val();

        if (value == "") {
            $("#quiz-name").parent(".form-group").find(".error").text("Quiz Name must not be empty");
            return false;
        }

        return true;
    }

    function duration() {
        const value = $("#time-picker").val();

        if (value == "") {
            $("#time-picker").parent(".form-group").find(".error").text("Duration must not be empty");
            return false;
        }

        return true;
    }
});