for (let i = 0; i < document.getElementsByClassName("session").length; i++) {
    document.getElementsByClassName("fa-eye")[i].addEventListener("click", ()=>{
        shift(i);
    });
    document.getElementsByClassName("fa-eye-slash")[i].addEventListener("click", ()=>{
        shift(i);
    });
}

function shift(i) {
    if(document.getElementsByClassName("fa-eye")[i].style.display === "block"){
        document.getElementsByClassName("fa-eye")[i].style.display = "none";
        document.getElementsByClassName("fa-eye-slash")[i].style.display = "block";
    }
    else{
        document.getElementsByClassName("fa-eye")[i].style.display = "block";
        document.getElementsByClassName("fa-eye-slash")[i].style.display = "none";
    }
}

