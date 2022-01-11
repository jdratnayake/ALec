document.getElementById("search").addEventListener('submit', function (event) {
    event.preventDefault();
});


$(document).ready(function () {
    function colorTheLabel(element) {
        $("#all").removeClass("active-type");
        $("#stu").removeClass("active-type");
        $("#lec").removeClass("active-type");

        $(element).addClass("active-type");
    }

    // LIVE SEARCH START

    function loadData() {
        const formData = $("#search").serialize();

        $.post(
            "http://localhost/ALec/userDetails/search",
            formData,
            function (response) {
                $("#table-content").html(response);
            }
        );

    }

    $("#search-tag").keyup(function () {
        let search = $(this).val();

        if (search != "") {
            $(".pagination-container").hide();
            colorTheLabel("#all");

            //Hide student drop down
            if (!$("#year-selection").hasClass("hidden-year")) {
                $("#year-selection").addClass("hidden-year");
            }

            loadData(search);
        } else {
            loadData();
            $(".pagination-container").show();
        }
    });

    // LIVE SEARCH END
})