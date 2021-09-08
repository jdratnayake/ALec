let i = 2;
let j = 2;


function getQuestions() {
    let quizNo = document.getElementById("qname1");
    quizNo.innerHTML = "Question " + i.toString();

    let itm = document.getElementById("form1");
    let cln = itm.cloneNode(true);
    cln.id = "form" + i.toString();
    document.getElementById("new-question").append(cln);
    i = i + 1;

    changeId();
}

function changeId() {
    let mcqId = 'select-mcq' + j.toString();
    let shortId = 'select-short' + j.toString();

    let mcq = 'mcq' + j.toString();
    let short = 'short-ans' + j.toString();
    j++;

    document.getElementById(mcqId).setAttribute("name", 'select-one' + j.toString());
    document.getElementById(mcqId).id = 'select-mcq' + j.toString();

    document.getElementById(shortId).setAttribute("name", 'select-one' + j.toString());
    document.getElementById(shortId).id = 'select-short' + j.toString();


    document.getElementById(mcq).id = 'mcq' + j.toString();
    document.getElementById(short).id = 'short-ans' + j.toString();

    document.getElementById(short).style.display = "none";

}

function onMcq1() {
    let id = document.getElementById('qname1');
    console.log(id.innerText);
    let ele = document.getElementsByName('select-one' + (j - 1).toString());

    for (let i = 0; i < ele.length; i++) {
        if (ele[i].checked) {
            if (ele[i].value === "MCQ") {
                document.getElementById('mcq' + (j - 1).toString()).style.display = "block";
                document.getElementById('short-ans' + (j - 1).toString()).style.display = "none";
            } else {
                document.getElementById('short-ans' + (j - 1).toString()).style.display = "block";
                document.getElementById('mcq' + (j - 1).toString()).style.display = "none";
            }
        }
    }
}

function onMcq() {
    let ele = document.getElementsByName('select-one');

    for (let i = 0; i < ele.length; i++) {
        if (ele[i].checked) {
            if (ele[i].value === "MCQ") {
                document.getElementById('mcq').style.display = "block";
                document.getElementById('short-ans').style.display = "none";
            } else {
                document.getElementById('short-ans').style.display = "block";
                document.getElementById('mcq').style.display = "none";
            }
        }
    }
}

// GET POP-UP WINDOW
function getPopup() {
    // Get the modal
    const modal = document.getElementById("save-details");

    // Get the button that opens the modal
    const btn = document.getElementById("create-quiz");

    // Get the <span> element that closes the modal
    const span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    }
}

// Load homepage
function loadHomepage() {
    location.replace("/app/views/lecturer/home.html")
}



