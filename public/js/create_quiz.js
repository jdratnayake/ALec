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
    let answer1Id = 'q'+j.toString()+'_answer1';
    let answer2Id = 'q'+j.toString()+'_answer2';
    let answer3Id = 'q'+j.toString()+'_answer3';
    let answer4Id = 'q'+j.toString()+'_answer4';
    let answer5Id = 'q'+j.toString()+'_answer5';

    let shortAnswerId = 'q'+j.toString()+'_shortanswer';

    let questionId = 'q'+j.toString()+'_mcq';
    let shortAnsQuestionId = 'q'+j.toString()+'_short';

    let answer1pointId = 'q'+j.toString()+'_answer1_point';
    let answer2pointId = 'q'+j.toString()+'_answer2_point';
    let answer3pointId = 'q'+j.toString()+'_answer3_point';
    let answer4pointId = 'q'+j.toString()+'_answer4_point';
    let answer5pointId = 'q'+j.toString()+'_answer5_point';

    let shortAnsPointId = 'q'+j.toString()+'_shortanswer_point';

    let mcq = 'mcq' + j.toString();
    let short = 'short-ans' + j.toString();
    j++;

    document.getElementById(mcqId).setAttribute("name", 'q' + j.toString() + '_type');
    document.getElementById(mcqId).id = 'select-mcq' + j.toString();

    document.getElementById(questionId).setAttribute("name", 'q'+j.toString()+'_mcq');
    document.getElementById(questionId).id = 'q'+j.toString()+'_mcq';

    document.getElementById(shortAnsQuestionId).setAttribute("name", 'q'+j.toString()+'_short');
    document.getElementById(shortAnsQuestionId).id = 'q'+j.toString()+'_short';

// change ids of answers
    document.getElementById(answer1Id).setAttribute("name", 'q'+ j.toString()+ '_answer1');
    document.getElementById(answer1Id).id = 'q' + j.toString() + '_answer1';

    document.getElementById(answer2Id).setAttribute("name", 'q'+ j.toString()+ '_answer2');
    document.getElementById(answer2Id).id = 'q' + j.toString() + '_answer2';

    document.getElementById(answer3Id).setAttribute("name", 'q'+ j.toString()+ '_answer3');
    document.getElementById(answer3Id).id = 'q' + j.toString() + '_answer3';

    document.getElementById(answer4Id).setAttribute("name", 'q'+ j.toString()+ '_answer4');
    document.getElementById(answer4Id).id = 'q' + j.toString() + '_answer4';

    document.getElementById(answer5Id).setAttribute("name", 'q'+ j.toString()+ '_answer5');
    document.getElementById(answer5Id).id = 'q' + j.toString() + '_answer5';

    document.getElementById(shortAnswerId).setAttribute("name", 'q'+ j.toString()+ '_shortanswer');
    document.getElementById(shortAnswerId).id = 'q' + j.toString() + '_shortanswer';

// change ids of point inputs
    document.getElementById(answer1pointId).setAttribute("name", 'q'+j.toString()+'_answer1_point');
    document.getElementById(answer1pointId).id = 'q' + j.toString() + '_answer1_point';

    document.getElementById(answer2pointId).setAttribute("name", 'q'+j.toString()+'_answer2_point');
    document.getElementById(answer2pointId).id = 'q' + j.toString() + '_answer2_point';

    document.getElementById(answer3pointId).setAttribute("name", 'q'+j.toString()+'_answer3_point');
    document.getElementById(answer3pointId).id = 'q' + j.toString() + '_answer3_point';

    document.getElementById(answer4pointId).setAttribute("name", 'q'+j.toString()+'_answer4_point');
    document.getElementById(answer4pointId).id = 'q' + j.toString() + '_answer4_point';

    document.getElementById(answer5pointId).setAttribute("name", 'q'+j.toString()+'_answer5_point');
    document.getElementById(answer5pointId).id = 'q' + j.toString() + '_answer5_point';

    document.getElementById(shortAnsPointId).setAttribute("name", 'q'+j.toString()+'_shortanswer_point');
    document.getElementById(shortAnsPointId).id = 'q' + j.toString() + '_shortanswer_point';


    document.getElementById(shortId).setAttribute("name", 'q' + j.toString() + '_type');
    document.getElementById(shortId).id = 'select-short' + j.toString();

    document.getElementById(mcq).id = 'mcq' + j.toString();
    document.getElementById(short).id = 'short-ans' + j.toString();

    document.getElementById(short).style.display = "none";

}

function onMcq1() {
    let id = document.getElementById('qname1');
    console.log(id.innerText);
    document.getElementById('select-mcq'+i.toString()).checked = true;
    let ele = document.getElementsByName('q' + (j - 1).toString()+ '_type');

    for (let i = 0; i < ele.length; i++) {
        if (ele[i].checked) {
            if (ele[i].value === "value_mcq") {
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
    let ele = document.getElementsByName('q1_type');

    for (let i = 0; i < ele.length; i++) {
        if (ele[i].checked) {
            if (ele[i].value === "value_mcq") {
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



