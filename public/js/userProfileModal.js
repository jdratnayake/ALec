//When the user clicks assign courses button, open the model
document.getElementById("modal-btn").addEventListener("click",()=>{
    document.getElementById("course-selection-modal").style.display = "block";
})

//When the user clicks the close button, close it
document.getElementById("close").addEventListener("click", () => {
    document.getElementById("course-selection-modal").style.display = "none";
})

//When the user clicks anywhere outside of the modal, close it
window.addEventListener("click", (event) => {
    if (event.target.classList.contains("modal")) {
        for (let i = 0; i < document.getElementsByClassName("modal").length; i++) {
            document.getElementsByClassName("modal")[i].style.display = "none";
        }
    }
});

for (let i = 0; i < document.getElementsByClassName("assigned-course").length; i++) {
    document.getElementsByClassName("remove-course")[i].addEventListener("click", ()=>{
            document.getElementsByClassName("assigned-course")[i].style.display = "none";
    })
}

