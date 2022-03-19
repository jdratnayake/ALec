const renameTag = document.getElementById("sessionName");
const loginForm = document.getElementById('renameForm');

loginForm.addEventListener('submit', function (event) {
    if (sessionNameValidityCheck()) {
        loginForm.submit();
    } else {
        event.preventDefault();
    }
});

function setErrorTag(text) {
    renameTag.nextElementSibling.innerHTML = text;
}

function sessionNameValidityCheck() {
    const sessionName = renameTag.value;

    if (sessionName == "") {
        setErrorTag("Session name can't be empty");
        return false;
    }

    if (!sessionName.match(/^[a-zA-Z\s]*$/g)) {
        setErrorTag("Session name must not contain any special letters");
        return false;
    }

    setErrorTag("");
    return true;
}