class UI {
    //Add Question
    static addQuestion() {
        let id = document.getElementById('form');
        let row = document.createElement('div');
        id.append(row);
        row.setAttribute('class', 'question');
        row.innerHTML = `
<!--            <span class="close rounded black close-btn"></span>-->
            <button class="close close-btn finish"><i class="fa fa-times" aria-hidden="true"></i>Remove question</button>
            <div class="form-header">
                <h4 class="heading">Question 1</h4> 

                <input type="hidden" name="type" value="1" class="hidden_quiz_no"> 

                <!-- Select question type -->
                <div class="radio-inline">
                <input type="radio" value="value_mcq" class="mcq option-input radio" checked="checked">
                <label>MCQ</label>
                <input type="radio" value="value_short" class="short option-input radio">
                <label> Short Answer</label>
   
                </div> 
            </div>  
                    
            <!-- Question type - MCQ -->
            <div class="question-content mcq" id="mcq_1">
                <div class="form-group">
                    <textarea class="form-control mcq" rows="4" placeholder="Enter your question here"></textarea>
                </div>
        
<!--            check whether multiple answers or not-->
                <input type="hidden" class="check_hidden" value ="false">
                <input type="checkbox" class="check" value = "true">
                <label>multiple answers</label><br>
                
                <!-- Answers list - START -->
                <!-- Answer 01 -->
                <div class="form-group">
                        <input type="text" class="form-answer mcq1" placeholder="Enter your answer here">
                        <select class="points mcq1">
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
                    <input type="text" class="form-answer mcq2" placeholder="Enter your answer here">
                    <select class="points mcq2">
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
                    <input type="text" class="form-answer mcq3" placeholder="Enter your answer here">
                    <select class="points mcq3">
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
                    <input type="text" class="form-answer mcq4" placeholder="Enter your answer here">
                    <select class="points mcq4">
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
                    <input type="text" class="form-answer mcq5" placeholder="Enter your answer here">
                    <select class="points mcq5">
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
            <div class="question-content short-ans" id="shortans_1">
                <div class="form-group">
                    <textarea class="form-control short" placeholder="Enter your question here" rows="5"></textarea>
                </div>

                <div class="form-group">
                    <input type="text" class="form-answer short" placeholder="Enter answer here">
                    <select class="points short">
                        <option value="100"> 100% </option>
                    </select>
                    <label>points</label>
                </div>
            </div>
         
         `;
        for (let i = 1; i <= document.getElementsByClassName('question').length; i++) {
            let el = document.getElementsByClassName('question')[i - 1];
            el.setAttribute('id', i);
            UI.changeAttributes(i);
        }
    }

    //Remove Question
    static removeQuestion(id) {
        if (id.classList.contains('close-btn')) {
            id.parentElement.remove();
        }
        let len = document.getElementsByClassName('question').length;
        for (let i = 1; i <= len; i++) {
            let el = document.getElementsByClassName('question')[i - 1];
            el.setAttribute('id', i);
            UI.changeAttributes(i);
        }
    }

    //Change Attributes
    static changeAttributes(i) {
        //Change Question no txt
        document.querySelectorAll('h4.heading')[i - 1].innerHTML = 'Question ' + i;
        //Set hidden attribute value
        document.querySelectorAll('.hidden_quiz_no')[i - 1].setAttribute('value', i);
        //Set Radio button values
        document.querySelectorAll('.radio-inline .mcq')[i - 1].setAttribute('name', 'q' + i + '_type');
        document.querySelectorAll('.radio-inline .short')[i - 1].setAttribute('name', 'q' + i + '_type');
        document.querySelectorAll('.question-content.mcq')[i - 1].setAttribute('id', 'mcq_' + i);
        document.querySelectorAll('.question-content.short-ans')[i - 1].setAttribute('id', 'shortans_' + i);
        //Set MCQ and Short Ans names
        document.querySelectorAll('textarea.mcq')[i - 1].setAttribute('name', 'q' + i + '_mcq');
        document.querySelectorAll('textarea.short')[i - 1].setAttribute('name', 'q' + i + '_short');
        //mcq Answers Change names
        //Ans 01
        document.querySelectorAll('.form-answer.mcq1')[i - 1].setAttribute('name', 'q' + i + '_answer1');
        document.querySelectorAll('.points.mcq1')[i - 1].setAttribute('name', 'q' + i + '_answer1_point');
        //Ans 02
        document.querySelectorAll('.form-answer.mcq2')[i - 1].setAttribute('name', 'q' + i + '_answer2');
        document.querySelectorAll('.points.mcq2')[i - 1].setAttribute('name', 'q' + i + '_answer2_point');
        //Ans 03
        document.querySelectorAll('.form-answer.mcq3')[i - 1].setAttribute('name', 'q' + i + '_answer3');
        document.querySelectorAll('.points.mcq3')[i - 1].setAttribute('name', 'q' + i + '_answer3_point');
        //Ans 04
        document.querySelectorAll('.form-answer.mcq4')[i - 1].setAttribute('name', 'q' + i + '_answer4');
        document.querySelectorAll('.points.mcq4')[i - 1].setAttribute('name', 'q' + i + '_answer4_point');
        //Ans 05
        document.querySelectorAll('.form-answer.mcq5')[i - 1].setAttribute('name', 'q' + i + '_answer5');
        document.querySelectorAll('.points.mcq5')[i - 1].setAttribute('name', 'q' + i + '_answer5_point');
        //Short Ans
        document.querySelectorAll('.form-answer.short')[i - 1].setAttribute('name', 'q' + i + '_shortanswer');
        document.querySelectorAll('.points.short')[i - 1].setAttribute('name', 'q' + i + '_shortanswer_point');

        //Multiple Choice
        document.querySelectorAll('.check_hidden')[i - 1].setAttribute('name', 'quiz_' + i + '_check');
        document.querySelectorAll('.check')[i - 1].setAttribute('name', 'quiz_' + i + '_check');

        document.querySelectorAll('.check_hidden')[i - 1].disabled = !!document.querySelectorAll('.check')[i - 1].checked;
    }
}

//Initialize First Question
UI.addQuestion();

//Event Listener to Add Question
document.getElementById('add-question').addEventListener('click', () => {
    UI.addQuestion();
}
);
//Event Listener to Remove Question
document.getElementById('form').addEventListener('click', (e) => {
    UI.removeQuestion(e.target);
}
);
//Event Listener to Toggle between MCQ and Short Ans
document.querySelector('#form').addEventListener('click', (e) => {
    if (e.target.classList.contains('mcq')) {
        document.getElementById('shortans_' + e.target.parentElement.parentElement.parentElement.id).style.display = "none";
        document.getElementById('mcq_' + e.target.parentElement.parentElement.parentElement.id).style.display = "block";
    } else if (e.target.classList.contains('short')) {
        document.getElementById('mcq_' + e.target.parentElement.parentElement.parentElement.id).style.display = "none";
        document.getElementById('shortans_' + e.target.parentElement.parentElement.parentElement.id).style.display = "block";
    }
}
);