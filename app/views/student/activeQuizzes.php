<div class="active-quizzes-container">
    <ul class="quiz-table">
        <h3>Active quizzes</h3>
        <li class="table-header">
            <div class="col col-1">Quiz topic</div>
            <div class="col col-2">Start time</div>
            <div class="col col-3">End time</div>
            <div class="col col-4">Duration</div>
        </li>

        <li class="table-row">
            <div class="col col-1" data-label="Quiz topic">
                <a href="#" id="topic">Requirements Engineering</a>
            </div>
            <div class="col col-2" data-label="Start time">
                <p>10.30 am</p>
            </div>
            <div class="col col-3" data-label="End time">
                <p>11.30 am</p>
            </div>
            <div class="col col-4" data-label="Duration">
                <p>01 hrs: 00 mins : 00 secs</p>
            </div>
        </li>
        <li class="table-row">
            <div class="col col-1" data-label="Quiz topic">
                <a href="#">OS Quiz - 01</a>
            </div>
            <div class="col col-2" data-label="Start time">
                <p>10.30 am</p>
            </div>
            <div class="col col-3" data-label="End time">
                <p>11.30 am</p>
            </div>
            <div class="col col-4" data-label="Duration">
                <p>01 hrs: 00 mins : 00 secs</p>
            </div>
        </li>
    </ul>
</div>

<!-- Modal content -->
<div class="modal" id="confirm-quiz-model">
    <div class="modal-content">
        <div class="modal-header">
            <span class="close" id="close">&times;</span>
            <h3>Requirements Engineering Quiz</h3>
        </div>
        <div class="modal-body">
            <div class="description-content">
                <p class="description">
                    This quiz is open book, open notes
                    and covers Chapters 1, 2 and 3. Follow the instructions carefully
                    before taking the quiz.
                </p>
                <p class="description">
                    Click on the <strong>Attempt quiz now</strong> button below to begin the quiz.
                    When you have answered all the questions, click on <strong>Submit all and finish</strong>
                </p>
            </div>

            <input id="attempt-btn" type="button" value="Attempt now" class="btn">
        </div>
    </div>
</div>
