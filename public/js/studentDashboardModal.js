// Get the modal
let modal_create = document.getElementById("confirm-quiz-model");

// Get the <span> element that closes the modal
let span_one = document.getElementById("close");

// When the user clicks on <span> (x), close the modal
span_one.onclick = function() {
    modal_create.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target === modal_create) {
        modal_create.style.display = "none";
    }
}

// Open the modal when user clicks on a topic
for (let i = 0; i < document.getElementsByClassName("topic").length; i++) {
    document.getElementsByClassName("topic")[i].addEventListener('click', () => {
        modal_create.style.display = "block";
    })  ;
}

