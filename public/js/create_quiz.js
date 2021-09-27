class UI {

    static close(i){
        const question = document.getElementById("question_"+i);
        question.style.display = "none";
    }

    static addQuestion(i) {
        const list = document.querySelector('form #form');
        const row = document.createElement('div');
        row.setAttribute('id', 'question_'+i);
        row.setAttribute('class', 'question');

        row.innerHTML = `
            <div class="form-header">
            
<!--                close button-->
            <button class="close-btn" onclick="close()"><i class="fa fa-close"></i></button>
                
                <h4>Question ${i}</h4>
                <input type="hidden" name="type" value="${i}">
                
                <!-- Select question type -->
                <div class="radio-inline" id=${i}>
                    <input type="radio" value="value_mcq" name="q${i}_type" checked class="mcq">
                    <label for="value_mcq">MCQ</label>
                    <input type="radio" value="value_short" name="q${i}_type" class="short">
                    <label for="value_short">Short Answer</label>
                </div>
            </div>

<!--            Question type - MCQ-->
            <div class="question-content" id="mcq_${i}">
                <div class="form-group">
                    <textarea class="form-control" rows="4" name="q${i}_mcq" placeholder="Enter your question here"></textarea>
                </div>

                <!-- Answers list - START -->
                <div class="form-group">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q${i}_answer1">
                    <select id="q${i}_answer1_point" class="points" name="q1_answer1_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0" selected="selected"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q${i}_answer1_point">points</label>
                </div>

                <div class="form-group">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q${i}_answer2">
                    <select id="q${i}_answer2_point" class="points" name="q1_answer2_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0" selected="selected"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q${i}_answer2_point">points</label>
                </div>

                <div class="form-group">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q${i}_answer3">
                    <select id="q${i}_answer3_point" class="points" name="q1_answer3_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0" selected="selected"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q${i}_answer3_point">points</label>
                </div>

                <div class="form-group">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q${i}_answer4">
                    <select id="q${i}_answer4_point" class="points" name="q1_answer4_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0" selected="selected"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q${i}_answer4_point">points</label>
                </div>

                <div class="form-group">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q${i}_answer5">
                    <select id="q${i}_answer5_point" class="points" name="q1_answer5_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0" selected="selected"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q${i}_answer5_point">points</label>
                </div>
                <!-- Answers list - END -->
            </div>

<!--            Question type - Short answer-->
            <div class="question-content short-ans" id="shortans_${i}">
                <div class="form-group">
                    <textarea class="form-control" placeholder="Enter your question here" name="q${i}_short" rows="5"></textarea>
                </div>
                <div class="form-group">
                    <input type="text" class="form-answer" placeholder="Enter answer here" name="q${i}_shortanswer">
                    <select id="q${i}_shortanswer_point" class="points" name="q${i}_shortanswer_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0" selected="selected"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q${i}_shortanswer_point">points</label>
                </div>
            </div>
        `;
        list.append(row);
    }
}
let i = 1;

UI.addQuestion(i);

document.querySelector('#add-question').addEventListener('click', () => {
    i++;
    UI.addQuestion(i);
});


document.querySelector('form').addEventListener('click', (e) => {
    if(e.target.classList.contains('mcq') === true){
        document.getElementById('shortans_'+e.target.parentElement.id).style.display = "none";
        document.getElementById('mcq_'+e.target.parentElement.id).style.display = "block";
    }
    else if(e.target.classList.contains('short') === true){
        document.getElementById('mcq_'+e.target.parentElement.id).style.display = "none";
        document.getElementById('shortans_'+e.target.parentElement.id).style.display = "block";
    }
});

