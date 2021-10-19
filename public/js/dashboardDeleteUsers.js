// Get the delete users modal
let modal_delete = document.getElementById("delete-users-model");

// Get the button that opens the modal
let delete_btn = document.getElementById("delete-users-btn");

// Get the <span> element that closes the modal
let span_three = document.getElementById("close-three");

// When the user clicks the button, open the modal
delete_btn.onclick = function() {
    modal_delete.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span_three.onclick = function() {
    modal_delete.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target === modal_delete) {
        modal_delete.style.display = "none";
    }
}