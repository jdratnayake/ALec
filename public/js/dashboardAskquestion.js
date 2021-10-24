document.getElementById("ask-question-btn").addEventListener("click", ()=>{
    if (document.getElementById("dropdown-content").style.display === "none"){
        document.getElementById("dropdown-content").style.display = "initial";
    }
    else{
        document.getElementById("dropdown-content").style.display = "none";
    }
});