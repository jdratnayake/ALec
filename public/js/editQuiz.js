let count = 1;

$(document).ready(function () {

    // Add new question
    $("#add-question").click(function () {
        $(".all-questions").append(questionType + getMcqQuestion());
    });

    // Change the question structure acording to the question type
    $("body").on("change", "input[name=type]:radio", function () {

        const value = $(this).val();

        if (value === "value_mcq") {
            $(this).closest('.new-question-container').find(".question-container").remove();

            const num = parseInt($("#new-question-count").val()) - 1;
            $("#new-question-count").val(num);

            $(this).closest('.new-question-container').append(getMcqQuestion());;

        } else if (value === "value_short") {
            $(this).closest('.new-question-container').find(".question-container").remove();

            const num = parseInt($("#new-question-count").val()) - 1;
            $("#new-question-count").val(num);

            $(this).closest('.new-question-container').append(getShortAnswer());;

        }
    });
});

// Hold question type structure
const questionType =
    `
<div class="new-question-container">   
    <div class="radio-inline">
        <input type="radio" name="type" value="value_mcq" class="mcq option-input radio" checked="checked">
        <label>MCQ</label>
        <input type="radio" name="type" value="value_short" class="short option-input radio">
        <label> Short Answer</label>
    </div> 
`;

// Return mcq structure
function getMcqQuestion() {
    const num = parseInt($("#new-question-count").val()) + 1;

    $("#new-question-count").val(num);

    return `
    <li class="question-container">

        <input type="hidden" name="${num}_type" value="mcq">

        <div class="single-choice">

            <div class="question">
                <input type="text" name="q_${num}">
            </div>

            <div class="button-set">
                <button type="button" class="dlt" onclick="deleteNewQuestion(this)">
                    <i class="fa fa-trash" aria-hidden="true"></i> Delete question
                </button>
            </div>

            <input type="checkbox" class="check" name="q_${num}_type" value="true">
            <label>multiple answers</label><br>

            <ol>
                <li class="answer">
                    <input type="text" name="q_${num}_choice_1">
                    <input type="text" value="0%" class="points" name="q_${num}_points_1">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </li>
                <li class="answer">
                    <input type="text" name="q_${num}_choice_2">
                    <input type="text" value="0%" class="points" name="q_${num}_points_2">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </li>
                <li class="answer">
                    <input type="text" name="q_${num}_choice_3">
                    <input type="text" value="0%" class="points" name="q_${num}_points_3">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </li>
                <li class="answer">
                    <input type="text" name="q_${num}_choice_4">
                    <input type="text" value="0%" class="points" name="q_${num}_points_4">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </li>
                <li class="answer">
                    <input type="text" name="q_${num}_choice_5">
                    <input type="text" value="0%" class="points" name="q_${num}_points_5">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </li>
            </ol>
        </div>
    </li>
</div>      
`;
}

// Return short answer structure
function getShortAnswer() {
    const num = parseInt($("#new-question-count").val()) + 1;

    $("#new-question-count").val(num);

    return `
    <li class="question-container">
        <!-- Question type -->
        <input type="hidden" name="${num}_type" id="question-type" value="short ans">
    
        <div class="short-ans">
    
            <div class="question">
                <input type="text" name="q_${num}">
            </div>
    
            <div class="button-set">
                <button type="button" class="dlt" onclick="deleteNewQuestion(this)">
                    <i class="fa fa-trash" aria-hidden="true"></i>Delete question
                </button>
            </div>
    
            <ul>
                <li class="answer short-input" id="short-answer-box">
                    <input type="text" name="q_${num}_choice_1">
                    <input type="text" value="100%" class="points" disabled name="q_${num}_points_1">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </li>
            </ul>
        </div>
    </li>
</div> 
    `;
}

// Delete a new question
function deleteNewQuestion(e) {
    const num = parseInt($("#new-question-count").val()) - 1;

    $("#new-question-count").val(num);

    $(e).closest('.new-question-container').remove();
}

// Delete a pre exist question
function deleteOldQuestion(e) {
    $(e).closest('.question-container').remove();
}

// Delete a pre exist answer
function deleteOldAnswer(e) {
    $(e).closest('.answer').remove();
}