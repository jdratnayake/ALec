const renameTag = document.getElementById("topicName");
const loginForm = document.getElementById('editTopic');

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
        setErrorTag("Topic name can't be empty");
        return false;
    }

    if (!sessionName.match(/^[a-zA-Z0-9 ]*$/gm)) {
        setErrorTag("Topic name must not contain any special letters");
        return false;
    }

    setErrorTag("");
    return true;
}