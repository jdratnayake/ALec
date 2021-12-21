for (let i = 0; i < document.getElementsByClassName("session").length; i++) {
    document.getElementsByClassName("fa-ellipsis-v")[i].addEventListener("click",()=>{
        if(document.getElementsByClassName("option-selection")[i].style.display === "none"){
            document.getElementsByClassName("option-selection")[i].style.display = "inline";
            document.getElementsByClassName("option-selection")[i].style.opacity = "1";
        }
        else{
            document.getElementsByClassName("option-selection")[i].style.display = "none";
        }
    });
}