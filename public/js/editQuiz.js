function edit(button) {
    for (let i = 0; i < 4; i++) {
        let x = document.getElementsByClassName("editable")[i];
        if (x.contentEditable === "true") {
            x.contentEditable = "false";
            button.innerHTML = "<i class=\"fa fa-pencil\" aria-hidden=\"true\"></i>Edit question";
        } else {
            x.contentEditable = "true";
            button.innerHTML = "<i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i>Save question";
        }
    }
}

// document.querySelector('.all-questions').addEventListener('click',(e) => {
//     if(e.target.classList.contains('edit')){
//         console.log(e.target.firstChild);
//         for(let i=0; i < document.getElementsByClassName('editable').length; i++){
//            document.getElementsByClassName('editable')[i].contentEditable = 'true';
//         }
//     }
// });

//
// function edit(button) {
//     for (let i = 0; i < 3; i++) {
//         for (let j = 0; j < 4; j++) {
//             let x = document.getElementsByClassName("editable")[i][j];
//             if (x.contentEditable === "true") {
//                 x.contentEditable = "false";
//                 button.innerHTML = "<i class=\"fa fa-pencil\" aria-hidden=\"true\"></i>Edit question";
//             } else {
//                 x.contentEditable = "true";
//                 button.innerHTML = "<i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i>Save question";
//             }
//         }
//     }
// }