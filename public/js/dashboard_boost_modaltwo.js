// Get the assign users modal
let modal_manage = document.getElementById("manage-users-model");

// Get the button that opens the modal
let manage_btn = document.getElementById("manage-accounts-btn");

// Get the <span> element that closes the modal
let span_two = document.getElementById("close-two");

// When the user clicks the button, open the modal
manage_btn.onclick = function() {
    modal_manage.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span_two.onclick = function() {
    modal_manage.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target === modal_manage) {
        modal_manage.style.display = "none";
    }
}