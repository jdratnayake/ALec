for (let i = 0; i < document.getElementsByClassName("message-container").length; i++) {
    document.getElementsByClassName("close-btn")[i].addEventListener("click",()=>{
        document.getElementsByClassName("message-container")[i].style.display = "none";
    });
}

    // document.getElementById("btn").addEventListener("click",()=>{
    //     if (document.getElementById("success-box").style.display === "block"){
    //         document.getElementById("success-box").style.display = "none";
    //     }
    //     else {
    //         document.getElementById("success-box").style.display = "block";
    //     }
    // });

    // document.getElementById("close-btn").addEventListener("click",()=>{
    //         document.getElementById("success-box").style.display = "none";
    // });

