document.getElementById("btn").onclick = function () {
    document.querySelector(".siderbar").classList.toggle("active");
    document.querySelector(".home-content").classList.toggle("home-content-expand");
}

//notification
function showNotifycation() {
    document.querySelector(".pop-up").classList.toggle("show");
    document.querySelector(".notification-container").classList.toggle("hide");
}