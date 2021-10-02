// Color values
let validColor = '#38d39f';
let invalidColor = '#f44336';

const email = document.getElementById("email");
const send = document.getElementById("sendForm");

send.addEventListener('submit', function (event) {
    event.preventDefault();

    if (validateEmail()) {
        send.submit();
    }
})


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
        setInvalid(field, `${field.getAttribute("placeholder")} must not be empty`);
        return true;
    } else {
        setValid(field);
        return false;
    }
}
// EMPTY CHECK END

function matchWithRegEx(regEx, field, message) {
    if (field.value.match(regEx)) {
        setValid(field);
        return true;
    } else {
        setInvalid(field, message);
        return false;
    }
}

function containsCharacters(field, code) {
    let regEx;

    switch (code) {
        case 1:
            // letters
            regEx = /(?=.*[a-zA-Z])/;
            return matchWithRegEx(regEx, field, 'Must contain at least one letter');

        case 2:
            // letter and numbers
            regEx = /(?=.*\d)(?=.*[a-zA-Z])/;
            return matchWithRegEx(
                regEx,
                field,
                'Must contain at least one letter and one number'
            );

        case 3:
            // uppercase, lowercase and number
            regEx = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/;
            return matchWithRegEx(
                regEx,
                field,
                'Must contain at least one uppercase, one lowercase letter and one number'
            );

        case 4:
            // uppercase, lowercase, number and special char
            regEx = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)/;
            return matchWithRegEx(
                regEx,
                field,
                'Must contain at least one uppercase, one lowercase letter, one number and one special character'
            );

        case 5:

            // Email pattern
            regEx = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return matchWithRegEx(regEx, field, 'Must be a valid email address');

        case 6:
            //Numbers only
            regEx = /^[0-9]+$/;
            return matchWithRegEx(regEx, field, `${field.getAttribute("placeholder")} must contain only numbers`);

        case 7:
            //Letters only
            regEx = /^[A-Za-z]+$/;
            return matchWithRegEx(regEx, field, `${field.getAttribute("placeholder")} must contain only letters`);

        case 8:
            regEx = /^\S+$/;
            return matchWithRegEx(regEx, field, `${field.getAttribute("placeholder")} must not contain white spaces`);

        default:
            return false;
    }
}

function validateEmail() {

    if (checkIfEmpty(email)) {
        return false;
    }

    if (!containsCharacters(email, 5)) {
        return false;
    }

    return true;
}