let courseName;
let topicName;
let quizName;
let duration;
let submitForm = document.getElementById("create-quiz-form");

$(document).ready(function () {

    document.getElementById("create-quiz").addEventListener("click", function (event) {
        courseName();
        topicName();
        quizName();
        duration();

        if (courseName() && topicName() && quizName() && duration()) {
            submitForm.submit();
        } else {
            event.preventDefault();
        }
    });

    document.getElementById("draf-quiz").addEventListener("click", function (event) {
        courseName();
        topicName();
        quizName();
        duration();

        if (courseName() && topicName() && quizName() && duration()) {
            submitForm.submit();
        } else {
            event.preventDefault();
        }
    });

    //Increament question count
    $("#add-question").click(function () {

        const count = parseInt($("#question-count").val());
        $("#question-count").val(count + 1);

    });

    //decrement question count
    $(".close-btn").click(function () {

        const count = parseInt($("#question-count").val());
        $("#question-count").val(count - 1);

    });

    courseName = function () {
        const value = $("#course").val();

        if (value == "null") {
            $("#course").parent(".form-group").find(".error").text("Course name must be selected");
            return false;
        }

        $("#course").parent(".form-group").find(".error").text("");
        return true;
    }

    topicName = function () {
        const value = $("#topic").val();

        if (value == "null") {
            $("#topic").parent(".form-group").find(".error").text("Topic name must be selected");
            return false;
        }

        $("#topic").parent(".form-group").find(".error").text("");
        return true;
    }

    quizName = function () {
        const value = $("#quiz-name").val();

        if (value == "") {
            $("#quiz-name").parent(".form-group").find(".error").text("Quiz Name must not be empty");
            return false;
        }

        $("#quiz-name").parent(".form-group").find(".error").text("");
        return true;
    }

    duration = function () {
        const value = $("#time-picker").val();

        if (value == "" || value == "0:0:0") {
            $("#time-picker").parent(".form-group").find(".error").text("Duration must not be empty");
            return false;
        }

        $("#time-picker").parent(".form-group").find(".error").text("");
        return true;
    }
});