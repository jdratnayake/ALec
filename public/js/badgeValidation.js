// Color values
let validColor = '#38d39f';
let invalidColor = '#f44336';

let course = document.getElementById("course-id-list");
let badgeName = document.getElementById("badge-name");
let points = document.getElementById("badge-points");
let fileTag = document.getElementById("fileToUpload");
let regiter = document.getElementById("registerBadgeForm");

regiter.addEventListener('submit', function (event) {
    event.preventDefault();

    if (validateCourse() && validateBadgeName() && validatePoints() && validateFile()) {
        regiter.submit();
    }
})

function validateAll() {
    validateCourse();
    validateBadgeName();
    validatePoints()
    validateFile();
}

function validateCourse() {
    if (checkIfEmpty(course, "Course")) {
        course.previousElementSibling.style.borderColor = invalidColor;
        return false;
    }

    course.previousElementSibling.style.borderColor = validColor;
    return true
}

function validateBadgeName() {
    if (checkIfEmpty(badgeName, "Badge Name")) {
        return false;
    }

    if (!matchWithRegEx(/^[a-zA-Z\s]*$/, badgeName, "Badge name must contain letters and numbers only")) {
        return false;
    }

    return true
}

function validatePoints() {
    if (points.value == "0") {
        points.parentElement.nextElementSibling.innerHTML = "Points must not be zero";
        points.style.borderColor = invalidColor;
        return false;
    }

    points.parentElement.nextElementSibling.innerHTML = "";
    points.style.borderColor = validColor;
    return true
}

function validateFile() {
    if (fileTag.value == "") {
        fileTag.parentElement.nextElementSibling.innerHTML = "Image must not be empty";
        return false;
    }

    fileTag.parentElement.nextElementSibling.innerHTML = "";
    return true;
}




function setValid(field) {
    field.style.borderColor = validColor;
    field.parentElement.nextElementSibling.innerHTML = "";
}

function setInvalid(field, message) {
    field.style.borderColor = invalidColor;
    field.parentElement.nextElementSibling.innerHTML = message;
}

// EMPTY CHECK START
function isEmpty(value) {
    if (value === '') {
        return true;
    } else {
        return false;
    }
}

function checkIfEmpty(field, msg) {
    if (isEmpty(field.value.trim())) {
        setInvalid(field, `${msg} must not be empty`);
        return true;
    } else {
        setValid(field);
        return false;
    }
}
// EMPTY CHECK END

function meetLength(field, minLength, maxLength) {
    if (field.value.length >= minLength && field.value.length < maxLength) {
        setValid(field);
        return true;
    } else if (field.value.length < minLength) {
        setInvalid(
            field,
            `${field.getAttribute("placeholder")} must be at least ${minLength} characters long`
        );
        return false;
    } else {
        setInvalid(
            field,
            `${field.getAttribute("placeholder")} must be shorter than ${maxLength} characters`
        );
        return false;
    }
}

function fixedLength(field, length) {
    if (field.value.length === length) {
        setValid(field);
        return true;
    }
    else {
        setInvalid(
            field,
            `${field.getAttribute("placeholder")} must have ${length} characters only`
        );
        return false;
    }
}

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