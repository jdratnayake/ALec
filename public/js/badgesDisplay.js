$(document).ready(function () {
    $('#course-selection').on('change', function () {

        const courseId = $(this).val();

        location.href = 'http://localhost/ALec/badge/index/' + courseId;
    });
});