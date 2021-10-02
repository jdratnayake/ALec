let click_ans = document.getElementsByClassName('.answer');
// click_ans.addEventListener("click", showChange);

function showChange() {
    click_ans.style.backgroundColor = "white";
    click_ans.style.borderColor =  "rgba(black,0.25)";
}

let done = document.getElementsByClassName('done');
// done.addEventListener("click", displayResults);

function displayResults() {
    let main_content = document.getElementsByClassName('details');
    let next_content = document.getElementsByClassName('.quizCompleted');

    next_content.style.display = "block";
    main_content.style.display = "none";
}