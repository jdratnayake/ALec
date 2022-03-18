let endSession;

function endFunction() {
    document.body.insertAdjacentHTML('afterbegin', endMessage());
}

function endMessage() {
    const output = `
        <div class="message-container" id="end-box">
            <div class="face error-msg"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
            <div class="message-content">
                <h1 class="alert error-msg tag-txt">Warning!</h1>
                <p class="message-txt">Are you sure you want to end the session?
            </div>
            <div class="button-boxes">
                <button class="red-btn confirm-btn"><span class="tag-txt" 
                onclick="endSession()">
                Yes, end</span></button>
                <button class="red-btn confirm-btn cancel-btn" id="end-close-btn" onclick="endCloseMessage()"><span class="tag-txt">No, cancel</span></button>
            </div>
        </div>
        `;

    return output;
}

function endCloseMessage() {
    document.getElementById("end-box").remove();
}

$(document).ready(function () {
    const sessionId = $("#session-id").val();

    endSession = function () {
        $("#end-session").hide();
        $("#active-status").hide();
        $("#start-session").show();

        endCloseMessage();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/changeStatus/" + sessionId + "/F"
        })
    }

    // $("#end-session").click(function () {
    //     $("#end-session").hide();
    //     $("#active-status").hide();
    //     $("#start-session").show();

    //     $.ajax({
    //         type: "GET",

    //         url: "http://localhost/ALec/viewSession/changeStatus/" + sessionId + "/F"
    //     })
    // });

    $("#start-session").click(function () {
        $(this).hide();
        $("#active-status").show();
        $("#end-session").show();

        $.ajax({
            type: "GET",

            url: "http://localhost/ALec/viewSession/changeStatus/" + sessionId + "/T"
        })
    });
});