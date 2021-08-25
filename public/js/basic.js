let btn = document.querySelector("#btn");
let siderbar = document.querySelector(".siderbar");
// hansana
let homecontent = document.querySelector(".home-content");


btn.onclick = function () {
    siderbar.classList.toggle("active");
    homecontent.classList.toggle("home-content-expand");
}

//notification
function showNotifycation() {
    document.querySelector(".pop-up").classList.toggle("show");
    document.querySelector(".notification-container").classList.toggle("hide");
}

// slide show code
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1 }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active-dot", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active-dot";
    setTimeout(showSlides, 5000); // Change image every 2 seconds
}