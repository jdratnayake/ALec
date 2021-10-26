let email1 = document.getElementById("email1");
let regNo1 = document.getElementById("regNo1");
let fName1 = document.getElementById("fName1");
let lName1 = document.getElementById("lName1");
let regiter1 = document.getElementById("registerForm1");

regiter1.addEventListener('submit', function (event) {
    event.preventDefault();

    if (validateEmail1() && validateEmployeeNo1() && validateFirstName1() && validateLastName1()) {
        regiter1.submit();
    }
})

function validateAll1() {
    validateEmail1();
    validateEmployeeNo1();
    validateFirstName1();
    validateLastName1();
}

function validateEmail1() {
    if (checkIfEmpty(email1)) {
        return false;
    }

    if (!containsCharacters(email1, 5)) {
        return false;
    }

    return true;
}

function validateEmployeeNo1() {
    if (checkIfEmpty(regNo1)) {
        return false;
    }

    if (!containsCharacters(regNo1, 6)) {
        return false;
    }

    if (!fixedLength(regNo1, 8)) {
        return false;
    }

    return true;
}

function validateFirstName1() {
    if (checkIfEmpty(fName1)) {
        return false;
    }

    if (!containsCharacters(fName1, 8)) {
        return false;
    }

    if (!containsCharacters(fName1, 7)) {
        return false;
    }

    if (!meetLength(fName1, 3, 50)) {
        return false;
    }

    return true;
}

function validateLastName1() {
    if (checkIfEmpty(lName1)) {
        return false;
    }

    if (!containsCharacters(lName1, 8)) {
        return false;
    }

    if (!containsCharacters(lName1, 7)) {
        return false;
    }

    if (!meetLength(lName1, 4, 50)) {
        return false;
    }

    return true;
}