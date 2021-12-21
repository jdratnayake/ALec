$(document).ready(function () {
    //Don't show
    $(".fa-eye").click(function () {
        $(this).hide();
        $(this).next().show();

        const sessionId = $(this).prev().val();

        $(this).parent().parent().clone().prependTo("#inactive-sessions");
        $(this).parent().parent().remove();
        // console.log($(this).parent().parent());

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/displaySessionsList/changeSessionsStatus/" + sessionId + "/F",
            dataType: "html",
            // data: {
            //     courseId: temp
            // },
            success: function (response) {
                // $("#topic").html(response);
            }
        })
    });

    $(".fa-eye-slash").click(function () {
        $(this).hide();
        $(this).prev().show();
    });
});

// for (let i = 0; i < document.getElementsByClassName("session").length; i++) {
//     document.getElementsByClassName("fa-eye")[i].addEventListener("click", () => {
//         shift(i);
//     });
//     document.getElementsByClassName("fa-eye-slash")[i].addEventListener("click", () => {
//         shift(i);
//     });
// }

// function shift(i) {
//     if (document.getElementsByClassName("fa-eye")[i].style.display === "block") {
//         document.getElementsByClassName("fa-eye")[i].style.display = "none";
//         document.getElementsByClassName("fa-eye-slash")[i].style.display = "block";
//     } else {
//         document.getElementsByClassName("fa-eye")[i].style.display = "block";
//         document.getElementsByClassName("fa-eye-slash")[i].style.display = "none";
//     }
// }