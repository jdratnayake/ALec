$(document).ready(function () {

    $('#lecturers-create').click(function () {
        $('#btn-create-download').attr('onclick', getLink(1));
        $('#regNo').html("LecturerNo");
        $('input[name=upload-user-type]').val('2');
    });


    $('#students-create').click(function () {
        $('#btn-create-download').attr('onclick', getLink(2));
        $('#regNo').html("IndexNo");
        $('input[name=upload-user-type]').val('3');
    });
});

function getLink(num) {
    return `location.href='http://localhost/ALec/adminDashboard/download/${num}'`;
}