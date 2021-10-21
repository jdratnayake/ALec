document.getElementById("reply-btn").addEventListener('click', () => {
    document.getElementById("input-box").style.display = "flow-root";
});

document.getElementById("cancel-btn").addEventListener("click", function (event) {
    event.preventDefault()
    document.getElementById("input-box").style.display = "none";
});