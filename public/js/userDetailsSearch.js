document.getElementById("search-form").addEventListener('submit', function (event) {
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

    $("#search").keyup(function () {
        let search = $(this).val();

        if (search != "") {
            loadData(search);
        }
    });

    // LIVE SEARCH END
})