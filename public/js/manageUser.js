const active = "#00699AFF";
const inactive = "#dddddd";

const remove = document.getElementById("remove-user");
const assign = document.getElementById("assign-user");
const assign_button = document.getElementById("assign-button");
const remove_button = document.getElementById("remove-button");

function changeToAssign(){
    remove.style.display = "inline-table";
    assign.style.display = "none";
    remove_button.style.backgroundColor = inactive;
    remove_button.style.borderColor = inactive;
    assign_button.style.backgroundColor = active;
}

function changeToRemove(){
    remove.style.display = "none";
    assign.style.display = "inline-table";
    assign_button.style.backgroundColor = inactive;
    assign_button.style.borderColor = inactive;
    remove_button.style.backgroundColor = active;
}

