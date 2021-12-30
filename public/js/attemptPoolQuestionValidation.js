const answerTag = document.getElementById("answer-id");
const typeTag = document.getElementById("question-type");
const form = document.getElementById("poll-form");

function setAnswer(inputTag) {
    answerTag.value = inputTag.value
}


form.addEventListener('submit', function (event) {
    event.preventDefault();

    if (typeTag.value == "open") {
        answerTag.value = document.getElementById("open-question").value
    }

    if (answerTag.value != "") {
        form.submit();
    }
});
