const closeTime = document.getElementById("close-time").value;
const totalTime = document.getElementById("total-time").value;
const timeBar = document.getElementById("time-bar");

var countDownDate = new Date(closeTime).getTime();

// Update the count down every 1 second
var x = setInterval(countDownFunction, 1000);

function countDownFunction() {
    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // If the count down is over, write some text 
    if (distance < 0) {
        document.getElementById("time-bar").style.width = '0%';
        document.getElementById("time-display").innerHTML = "0h 0m 0s";
        clearInterval(x);
        // document.getElementById("form").submit();
    } else {
        // Time calculations for days, hours, minutes and seconds
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Output the result in an element with id="demo"
        document.getElementById("time-display").innerHTML = hours + "h "
            + minutes + "m " + seconds + "s";

        var percentage = 100 * (distance / 1000.0) / totalTime;
        document.getElementById("time-bar").style.width = percentage + '%';
    }
}