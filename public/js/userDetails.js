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

    $("#year").change(function () {
        let yearVal = $(this).children("option:selected").val();
        // console.log(year);

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/userDetails/year/" + yearVal,
            dataType: "html",

            success: function (response) {
                $("#table-content").html(response);
            }
        })
    });

    $("#lec").click(function () {
        $("#actor").val("lec");
        colorTheLabel(this);
        $("#year-selection").addClass("hidden-year");

        getData($(".tag").first());
    });

    $("#stu").click(function () {
        $("#actor").val("stu");
        colorTheLabel(this);
        $("#year-selection").removeClass("hidden-year");

        getData($(".tag").first());
    });

    $("#all").click(function () {
        $("#actor").val("all");
        colorTheLabel(this);
        $("#year-selection").addClass("hidden-year");

        getData($(".tag").first());
    });

    // $('a').click(function (e) {
    //     e.preventDefault()
    //     console.log("Hi");
    //     getData(this);
    // });

    $(document).on('click', 'a.tag', function (e) {
        e.preventDefault();
        getData(this, 0);

        $('.tag').each(function () {

            $(this).removeClass("active");
        })

        $(this).addClass("active");
    });

    function getData(element, sig = 1) {
        // $('.tag').each(function () {
        //     $(this).removeClass("active");
        // })

        if ($(element).attr('href') == "#") {
            //Highlight the button
            // $(element).addClass("active");

            const actor = $("#actor").val();
            const value = $(element).text();

            // console.log(actor);
            // console.log(value);

            $.ajax({
                type: "GET",

                url: "http://localhost/ALec/userDetails/user/" + actor + "/" + value,
                dataType: "html",
                // data: {
                //     courseId: temp
                // },
                success: function (response) {
                    $("#table-content").html(response);

                    if (sig == 1) {
                        createPaginationNos();
                    }
                }
            })
        }
    }

    function resetNumbers() {
        $('.tag').each(function () {
            $(this).removeClass("active");
        })

        $('.tag').first().addClass("active");
    }

    function colorTheLabel(element) {
        $("#all").removeClass("active-type");
        $("#stu").removeClass("active-type");
        $("#lec").removeClass("active-type");

        $(element).addClass("active-type");
    }

    function createPaginationNos() {
        const displayCount = parseInt($("#displayValue").val());
        const maxValue = parseInt($("#maxValue").val());



        let count = 0;

        if (maxValue > displayCount) {
            // console.log("OKay");
            count = displayCount;
        } else {
            // console.log("No");
            count = maxValue;
        }
        // console.log(maxValue);
        // console.log(displayCount);
        // console.log(count);

        let txt = "";
        $("#pagination").html('<a href="-1">&laquo;</a>');
        $("#pagination").append("<a href='#' class='tag active'>" + 1 + "</a>");
        for (let i = 2; i <= count; i++) {
            txt = "<a href='#' class='tag'>" + i + "</a>";
            $("#pagination").append(txt);
        }
        $("#pagination").append('<a href="-2">&raquo;</a>');
    }
})