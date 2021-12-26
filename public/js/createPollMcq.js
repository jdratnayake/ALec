$(document).ready(function () {

    renderQuestion();

    $("#option-mcq").click(function () {
        $("#question-type").val("mcq");
        renderQuestion();
    });

    $("#option-TF").click(function () {
        $("#question-type").val("open");
        renderQuestion();
    });

    function renderQuestion() {
        const questionType = $("#question-type").val();

        if (questionType == "mcq") {
            $("#option-mcq").css("background-color", "#2B4F82");
            $("#option-mcq").css("color", "#FFFFFF");
            $("#option-TF").css("background-color", "#FFFFFF");
            $("#option-TF").css("color", "#2B4F82");

            $("#div-mcq").show();
            $("#div-tf").hide();
        } else if (questionType == "open") {
            $("#option-TF").css("background-color", "#2B4F82");
            $("#option-TF").css("color", "#FFFFFF");
            $("#option-mcq").css("background-color", "#FFFFFF");
            $("#option-mcq").css("color", "#2B4F82");

            $("#div-mcq").hide();
            $("#div-tf").show();
        }
    }

});

// let mcq = document.getElementById("option-mcq");
// let tf = document.getElementById("option-TF");
// let div_mcq = document.getElementById("div-mcq");
// let div_tf = document.getElementById("div-tf");

// mcq.addEventListener("click", () => {
//     if (div_mcq.style.display === "none") {
//         div_mcq.style.display = "block";
//         div_tf.style.display = "none";
//         mcq.style.backgroundColor = "#2B4F82";
//         mcq.style.color = "#FFFFFF";
//         tf.style.backgroundColor = "#FFFFFF";
//         tf.style.color = "#2B4F82";
//     }
// });

// tf.addEventListener("click", () => {
//     if (div_tf.style.display === "none") {
//         div_tf.style.display = "block";
//         div_mcq.style.display = "none";
//         tf.style.backgroundColor = "#2B4F82";
//         tf.style.color = "#FFFFFF";
//         mcq.style.backgroundColor = "#FFFFFF";
//         mcq.style.color = "#2B4F82";
//     }
// });