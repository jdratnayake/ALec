const coll = document.getElementsByClassName("collapsible");

for (let i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");
        const content = this.nextElementSibling;
        if (content.style.maxHeight) {
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }
    });
}

document.querySelector('#exit-edit').style.display = "none";

document.querySelector('#edit-topic').addEventListener("click", () => {
    for(let i = 0; i < document.querySelectorAll('.hidden').length; i++){
        document.querySelector('#exit-edit').style.display = "inline-flex";
        document.querySelector('#exit-edit').style.backgroundColor = "#1ebb7f";
        document.querySelector('#exit-edit').style.borderColor = "#1ebb7f";
        // document.querySelector('#exit-edit').style.padding = "10px 50px";
        document.querySelector('#edit-topic').style.display = "none";
        document.querySelectorAll('.hidden')[i].style.display = "inline-flex";
    }
});

document.querySelector('#exit-edit').addEventListener('click', () => {
    for(let i = 0; i < document.querySelectorAll('.hidden').length; i++){
        document.querySelector('#edit-topic').style.display = "inline-flex";
        document.querySelector('#exit-edit').style.display = "none";
        document.querySelectorAll('.hidden')[i].style.display = "none";
    }
});

