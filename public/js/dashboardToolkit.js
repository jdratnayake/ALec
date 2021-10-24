document.getElementById("toolkit-btn").addEventListener("click", ()=>{
    if (document.getElementById("dropdown-content").style.display === "none"){
        document.getElementById("dropdown-content").style.display = "initial";
    }
    else{
        document.getElementById("dropdown-content").style.display = "none";
    }
});

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

