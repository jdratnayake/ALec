const closeTime = document.getElementById("close-time").value;

var countDownDate = new Date(closeTime).getTime();

// Update the count down every 1 second
var x = setInterval(function () {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Output the result in an element with id="demo"
    document.getElementById("count-down-time").innerHTML = hours + "h "
        + minutes + "m " + seconds + "s ";

    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("form").submit();
    }
}, 1000);

// document.querySelector('.all-questions').addEventListener('click', (e) => {
//     if(e.target.classList.contains('answer')){
//         if(e.target.style.backgroundColor === "white"){
//             e.target.style.backgroundColor = "rgba(0, 0, 0, 0.05)";
//             e.target.style.border = "transparent 1px solid";
//         }
//         else{
//             e.target.style.borderColor = "#008BCC";
//             e.target.style.backgroundColor = "white";
//         }
//     }
// });

// document.querySelector('.done').addEventListener('click', (e) => {
//     if(e.target.classList.contains('done')){
//         e.target.style.display = "block";
//     }
// });