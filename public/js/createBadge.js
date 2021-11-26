//Remove a particular when the relevant close button is clicked
for (let i = 0; i < document.getElementsByClassName("selected-course").length; i++) {
    document.getElementsByClassName("selected-course")[i].addEventListener('click',()=>{
        document.getElementsByClassName("selected-course")[i].style.display = "none";
    })
}

//Display message when all courses option selected from the dropdown list
document.getElementById("course").addEventListener('change', () => {
    if(document.getElementById("course").value === "all-courses-selection"){
        document.getElementById("all-courses-selection-message").style.display = "block";
        document.getElementById("selected-courses").style.display = "none";
    }
    else {
        document.getElementById("all-courses-selection-message").style.display = "none";
        document.getElementById("selected-courses").style.display = "block";
    }
});


