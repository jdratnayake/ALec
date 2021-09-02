<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1, maximum-scale=1">
    <title>Create Quiz</title>
    <link rel="stylesheet" href="createquiz.css">
    <script src="createquiz.js"></script>
</head>
<body>
<div class="sidebar">
</div>
<div class="quiz-content">
    <header><h1>Create Quiz</h1></header>
    <div class="form-content">
        <!--                <h1>Create Quiz</h1>-->
        <form class="details" method="post">
            <input type="text" class="text" placeholder="Quiz name"><br>
            <input type="text" class="text" placeholder="No.of questions" name="no-of-questions">
            <button type="submit" value="Get" class="button get">Get</button>
        </form>

        <div class="form">
            <div class="form-header">
                <h4 class="qname"><span class="title"> Question</span>
                    <a href="#mcq" class="qtype" id="choicemcq" onclick="return activeMCQ()">MCQ</a>
                    <a href="#shortans" class="qtype" id="choiceshort" onclick="return activeSANS()">SHORT ANSWER</a>
                </h4>

                <div class="question-content " id="mcq">
                    <input type="text" class="form-question" placeholder="Enter your question here"><br>
                    <?php
                    for ($i = 1; $i < 5; $i++) {
                        ?>
                        <div class="answer">
                            <input type="text" class="form-answer" placeholder="Enter your answer here"><br>
                            <input type="number" class="points" id="quantity" name="quantity" min="-100" max="100">points<br>
                        </div>
                        <?php
                    }
                    ?>
                </div>
                <div class="question-content " id="shortans">
                    <input type="text" class="form-question" placeholder="Enter your question here"><br>
                    <input type="text" class="form-shortanswer" placeholder="Enter answer here"><br>
                </div>
            </div>
        </div>


        <div class="buttonset">
            <button class="finish"> Save</button>
            <button class="finish"> Create</button>
        </div>

    </div>

</div>

</body>
</html>