let start = document.getElementById("start-session");
let end = document.getElementById("end-session");
let active_status = document.getElementById("active-status");

start.addEventListener("click", () => {
    control_session();
});
end.addEventListener("click", () => {
    document.getElementById("active-status").style.display = "none";
    control_session();
});

for (let i = 0; i < document.getElementsByClassName("session").length; i++) {
    document.getElementsByClassName("fa-eye")[i].addEventListener("click", () => {
        shift(i);
    });
    document.getElementsByClassName("fa-eye-slash")[i].addEventListener("click", () => {
        shift(i);
    });
}

function shift(i) {
    if (document.getElementsByClassName("fa-eye")[i].style.display === "block") {
        document.getElementsByClassName("fa-eye")[i].style.display = "none";
        document.getElementsByClassName("fa-eye-slash")[i].style.display = "block";
    } else {
        document.getElementsByClassName("fa-eye")[i].style.display = "block";
        document.getElementsByClassName("fa-eye-slash")[i].style.display = "none";
    }
}

function control_session() {
    if (start.style.display === "none") {
        start.style.display = "block";
        end.style.display = "none";
        active_status.style.display = "none";
    } else {
        start.style.display = "none";
        end.style.display = "block";
        active_status.style.display = "block";
    }
}