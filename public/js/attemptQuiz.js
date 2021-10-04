document.querySelector('.all-questions').addEventListener('click', (e) => {
    if(e.target.classList.contains('answer')){
        if(e.target.style.backgroundColor === "white"){
            e.target.style.backgroundColor = "rgba(0, 0, 0, 0.05)";
            e.target.style.border = "transparent 1px solid";
        }
        else{
            e.target.style.borderColor = "#008BCC";
            e.target.style.backgroundColor = "white";
        }
    }
});

document.querySelector('.done').addEventListener('click', (e) => {
    if(e.target.classList.contains('done')){
        e.target.style.display = "block";
    }
});

