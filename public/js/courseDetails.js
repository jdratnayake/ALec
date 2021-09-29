const all = document.getElementById("all");
const one = document.getElementById("one");
const two = document.getElementById("two");
const three = document.getElementById("three");
const four = document.getElementById("four");

all.addEventListener('click', function () {
    setCookie("buttonIdCourse", "all", 30);
})

one.addEventListener('click', function () {
    setCookie("buttonIdCourse", "one", 30);
})

two.addEventListener('click', function () {
    setCookie("buttonIdCourse", "two", 30);
})

three.addEventListener('click', function () {
    setCookie("buttonIdCourse", "three", 30);
})

four.addEventListener('click', function () {
    setCookie("buttonIdCourse", "four", 30);
})

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
    let idName = getCookie("buttonIdCourse");

    if (idName == "") {
        setCookie("buttonIdCourse", "all", 30);
        idName = "all"
    }

    if (idName == "all") {
        all.classList.add("active-type");
        one.classList.remove("active-type");
        two.classList.remove("active-type");
        three.classList.remove("active-type");
        four.classList.remove("active-type");
    } else if (idName == "one") {
        one.classList.add("active-type");
        all.classList.remove("active-type");
        two.classList.remove("active-type");
        three.classList.remove("active-type");
        four.classList.remove("active-type");
    } else if (idName == "two") {
        two.classList.add("active-type");
        one.classList.remove("active-type");
        all.classList.remove("active-type");
        three.classList.remove("active-type");
        four.classList.remove("active-type");

    } else if (idName == "three") {
        three.classList.add("active-type");
        one.classList.remove("active-type");
        two.classList.remove("active-type");
        all.classList.remove("active-type");
        four.classList.remove("active-type");
    } else if (idName == "four") {
        four.classList.add("active-type");
        one.classList.remove("active-type");
        two.classList.remove("active-type");
        three.classList.remove("active-type");
        all.classList.remove("active-type");
    }
}