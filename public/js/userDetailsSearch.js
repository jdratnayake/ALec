document.getElementById("search").addEventListener('submit', function (event) {
    event.preventDefault();
});


$(document).ready(function () {
    // LIVE SEARCH START

    function loadData(data) {
        data = data.trim().replace(/ /g, "_");

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/userDetails/search/" + data,
            dataType: "html",

            success: function (response) {
                $("#table-content").html(response);
            }
        })
    }

    $("#search-tag").keyup(function () {
        let search = $(this).val();

        if (search != "") {
            $(".pagination-container").hide();
            loadData(search);
        } else {
            $(".pagination-container").show();
        }
    });

    // LIVE SEARCH END
})