<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("attempt_quiz") ?>

</head>

<body>
    <?php linkPhp("navigationBarStudent"); ?>

    <div class="form-content">
        <!-- Quiz heading -->
        <header><?php echo $data["quizDetails"]["course_name"]; ?></header>

        <div class="quiz-name">
            <h2><?php echo $data["quizDetails"]["quiz_name"]; ?></h2>

            <input type="hidden" id="close-time" value="<?php echo $data["closeTime"]; ?>">
            <span id="count-down-time"></span>
        </div>

        <!-- Quiz basic details -->
        <form class="details" method="post" id="form" action="<?php echo BASEURL . '/attemptQuiz/submit/' . $data["quizDetails"]["quiz_id"]; ?>">
            <ol class="all-questions">
                <?php
                //Quiz array - Multi Dementional
                $quizArray = array();

                while ($questionRow = mysqli_fetch_assoc($data["questions"])) {
                    //Question array
                    $questionArray = array();

                    $question = str_replace("'", "&#39;", $questionRow["question"]);
                    $question = str_replace('"', "&#34;", $question);

                    //Push the question, question id and type of the question to the array
                    array_push($questionArray, $question);
                    array_push($questionArray, $questionRow["question_no"]);
                    array_push($questionArray, $questionRow["question_type"]);

                    //choice array
                    $choiceArray = array();

                    $choiceCount = $questionRow["count"];

                    for ($i = 0; $i < $choiceCount; $i++) {
                        $choiceRow = mysqli_fetch_assoc($data["choices"]);

                        $choiceId = $choiceRow["choice_id"];
                        $choice = $choiceRow["choice_name"];

                        array_push($choiceArray, array($choiceId, $choice));
                    }

                    array_push($questionArray, $choiceArray);
                    array_push($quizArray, $questionArray);
                }

                //Question summary string
                $questionIdString = "";
                $questionTypeString = "";

                //Shuffle part

                //Shuffle questions
                shuffle($quizArray);

                foreach ($quizArray as $questionObject) {
                    echo "<li class='question-container'>";

                    $question = $questionObject[0];
                    $questionId = $questionObject[1];
                    $type = $questionObject[2];
                    $choiceArray = $questionObject[3];

                    $questionIdString .= "_" . $questionId;
                    $questionTypeString .= "_" . $type;

                    //Shiffle choices
                    shuffle($choiceArray);

                    if ($type == "mcq-s") {
                        echo
                        "
                        <div class='single-choice'>
                        <div class='question'>
                            {$question}
                        </div>
                        <ol>
                        ";

                        foreach ($choiceArray as $choiceObject) {
                            $id = $choiceObject[0];
                            $choice = $choiceObject[1];

                            echo
                            "
                            <div class='answer'>
                                <input type='radio' id='{$id}' name='{$questionId}' value='{$id}'>
                                <label for='{$id}'>
                                    <li>{$choice}</li>
                                </label>
                            </div>
                            ";
                        }

                        echo
                        "
                        </ol>
                        </div>
                        ";
                    } else if ($type == "mcq-m") {
                        echo
                        "
                        <div class='multiple-choice'>
                        <div class='question'>
                            {$question}
                        </div>
                        <ol>
                        ";

                        foreach ($choiceArray as $choiceObject) {
                            $id = $choiceObject[0];
                            $choice = $choiceObject[1];

                            echo
                            "
                            <div class='answer'>
                                <input type='checkbox' id='{$id}' name='{$id}' value='{$id}'>
                                <label for='{$id}'>
                                    <li>{$choice}</li>
                                </label>
                            </div>
                            ";
                        }

                        echo
                        "
                        </ol>
                        </div>
                        ";
                    } else if ($type == "short ans") {
                        $id = $choiceArray[0][0];

                        echo
                        "
                        <div class='short-ans'>
                            <label for='{$id}' class='question'>
                            {$question}
                            </label>
                            <input type='text' id='{$id}' name='$questionId'>
                        </div>
                        ";
                    }

                    echo "</li>";
                }

                echo "<input type='hidden' name='questionIdString' value='" . $questionIdString . "'>";
                echo "<input type='hidden' name='questionTypeString' value='" . $questionTypeString . "'>";

                ?>

            </ol>

            <button type="submit" class="done" id="submit-btn">Submit</button>

        </form>

        <!--quizCompletedResult-->
        <div class="quizCompleted has-text-centered" id="result">

            <!-- quizCompletedIcon: Achievement Icon -->
            <span class="icon">
                <!--                <i class="fa" :class="score()>3?'fa-check-circle-o is-active':'fa-times-circle'"></i>-->
                <!--      if(score<4): <i class="fa fa-times-circle is-active"></i>-->
                <!--            else-->
                <i class="fa fa-check-circle-o is-active"></i>
            </span>

            <!--resultTitleBlock-->
            <h2 class="title">
                You did a good job!
                <!--            You did {{ (score()>7?'an amazing':(score()<4?'a poor':'a good')) }} job!-->
            </h2>
            <p class="subtitle">
                Total score: 6/10
                <!--            Total score: {{ score() }} / {{ quiz.questions.length }}-->
            </p>
            <br>
            <!--/resultTitleBlock-->

        </div>
        <!--/quizCompetedResult-->

    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("attemptQuiz"); ?>

</body>

</html>