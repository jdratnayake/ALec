function myFunction() {
    const x = document.getElementById("dropdown-content");

    if (x.style.display === "none") {
        x.style.display = "initial";
    } else {
        x.style.display = "none";
    }
}

//Open the relevant model when the user selects the option
for (let i = 0; i < document.getElementsByClassName("modal").length; i++) {
    document.getElementsByClassName("model-btn")[i].addEventListener("click", () => {
        document.getElementsByClassName("modal")[i].style.display = "block";
    })
    document.getElementsByClassName("close")[i].addEventListener("click", () => {
        document.getElementsByClassName("modal")[i].style.display = "none";
    })
}

// When the user clicks anywhere outside of the modal, close it
window.addEventListener("click", (event) => {
    if (event.target.classList.contains("modal")) {
        for (let i = 0; i < document.getElementsByClassName("modal").length; i++) {
            document.getElementsByClassName("modal")[i].style.display = "none";
        }
    }
});

