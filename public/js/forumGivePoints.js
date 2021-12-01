for (let i = 0; i < document.getElementsByClassName("vote").length; i++) {
    document.getElementsByClassName("fa-caret-up")[i].addEventListener("click",()=>{
        document.getElementsByClassName("fa-caret-up")[i].style.color = "orange";
    })
}