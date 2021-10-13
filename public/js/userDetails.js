$(document).ready(function () {

    // INITIALLY DISPLAY ALL USER DETAILS - START
    displayAllUserDetails();

    function displayAllUserDetails() {
        $("#actor").val("all");
        colorTheLabel($("#all"));
        $("#year-selection").addClass("hidden-year");

        getData($(".tag").first());
    }
    // INITIALLY DISPLAY ALL USER DETAILS - END

    $("#all").click(function () {
        $("#actor").val("all");
        colorTheLabel(this);
        $("#year-selection").addClass("hidden-year");

        getData($(".tag").first());
    });

    $("#lec").click(function () {
        $("#actor").val("lec");
        colorTheLabel(this);
        $("#year-selection").addClass("hidden-year");

        getData($(".tag").first());
    });

    $("#year").change(function () {
        let yearVal = $(this).children("option:selected").val();
        // console.log(year);

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/userDetails/year/" + yearVal,
            dataType: "html",

            success: function (response) {
                $("#table-content").html(response);
                createPaginationNos();
            }
        })
    });



    $("#stu").click(function () {
        $("#year").val("all");
        $("#actor").val("stu");
        colorTheLabel(this);
        $("#year-selection").removeClass("hidden-year");

        getData($(".tag").first());
    });

    // $('a').click(function (e) {
    //     e.preventDefault()
    //     console.log("Hi");
    //     getData(this);
    // });

    $(document).on('click', 'a.change', function (e) {
        e.preventDefault();

        const href = parseInt($(this).attr('href'));

        if (href == -1) {
            const start = $(".tag").first().text();

            if (start != 1) {
                $('.tag').each(function () {

                    $(this).text(parseInt($(this).text()) - 1);
                })
            }
        } else if (href == -2) {
            const last = $(".tag").last().text();
            const maxValue = parseInt($("#maxValue").val());

            if (last < maxValue) {
                $('.tag').each(function () {

                    $(this).text(parseInt($(this).text()) + 1);
                })
            }
        }
    });

    $(document).on('click', 'a.tag', function (e) {
        e.preventDefault();

        const actor = $("#actor").val();
        const year = parseInt($("#yearValue").val());
        const value = $(this).text();

        // console.log(year);
        // console.log(value);

        if (actor == "stu" && year != 0) {
            // console.log("OKay");
            $.ajax({
                type: "GET",

                url: "http://localhost/ALec/userDetails/year/" + year + "/" + value,
                dataType: "html",

                success: function (response) {
                    $("#table-content").html(response);
                }
            })
        } else {
            getData(this, 0);
        }

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
            let value = $(element).text();

            if (sig == 1) {
                value = 1;
            }

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
        $("#pagination").html('<a href="-1" class="change">&laquo;</a>');
        $("#pagination").append("<a href='#' class='tag active'>" + 1 + "</a>");
        for (let i = 2; i <= count; i++) {
            txt = "<a href='#' class='tag'>" + i + "</a>";
            $("#pagination").append(txt);
        }
        $("#pagination").append('<a href="-2" class="change">&raquo;</a>');
    }
})