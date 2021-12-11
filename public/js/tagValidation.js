// Color values
let validColor = '#38d39f';
let invalidColor = '#f44336';
let validateAll;
let sig;

$(document).ready(function () {
    const tagName = $("#tag-name");
    const errorTag = $(".error");
    const submitBtnTag = $("#create-tag-btn");

    $("#tag-form").submit(function (event) {
        event.preventDefault();

        if (validateAll()) {
            document.getElementById("tag-form").submit()
        }
    });

    validateAll = function () {
        if (checkIfEmpty()) {
            if (stringCheck()) {
                if (uniqueCheck()) {
                    return true;
                }
            }
        }
    }

    function uniqueCheck() {
        const userId = $("#userId").val().trim();
        const name = tagName.val().trim().replace(" ", "_");

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/tags/uniqueCheck/" + userId + "/" + name,
            dataType: "html",
            success: function (response) {
                if (response === "0") {
                    sig = 0;
                    setInvalid("Tag name must be unique");
                } else {
                    sig = 1;
                    setValid();
                }
            }
        })

        if (sig) {
            return true;
        } else {
            return false;
        }
    }

    function checkIfEmpty() {
        if (tagName.val().trim() === "") {
            setInvalid("Tag name must not be empty");
            return false;
        } else {
            setValid();
            return true;
        }
    }

    function stringCheck() {
        const format = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;

        if (tagName.val().trim().match(format)) {
            setInvalid("Tag name must contain only letters and numbers");
            return false;
        } else {
            setValid();
            return true;
        }
    }

    function setValid() {
        tagName.css("border-color", validColor);
        errorTag.html("");
    }

    function setInvalid(message) {
        tagName.css("border-color", invalidColor);
        errorTag.html(message);
    }
});