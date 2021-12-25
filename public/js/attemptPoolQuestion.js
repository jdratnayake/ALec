const answerTag = document.getElementById("answer-id");
const form = document.getElementById("poll-form");


function setAnswer(inputTag) {
    answerTag.value = inputTag.value
}

form.addEventListener('submit', function (event) {
    event.preventDefault();

    console.log(answerTag.value);

    if (answerTag.value != "") {
        form.submit();
    }
});