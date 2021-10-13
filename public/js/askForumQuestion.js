// Color values
let validColor = '#38d39f';
let invalidColor = '#f44336';

const subject = document.getElementById("subject");
const question = document.getElementById("question");
let regiter = document.getElementById("topicSubmit");

regiter.addEventListener('submit', function (event) {
    event.preventDefault();

    if (validateSubject() && validateQuestion()) {
        regiter.submit();
    }
})

function validateAll() {
    validateSubject();
    validateQuestion();
}

function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

function setValid(field) {
    field.style.borderColor = validColor;
    field.nextElementSibling.innerHTML = "";
}

function setInvalid(field, message) {
    field.style.borderColor = invalidColor;
    field.nextElementSibling.innerHTML = message;
}

// EMPTY CHECK START
function isEmpty(value) {
    if (value === '') {
        return true;
    } else {
        return false;
    }
}

function checkIfEmpty(field) {
    if (isEmpty(field.value.trim())) {
        setInvalid(field, `${capitalizeFirstLetter(field.getAttribute("name"))} must not be empty`);
        return true;
    } else {
        setValid(field);
        return false;
    }
}

function validateSubject() {
    if (checkIfEmpty(subject)) {
        return false;
    }

    return true;
}

function validateQuestion() {
    if (checkIfEmpty(question)) {
        return false;
    }

    return true;
}