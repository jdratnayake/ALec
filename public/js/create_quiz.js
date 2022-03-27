let questionCount = 0;

let addQuestion;

$(document).ready(function () {
    //Initialize First Question
    addQuestion();

    //Event Listener to Add Question
    $("#add-question").click(function () {
        addQuestion();
    });

    //Event Listener to Remove Question
    $(document).on('click', '.close-btn', function () {
        questionCount--;
        $(this).parent().parent().parent().remove();
    });

    //Event Listener to Toggle between MCQ and Short Ans
    $(document).on('click', '.option-input', function () {
        let preQuestionType = $(this).parent().children(":first").val();
        let questionType = $(this).val();

        if (preQuestionType !== questionType) {
            if (questionType == "value_mcq") {
                $(this).parent().parent().next().show();
                $(this).parent().parent().next().next().hide();
            } else if (questionType == "value_short") {
                $(this).parent().parent().next().hide();
                $(this).parent().parent().next().next().show();
            }

            $(this).parent().children(":first").val(questionType)
        }
    });
})

// Return question string
addQuestion = function () {
    questionCount++;
    let htmlContent = `
<div class='question' id='${questionCount}'>

            <div class="form-header">
                
                <h4 class="heading">Question ${questionCount}</h4> 

                <input type="hidden" name="type" value="${questionCount}" class="hidden_quiz_no"> 

                <!-- Select question type -->
                <div class="radio-inline">
                    <input type="hidden" value="value_mcq">

                    <input type="radio" name="q${questionCount}_type" value="value_mcq" class="mcq option-input radio" id="mcq_${questionCount}" checked/>
                    <label for="mcq_${questionCount}">MCQ</label>
                    
                    <input type="radio" name="q${questionCount}_type" value="value_short" class="short option-input radio" id="short_${questionCount}">
                    <label for="short_${questionCount}">Short Answer</label>
   
                </div>
                
                <span class="close">
                    <button type="button" class="close-btn finish">
                        <i class="fa fa-times" aria-hidden="true"></i>
                        Remove Question
                    </button>
                </span>
            </div>  
                    
            <!-- Question type - MCQ -->
            <div class="question-content mcq" id="mcq_${questionCount}">
                <div class="form-group">
                    <textarea name="q${questionCount}_mcq" class="form-control mcq" rows="4" placeholder="Enter your question here"></textarea>
                </div>
        
<!--            check whether multiple answers or not-->
                <input type="hidden" class="check_hidden" name="quiz_${questionCount}_check" value ="false">
                <input type="checkbox" class="check" name="quiz_${questionCount}_check" value = "true">
                <label>multiple answers</label><br>
                
                <!-- Answers list - START -->
                <!-- Answer 01 -->
                <div class="form-group">
                        <input type="text" class="form-answer mcq1" name="q${questionCount}_answer1" placeholder="Enter your answer here">
                    <select class="points mcq1" name="q${questionCount}_answer1_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="33"> 33.33% </option>
                        <option value="25"> 25% </option>
                        <option value="20"> 20% </option>
                        <option value=" 0" selected> 0% </option>
                        <option value="-20"> -20% </option>
                        <option value="-25"> -25% </option>
                        <option value="-33"> -33.33% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="-100">-100% </option>
                    </select>
                    <label>points</label>
                </div>
        
                <!-- Answer 02 -->
                <div class="form-group">
                    <input type="text" class="form-answer mcq2" name="q${questionCount}_answer2" placeholder="Enter your answer here">
                    <select class="points mcq2" name="q${questionCount}_answer2_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="33"> 33.33% </option>
                        <option value="25"> 25% </option>
                        <option value="20"> 20% </option>
                        <option value=" 0" selected> 0% </option>
                        <option value="-20"> -20% </option>
                        <option value="-25"> -25% </option>
                        <option value="-33"> -33.33% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="-100">-100% </option>
                    </select>
                    <label>points</label>
                </div>
        
                <!-- Answer 03 -->
                <div class="form-group">
                    <input type="text" class="form-answer mcq3" name="q${questionCount}_answer3" placeholder="Enter your answer here">
                    <select class="points mcq3" name="q${questionCount}_answer3_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="33"> 33.33% </option>
                        <option value="25"> 25% </option>
                        <option value="20"> 20% </option>
                        <option value=" 0" selected> 0% </option>
                        <option value="-20"> -20% </option>
                        <option value="-25"> -25% </option>
                        <option value="-33"> -33.33% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="-100">-100% </option>
                    </select>
                    <label>points</label>
                </div>
        
                <!-- Answer 04 -->
                <div class="form-group">
                    <input type="text" class="form-answer mcq4" name="q${questionCount}_answer4" placeholder="Enter your answer here">
                    <select class="points mcq4" name="q${questionCount}_answer4_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="33"> 33.33% </option>
                        <option value="25"> 25% </option>
                        <option value="20"> 20% </option>
                        <option value=" 0" selected> 0% </option>
                        <option value="-20"> -20% </option>
                        <option value="-25"> -25% </option>
                        <option value="-33"> -33.33% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="-100">-100% </option>
                    </select>
                    <label>points</label>
                </div>
        
                <!-- Answer 05 -->
                <div class="form-group">
                    <input type="text" class="form-answer mcq5" name="q${questionCount}_answer5" placeholder="Enter your answer here">
                    <select class="points mcq5" name="q${questionCount}_answer5_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="33"> 33.33% </option>
                        <option value="25"> 25% </option>
                        <option value="20"> 20% </option>
                        <option value=" 0" selected> 0% </option>
                        <option value="-20"> -20% </option>
                        <option value="-25"> -25% </option>
                        <option value="-33"> -33.33% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="-100">-100% </option>
                    </select>
                    <label>points</label>
                </div>
                <!-- Answers list - END -->
            </div>
        
        <!-- Question type - Short answer -->
            <div class="question-content short-ans" id="short-ans_${questionCount}">
                <div class="form-group">
                    <textarea name="q${questionCount}_short" class="form-control short" placeholder="Enter your question here" rows="5"></textarea>
                </div>

                <div class="form-group">
                    <input type="text" class="form-answer short" name="q${questionCount}_shortanswer" placeholder="Enter answer here">
                    <select class="points short" name="q${questionCount}_shortanswer_point">
                        <option value="100"> 100% </option>
                    </select>
                    <label>points</label>
                </div>
            </div>
</div>
         `;

    $("#form").append(htmlContent);
}