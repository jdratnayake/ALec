//When the user clicks assign courses button, open the model
document.getElementById("add-tag-btn").addEventListener("click", () => {
    document.getElementById("tag-details-modal").style.display = "block";
})

//When the user clicks the close button, close it
document.getElementById("close").addEventListener("click", () => {
    document.getElementById("tag-details-modal").style.display = "none";
})

//When the user clicks anywhere outside of the modal, close it
window.addEventListener("click", (event) => {
    if (event.target.classList.contains("modal")) {
        for (let i = 0; i < document.getElementsByClassName("modal").length; i++) {
            document.getElementsByClassName("modal")[i].style.display = "none";
        }
    }
});
