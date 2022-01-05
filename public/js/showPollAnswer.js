$(document).ready(function () {
    const sessionId = $("#session-id").val();

    setInterval(checkSession, 3000);

    function checkSession() {
        checkSessionStatus(sessionId);
    }
});