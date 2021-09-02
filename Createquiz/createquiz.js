function myFunction() {
    const checkBox = document.getElementById("myCheck");
    const text = document.getElementById("addAns");
    if (checkBox.checked === true) {
        text.style.display = "block";
    } else {
        text.style.display = "none";
    }
}

// function getAnswer(){
//     const text = document.getElementById("addAns");
//     text.style.display = "block";
// }
function activeMCQ() {
    document.getElementById("choicemcq").style.borderColor = "#1FB880";
    document.getElementById("choiceshort").style.borderColor = "white";

    return true;
}

function activeSANS() {
    document.getElementById("choicemcq").style.borderColor = "white";
    document.getElementById("choiceshort").style.borderColor = "#1FB880";

    return true;
}

function getQuestions() {
    let questionSize = document.getElementById("no-of-questions").value;
}