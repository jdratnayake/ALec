$(document).ready(function () {
    //Increament Badge Points By 10
    // $("#badge-points").bind('keyup mouseup', function () {
    //     let value = parseInt($("#badge-points").val());
    //     value += 9;
    //     $("#badge-points").val(value);
    // });

    //Remove Course
    $(document.body).on('click', '.remove-course', function () {
        const optionValue = $(this).parent().find('.course-id').val();
        const optionName = $(this).parent().find('.course-name').html();

        const newTag = `<option value="${optionValue}">${optionName}</option>`;

        $("#course").append(newTag);


        if (optionValue == "all") {
            $("#course-id-list").val("");
        }
        else {
            let courses = $("#course-id-list").val();
            courses = courses.replace(optionValue, "");
            $("#course-id-list").val(courses);
        }

        $(this).parent().remove();
    })

    //Insert Course
    $('#course').on('change', function () {
        const optionValue = $(this).find('option:selected').val();
        const inputTagValue = $("#course-id-list").val();

        if (optionValue != "null") {
            if (optionValue === "all") {

                //Display the list iteam
                const allTag = `
                <li class="selected-course" style="background-color: #3db53b33;">
                    <input type='hidden' class='course-id' value='all'>
                    <span class='course-name'>All Courses Selected</span>
                    <span class="remove-course">&times;</i></span>
                </li>
                `;
                $("#selected-courses").html(allTag);

                //Insert value to the input tag
                $("#course-id-list").val("all");
            }
            else if (inputTagValue != "all") {
                //Insert selected course id
                const selectedCourseId = $('#course').val();
                $("#course-id-list").val($("#course-id-list").val() + " " + selectedCourseId);

                const selectedCourseName = $(this).find('option:selected').html();

                const newTag = `
                <li class="selected-course">
                    <input type='hidden' class='course-id' value='${selectedCourseId}'>
                    <span class='course-name'>${selectedCourseName}</span>
                    <span class="remove-course">&times;</i></span>
                </li>
                `;;

                $("#selected-courses").append(newTag);
                $(this).find('option:selected').remove();
            }
        }
    });

});