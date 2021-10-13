let count = 1;

$(document).ready(function () {


    $("#add-question").click(function () {
        $(".all-questions").append(questionType + mcqQuestions);
    });

    $("body").on("change", "input[name=type]:radio", function () {

        const value = $(this).val();

        if (value == "value_mcq") {
            $(".question-container").last().remove();
            $(".all-questions").append(mcqQuestions);
        } else if (value == "value_short") {
            $(".question-container").last().remove();
            $(".all-questions").append(shortAnswer);
        }
    });

    // $('input[type=radio][name=type]').change(function () {
    //     console.log("Hi");
    // });

    // $('input[name="type"]').change(function () {
    //     alert('Radio Box has been changed!');
    // });
});

const questionType =
    `
<div class="radio-inline">
    <input type="radio" name="type" value="value_mcq" class="mcq option-input radio" checked="checked">
    <label>MCQ</label>
    <input type="radio" name="type" value="value_short" class="short option-input radio">
    <label> Short Answer</label>
</div> 
`;

const mcqQuestions =
    `
<li class="question-container">

    <input type="hidden" id="question-type" value="mcq">

    <div class="single-choice">

        <div class="question">
            <input type="text" value="Which of the following is not an operating system?">
        </div>

        <div class="button-set">
            <button type="button" class="dlt">
                <i class="fa fa-trash" aria-hidden="true"></i> Delete question
            </button>
        </div>

        <input type="checkbox" class="check" value="true">
        <label>multiple answers</label><br>

        <ol>
            <li class="answer">
                <input type="text" value="Windows">
                <input type="text" value="0%" class="points">
                <i class="fa fa-times" aria-hidden="true"></i>
            </li>
            <li class="answer">
                <input type="text" value="Linux">
                <input type="text" value="0%" class="points">
                <i class="fa fa-times" aria-hidden="true"></i>
            </li>
            <li class="answer">
                <input type="text" value="Oracle">
                <input type="text" value="0%" class="points">
                <i class="fa fa-times" aria-hidden="true"></i>
            </li>
            <li class="answer">
                <input type="text" value="DOS">
                <input type="text" value="0%" class="points">
                <i class="fa fa-times" aria-hidden="true"></i>
            </li>
            <li class="answer">
                <input type="text" value="">
                <input type="text" value="0%" class="points">
                <i class="fa fa-times" aria-hidden="true"></i>
            </li>
        </ol>
    </div>
</li>
`;

const shortAnswer =
    `
<li class="question-container">
    <!-- Question type -->
    <input type="hidden" id="question-type" value="short">

    <div class="short-ans">

        <div class="question">
            <input type="text" value="When was the first operating system developed?">
        </div>

        <div class="button-set">
            <button type="button" class="dlt">
                <i class="fa fa-trash" aria-hidden="true"></i>Delete question
            </button>
        </div>

        <ul>
            <li class="answer short-input" id="short-answer-box">
                <input type="text" value="1950">
                <input type="text" value="100%" class="points">
                <i class="fa fa-times" aria-hidden="true"></i>
            </li>
        </ul>
    </div>
</li>
`;