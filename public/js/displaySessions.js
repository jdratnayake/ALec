$(document).ready(function () {
    //Don't show
    $(document.body).on('click', '.fa-eye', function () {
        console.log("fa-eye");
        $(this).hide();
        $(this).next().show();

        $(this).parent().parent().clone().prependTo("#inactive-sessions");
        $(this).parent().parent().remove();

        const sessionId = $(this).prev().val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/displaySessionsList/changeSessionsStatus/" + sessionId + "/F",
            dataType: "html"
        })
    })

    //To show
    $(document.body).on('click', '.fa-eye-slash', function () {
        console.log("fa-eye-slash");
        $(this).hide();
        $(this).prev().show();

        const courseId = $(this).prev().prev().prev().val();
        const sessionId = $(this).prev().prev().val();

        $('.course-identity').each(function (i, obj) {
            const currentCourseId = $(obj).val();
            const currentSessionId = $(obj).next().val();

            // console.log(currentId);

            if (courseId == currentCourseId && sessionId != currentSessionId) {
                $(obj).next().next().hide()
                $(obj).next().next().next().show()
                $(obj).parent().parent().clone().prependTo("#inactive-sessions");
                $(obj).parent().parent().remove();
            }
        });

        $(this).parent().parent().clone().prependTo("#active-sessions");
        $(this).parent().parent().remove();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/displaySessionsList/changeSessionsStatus/" + sessionId + "/T",
            dataType: "html"
        })
    })
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