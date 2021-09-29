// function deleteAllCookies() {
//     var cookies = document.cookie.split(";");

//     for (var i = 0; i < cookies.length; i++) {
//         var cookie = cookies[i];
//         var eqPos = cookie.indexOf("=");
//         var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
//         // console.log(name);
//         if (name != "PHPSESSID") {
//             document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
//         }
//     }
// }
function setCookie(cname, cvalue, exdays) {
    const d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    let expires = "expires=" + d.toGMTString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}


function setDefaultCookieValues() {
    setCookie("buttonId", "assign-button", 30);
    setCookie("buttonIdStu", "assign-button", 30);
}