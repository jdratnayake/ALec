let deleteCourseConfirm;

$(document).ready(function () {
    $(document.body).on('click', '.remove-course', function () {
        const courseId = $(this).parent().find('.course-id').val();
        const courseName = $(this).parent().find('.course-name').html();

        deleteCourseMessage(courseId, courseName);
    })

    function deleteCourseMessage(courseId, courseName) {
        const output = `
            <div class="message-container" id="delete-box">
                <div class="face error-msg"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
                <div class="message-content">
                    <h1 class="alert error-msg tag-txt">Warning!</h1>
                    <p class="message-txt">Are you sure you want to continue?
                </div>
                <div class="button-boxes">
                    <button class="red-btn confirm-btn" onclick="deleteCourseConfirm('${courseId}', '${courseName}')"><span class="tag-txt">
                    Yes, delete</span></button>
                    <button class="red-btn confirm-btn cancel-btn" id="delete-close-btn" onclick="deleteCloseMessage()"><span class="tag-txt">No, cancel</span></button>
                </div>
            </div>
            `;

        document.body.insertAdjacentHTML('afterbegin', output);
    }

    deleteCourseConfirm = function (courseId, courseName) {
        //Remove user from the course (database)
        const userId = $("#user-id").val();
        const userType = $("#user-type").val();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/userProfile/removeCourse/" + userId + "/" + courseId + "/" + userType
        })

        const newTag = "<option value='" + courseId + "'>" + courseName + "</option>";
        $("#courses").append(newTag);

        $('.course-id').each(function () {
            const id = $(this).val();

            if (id === courseId) {
                $(this).parent().remove();
            }
        });

        $("#delete-box").remove();
    }

    $('#courses').on('change', function () {
        if ($(this).find('option:selected').html() != "Select Course:") {
            const courseId = $('#courses').val();
            const userId = $("#user-id").val();
            const userType = $("#user-type").val();
            //Add user to the course (database)
            $.ajax({
                type: "GET",

                url: "http://localhost/ALec/userProfile/assignCourse/" + userId + "/" + courseId + "/" + userType
            })

            const newTag = `
            <li class='assigned-course'>
            <input type='hidden' class='course-id' value='${courseId}'>
            <span class='course-name'> ${$(this).find('option:selected').html()} </span>
            <span class='remove-course'><i class='fa fa-trash' aria-hidden='true'></i></span>
            </li>`;

            $(".assigned-courses").append(newTag);

            $(this).find('option:selected').remove();

            addCourseMessage(userType)
        }
        // console.log();
    });

    function addCourseMessage($type) {
        const output = `
            <div class='message-container' id='success-box'>
            <!--        style='display: none'-->
            <div class='close-btn' id='close-btn'><i class='fa fa-times-circle-o' aria-hidden='true'></i></div>
            <div class='face success-msg'><i class='fa fa-check-circle' aria-hidden='true'></i></div>
            <div class='message-content'>
                <h1 class='alert success-msg tag-txt'>Success!</h1>
                <p class='message-txt'> ${$type} Added to The Course Successfully </p>
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