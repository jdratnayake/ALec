<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("1_main") ?>
    <?php linkCSS("2_navigation_bar") ?>
    <?php linkCSS("3_notification") ?>
    <?php linkCSS("4_footer") ?>
    <?php linkCSS("home") ?>
    <?php linkCSS("create_quiz") ?>

    <?php linkJS("create_quiz") ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <div class="form-content">
        <!-- Quiz heading -->
        <header>
            <h1>Create Quiz</h1>
        </header>

        <!-- Quiz basic details -->
        <form class="details" method="post">
            <label for="quiz-name">Quiz name : </label>
            <input type="text" class="text" placeholder="Enter quiz name" name="quiz-name"><br>
            <label for="quiz-dur">Quiz duration : </label>
            <input type="number" class="time" name="quiz-dur" min="0" max="60"> hrs
            <input type="number" class="time" name="quiz-dur" min="0" max="60"> mins
            <input type="number" class="time" name="quiz-dur" min="0" max="60"> secs
        </form>

        <!--    First default question-->
        <div id="form">
            <div class="form-header">
                <h4 id="qname">Question 01</h4>

                <!-- Select question type -->
                <div class="radio-inline">
                    <input type="radio" name="q1_type" value="value_mcq" onchange="return onMcq()" checked>
                    <label for="value_mcq">MCQ</label>
                    <input type="radio" name="q1_type" value="value_short" onchange="return onMcq()">
                    <label for="value_short">Short Answer</label>
                </div>
            </div>
            <div class="question-content " id="mcq">
                <input type="text" class="form-question" placeholder="Enter your question here" name="q1_mcq" id="q1_mcq">

                <!-- Answers list - START -->
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q1_answer1" id="q1_answer1">
                    <select id="q1_answer1_point" class="points" name="q1_answer1_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q1_answer1_point">points</label>
                </div>

                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q1_answer2" id="q1_answer2">
                    <select id="q1_answer2_point" class="points" name="q1_answer2_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q1_answer2_point">points</label>
                </div>

                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q1_answer3" id="q1_answer3">
                    <select id="q1_answer3_point" class="points" name="q1_answer3_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q1_answer3_point">points</label>
                </div>

                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q1_answer4" id="q1_answer4">
                    <select id="q1_answer4_point" class="points" name="q1_answer4_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q1_answer4_point">points</label>
                </div>

                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q1_answer5" id="q1_answer5">
                    <select id="q1_answer5_point" class="points" name="q1_answer5_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q1_answer5_point">points</label>
                </div>
                <!-- Answers list - END -->

            </div>

            <div class="question-content " id="short-ans">
                <input type="text" class="form-question" placeholder="Enter your question here" name="q1_short" id="q1_short">
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter answer here" name="q1_shortanswer" id="q1_shortanswer">
                    <select id="q1_shortanswer_point" class="points" name="q1_shortanswer_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q1_shortanswer_point">points</label>
                </div>
            </div>
        </div>

        <!--    Questions that get newly added-->
        <div id="form1">
            <div class="form-header">
                <h4 id="qname1"></h4>
                <div class="radio-inline">
                    <input type="radio" name="q2_type" value="value_mcq" id="select-mcq2" onchange="onMcq1()" checked>
                    <label for="value_mcq">MCQ</label>
                    <input type="radio" name="q2_type" value="value_short" id="select-short2" onchange="onMcq1()">
                    <label for="value_short">Short Answer</label>
                </div>
            </div>
            <div class="question-content " id="mcq2">
                <input type="text" class="form-question" placeholder="Enter your question here" name="q2_mcq" id="q2_mcq">
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q2_answer1" id="q2_answer1">
                    <select id="q2_answer1_point" class="points" name="q2_answer1_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q2_answer1_point">points</label>
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q2_answer2" id="q2_answer2">
                    <select id="q2_answer2_point" class="points" name="q2_answer2_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q2_answer2_point">points</label>
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q2_answer3" id="q2_answer3">
                    <select id="q2_answer3_point" class="points" name="q2_answer3_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q2_answer3_point">points</label>
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q2_answer4" id="q2_answer4">
                    <select id="q2_answer4_point" class="points" name="q2_answer4_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q2_answer4_point">points</label>
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="q2_answer5" id="q2_answer5">
                    <select id="q2_answer5_point" class="points" name="q2_answer5_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q2_answer5_point">points</label>
                </div>

            </div>
            <!---->
            <div class="question-content " id="short-ans2">
                <input type="text" class="form-question" placeholder="Enter your question here" name="q2_short" id="q2_short">
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter answer here" name="q2_shortanswer" id="q2_shortanswer">
                    <select id="q2_shortanswer_point" class="points" name="q2_shortanswer_point">
                        <option value="100"> 100% </option>
                        <option value="75"> 75% </option>
                        <option value="50"> 50% </option>
                        <option value="25"> 25% </option>
                        <option value=" 0"> 0% </option>
                        <option value="-25"> -25% </option>
                        <option value="-50"> -50% </option>
                        <option value="-75"> -75% </option>
                        <option value="100">-100% </option>
                    </select>
                    <label for="q2_shortanswer_point">points</label>
                </div>
            </div>
        </div>

        <div id="new-question"></div>
        <input type="submit" name="submit" class="add" value="+ Add question" onclick="getQuestions()">
        <div class="button-set">
            <input type="submit" class="finish" value="Save as draft">
            <!-- Trigger/Open The Modal -->
            <input type="submit" id="create-quiz" class="finish" value="Create quiz" onclick="getPopup()">
        </div>
    </div>

    <!-- The Modal -->
    <div id="save-details" class="save-details">

        <!-- Modal content -->
        <div class="save-details-content">
            <div class="save-details-header">
                <span class="close">&times;</span>
                <h2> Quiz details</h2>
            </div>
            <div class="save-details-body">
                <p><strong> Course name : </strong> SCS 2201 <br>
                </p>
                <br>
                <p><strong> Topic : </strong> <br>
                    <input type="radio" id="topic1" name="topic" value="topic1">
                    <label for="topic1">String Matching</label><br>
                    <input type="radio" id="topic2" name="topic" value="topic2">
                    <label for="topic2">Linear Programming</label><br>
                    <input type="radio" id="topic3" name="topic" value="topic3">
                    <label for="topic3">Solving Recurrences</label> <br>
                    <input type="radio" id="optional" name="topic" value="Other">
                    <label for="optional">Other</label>
                    <input type="text" class="topic-text" placeholder="Enter topic name" name="optional"><br>
                </p>

                <input type="submit" name="submit" class="done" value="Done" onclick="loadHomepage()">
            </div>
        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

</body>

</html>