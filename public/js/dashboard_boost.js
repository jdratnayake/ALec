function myFunction() {
    const x = document.getElementById("dropdown-content");

    if(x.style.display === "none"){
        x.style.display = "initial";
    }
    else {
        x.style.display = "none";
    }
}

// Get the create users modal
let modal_create = document.getElementById("create-users-model");

// Get the button that opens the modal
let create_btn = document.getElementById("create-users-btn");

// Get the <span> element that closes the modal
let span_one = document.getElementById("close-one");

// When the user clicks the button, open the modal
create_btn.onclick = function() {
    modal_create.style.display = "block";
}

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
