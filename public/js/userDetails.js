$(document).ready(function () {
    $("#lec").click(function () {
        $("#lec").addClass("active-type");
        $("#stu").removeClass("active-type");
        $("#all").removeClass("active-type");

        const temp = "lec";
        $('#header-title').text('Lecturer Details');

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/userDetails/user/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });

    $("#stu").click(function () {
        $("#stu").addClass("active-type");
        $("#lec").removeClass("active-type");
        $("#all").removeClass("active-type");

        const temp = "stu";
        $('#header-title').text('Student Details');

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/userDetails/user/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });

    $("#all").click(function () {
        $("#all").addClass("active-type");
        $("#stu").removeClass("active-type");
        $("#lec").removeClass("active-type");

        const temp = "all";
        $('#header-title').text('User Details');

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/userDetails/user/" + temp,
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });
})


// const allBtn = document.getElementById("all");
// const stuBtn = document.getElementById("stu");
// const lecBtn = document.getElementById("lec");

// allBtn.addEventListener('click', function () {
//     setCookie("buttonId", "all", 30);
// })

// stuBtn.addEventListener('click', function () {
//     setCookie("buttonId", "stu", 30);
// })

// lecBtn.addEventListener('click', function () {
//     setCookie("buttonId", "lec", 30);
// })

// function setCookie(cname, cvalue, exdays) {
//     const d = new Date();
//     d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
//     let expires = "expires=" + d.toGMTString();
//     document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
// }

// function getCookie(cname) {
//     let name = cname + "=";
//     let decodedCookie = decodeURIComponent(document.cookie);
//     let ca = decodedCookie.split(';');
//     for (let i = 0; i < ca.length; i++) {
//         let c = ca[i];
//         while (c.charAt(0) == ' ') {
//             c = c.substring(1);
//         }
//         if (c.indexOf(name) == 0) {
//             return c.substring(name.length, c.length);
//         }
//     }
//     return "";
// }

// function checkCookie() {
//     let idName = getCookie("buttonId");

//     if (idName == "") {
//         setCookie("buttonId", "all", 30);
//         idName = "all"
//     }

//     if (idName == "all") {
//         allBtn.classList.add("active-type");
//         stuBtn.classList.remove("active-type");
//         lecBtn.classList.remove("active-type");
//     } else if (idName == "stu") {
//         stuBtn.classList.add("active-type");
//         allBtn.classList.remove("active-type");
//         lecBtn.classList.remove("active-type");
//     } else if (idName == "lec") {
//         lecBtn.classList.add("active-type");
//         stuBtn.classList.remove("active-type");
//         allBtn.classList.remove("active-type");
//     }
// }