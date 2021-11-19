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
        const newTag = "<option value='" + $(this).parent().find('.course-id').val() + "'>" + $(this).parent().find('.course-name').html() + "</option>"
        $("#courses").append(newTag);

        //Append course id
        $("#current-removed-courses").val($("#current-removed-courses").val() + " " + $(this).parent().find('.course-id').val());

        $(this).parent().remove();
    })

    $('#courses').on('change', function () {
        if ($(this).find('option:selected').html() != "Select Course:") {
            $("#current-assigned-courses").val($("#current-assigned-courses").val() + " " + $('#courses').val());

            const newTag = `
            <li class='assigned-course'>
            <input type='hidden' class='course-id' value='${$('#courses').val()}'>
            <span class='course-name'> ${$(this).find('option:selected').html()} </span>
            <span class='remove-course'>&times;</span>
            </li>`;

            // const newTag = "<li>" + "<div>" + $(this).find('option:selected').html() + "</div>" + "<span class='close'> &#215; </span> </li>"
            $(".assigned-courses").append(newTag);

            $(this).find('option:selected').remove();
        }
        // console.log();
    });



});