let liked = "grey";
let unliked = "black";

for (let i = 0; i < document.getElementsByClassName("vote").length; i++) {
    document.getElementsByClassName("vote-highlight")[i].addEventListener("click",()=>{
        if(document.getElementsByClassName("vote-highlight")[i].style.color === liked)
            document.getElementsByClassName("vote-highlight")[i].style.color = unliked;
        else
            document.getElementsByClassName("vote-highlight")[i].style.color = liked;
    })
}