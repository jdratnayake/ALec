const inputs = document.querySelectorAll('.input');
const emailInput = document.getElementById("email");

function focusFunc() {
    let parent = this.parentNode.parentNode;
    parent.classList.add('focus');
}

function blurFunc() {
    let parent = this.parentNode.parentNode;

    if (this.value == "") {
        parent.classList.remove('focus');
    }
}

inputs.forEach(input => {
    input.addEventListener('focus', focusFunc);
    input.addEventListener('blur', blurFunc);
})

if (emailInput.length != 0) {
    emailInput.parentNode.parentNode.classList.add('focus');
}

function forgotPassword() {
    let temp = "";
    if (validateEmail()) {
        temp = emailInput.value;
    }

    window.location.href = 'http://localhost/ALec/' + '/passwordRecovery/enterEmail/' + temp;
}