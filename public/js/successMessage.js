// for (let i = 0; i < document.getElementsByClassName("message-container").length; i++) {
//     document.getElementsByClassName("close-btn")[i].addEventListener("click", () => {
//         document.getElementsByClassName("message-container")[i].style.display = "none";
//     });
// }

document.getElementById("close-btn").addEventListener("click", function () {
    document.getElementById("success-box").style.display = "none";
});

document.getElementById("continue-button").addEventListener("click", function () {
    document.getElementById("success-box").style.display = "none";
});