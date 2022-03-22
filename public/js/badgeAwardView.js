let deleteBadgeConfirm;
let deleteCloseMessage;

//When the user clicks assign courses button, open the model
document.getElementById("modal-btn").addEventListener("click", () => {
    document.getElementById("course-selection-modal").style.display = "block";
})

//When the user clicks the close button, close it
document.getElementById("close").addEventListener("click", () => {
    document.getElementById("course-selection-modal").style.display = "none";
})

//When the user clicks anywhere outside of the modal, close it
window.addEventListener("click", (event) => {
    if (event.target.classList.contains("modal")) {
        for (let i = 0; i < document.getElementsByClassName("modal").length; i++) {
            document.getElementsByClassName("modal")[i].style.display = "none";
        }
    }
});

$(document).ready(function () {


    $(document.body).on('click', '.remove-course', function () {

        const badgeId = $(this).parent().find('.course-id').val();
        const badgeName = $(this).parent().find('.course-name').html();

        deleteBadgeMessage(badgeId, badgeName);
    })

    function deleteBadgeMessage(badgeId, badgeName) {
        const output = `
            <div class="message-container" id="delete-box">
                <div class="face error-msg"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
                <div class="message-content">
                    <h1 class="alert error-msg tag-txt">Warning!</h1>
                    <p class="message-txt">Are you sure you want to continue?
                </div>
                <div class="button-boxes">
                    <button class="red-btn confirm-btn" onclick="deleteBadgeConfirm('${badgeId}', '${badgeName}')"><span class="tag-txt">
                    Yes, delete</span></button>
                    <button class="red-btn confirm-btn cancel-btn" id="delete-close-btn" onclick="deleteCloseMessage()"><span class="tag-txt">No, cancel</span></button>
                </div>
            </div>
            `;

        document.body.insertAdjacentHTML('afterbegin', output);
    }

    deleteBadgeConfirm = function (badgeId, badgeName) {
        const studentId = $("#student-id").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/badgeAward/removeBadge/" + studentId + "/" + badgeId
        })

        const newTag = "<option value='" + badgeId + "'>" + badgeName + "</option>";
        $("#badges").append(newTag);

        $('.course-id').each(function () {
            const id = $(this).val();

            if (id === badgeId) {
                $(this).parent().remove();
            }
        });

        $("#delete-box").remove();
    }

    deleteCloseMessage = function () {
        $("#delete-box").remove();
    }

    $('#badges').on('change', function () {
        if ($(this).find('option:selected').html() != "Select a Badge") {

            const badgeId = $('#badges').val();
            const studentId = $("#student-id").val();

            $.ajax({
                type: "GET",

                url: "http://localhost/ALec/badgeAward/awardBadge/" + studentId + "/" + badgeId,

                success: function (response) {
                    $(".badges").append(response);
                }
            })

            const newTag = `
            <li class='assigned-course'>
            <input type='hidden' class='course-id' value='${badgeId}'>
            <span class='course-name'> ${$(this).find('option:selected').html()} </span>
            <span class='remove-course'><i class='fa fa-trash' aria-hidden='true'></i></span>
            </li>`;

            $(".assigned-courses").append(newTag);

            $(this).find('option:selected').remove();

            addBadgeMessage()
        }
        // console.log();
    });

    function addBadgeMessage() {
        const output = `
            <div class='message-container' id='success-box'>
            <!--        style='display: none'-->
            <div class='close-btn' id='close-btn'><i class='fa fa-times-circle-o' aria-hidden='true'></i></div>
            <div class='face success-msg'><i class='fa fa-check-circle' aria-hidden='true'></i></div>
            <div class='message-content'>
                <h1 class='alert success-msg tag-txt'>Success!</h1>
                <p class='message-txt'> Badge Awarded to The Student Successfully </p>
            </div>
            <button class='button-box blue-btn' id='continue-button'><span class='tag-txt'>continue</span></button>
            </div>
            `;

        document.body.insertAdjacentHTML('afterbegin', output);
    }

    $('body').on('click', '#close-btn', function () {
        $("#success-box").remove();
    });

    $('body').on('click', '#continue-button', function () {
        $("#success-box").remove();
    });

    $(".apply-button").click(function () {
        $("#course-selection-modal").hide();
    });
});