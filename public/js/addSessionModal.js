//When the user clicks add session button, open the model
document.getElementById("add-session-btn").addEventListener("click",()=>{
    document.getElementById("add-session-modal").style.display = "block";
});

//When the user clicks the close button, close it
document.getElementById("close").addEventListener("click", () => {
    document.getElementById("add-session-modal").style.display = "none";
})

//When the user clicks anywhere outside of the modal, close it
window.addEventListener("click", (event) => {
    if (event.target.classList.contains("modal")) {
        for (let i = 0; i < document.getElementsByClassName("modal").length; i++) {
            document.getElementsByClassName("modal")[i].style.display = "none";
        }
    }
});