<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("topic_page") ?>
</head>

<body>

    <?php linkPhp("navigationBarLecturer") ?>

            <div class="topic-container center">
                <h2>SCS2201 Data Structures and Algorithms III</h2>

                <div class="topic">
                    <button class="collapsible">Course Outline</button>
                    <div class="content">
                        <span class="quiz-head">Quizzes</span>
                        <ul>
                            <li>Quiz 1</li>
                            <li>Quiz 2</li>
                            <li>Quiz 3</li>
                        </ul>
                    </div>
                </div>

                <div class="topic">
                    <button class="collapsible">String Matching</button>
                    <div class="content">
                        <ul>
                            <li>Quiz 1</li>
                            <li>Quiz 2</li>
                            <li>Quiz 3</li>
                        </ul>
                    </div>
                </div>

                <div class="topic">
                    <button class="collapsible">Linear Programming</button>
                    <div class="content">
                        <ul>
                            <li>Quiz 1</li>
                            <li>Quiz 2</li>
                            <li>Quiz 3</li>
                        </ul>
                    </div>
                </div>
            </div>



    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("topic_page"); ?>

</body>

</html>