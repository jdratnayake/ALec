function edit(button) {
    for (let i = 0; i < 4; i++) {
        let x = document.getElementsByClassName("editable")[i];
        if (x.contentEditable === "true") {
            x.contentEditable = "false";
            button.innerHTML = "<i class=\"fa fa-pencil\" aria-hidden=\"true\"></i>Edit";
        } else {
            x.contentEditable = "true";
            button.innerHTML = "<i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i>Save";
        }
    }
}