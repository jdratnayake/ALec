window.addEventListener('DOMContentLoaded', () => {
    move();
});

function move() {
    let elem = document.getElementById("time-bar");
    let time = document.getElementById("time-display");
    let width = 100;
    let id = setInterval(frame, 360);

    function frame() {
        if (width <= 0) {
            clearInterval(id);
        } else {
            width--;
            elem.style.width = width + '%';
            time.innerHTML = (width * 60 / 100) + ' ';
        }
    }
}
