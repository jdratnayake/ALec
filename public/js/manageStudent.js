// const active = "#00699AFF";
// const inactive = "#dddddd";
//Change Clicked Button Color

// $(".dropbtn").click(function () {
//     $(".dropbtn").removeClass("active-type");
//     $(this).addClass("active-type");
// });

function setCookie(cname, cvalue, exdays) {
    const d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    let expires = "expires=" + d.toGMTString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}


function checkCookie() {
    let idName = getCookie("buttonIdStu");

    if (idName == "") {
        setCookie("buttonIdStu", "assign-button", 30);
    }

    idName = getCookie("buttonIdStu");

    if (idName == "assign-button") {
        document.getElementById("remove-button").classList.remove("active-type");
        document.getElementById("assign-button").classList.add("active-type");
    } else if (idName == "remove-button") {
        document.getElementById("assign-button").classList.remove("active-type");
        document.getElementById("remove-button").classList.add("active-type");
    }
}

document.getElementById("assign-button").addEventListener("click", function () {
    setCookie("buttonIdStu", "assign-button", 30);
});

document.getElementById("remove-button").addEventListener("click", function () {
    setCookie("buttonIdStu", "remove-button", 30);
});