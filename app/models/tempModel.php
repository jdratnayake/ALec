<?php

class TempModel extends Database
{
    public function getQuizSummary($quizId)
    {
        $query =
            "
SELECT '0-10' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks >= 0 AND marks <= 10
UNION
SELECT '10-20' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 10 AND marks <= 20
UNION
SELECT '20-30' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 20 AND marks <= 30
UNION
SELECT '30-40' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 30 AND marks <= 40
UNION
SELECT '40-50' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 40 AND marks <= 50
UNION
SELECT '50-60' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 50 AND marks <= 60
UNION
SELECT '60-70' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 60 AND marks <= 70
UNION
SELECT '70-80' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 70 AND marks <= 80
UNION
SELECT '80-90' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 80 AND marks <= 90
UNION
SELECT '90-100' AS name, COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId' AND marks > 90 AND marks <= 100
";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function getQuizAttemptCount($quizId)
    {
        $query = "SELECT COUNT(*) AS count FROM quiz_attempt WHERE quiz_id='$quizId'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return mysqli_fetch_assoc($result)["count"];
    }

    public function getQuizQuestionSummary($quizId)
    {
        $query = "SELECT question_no, question, success_rate FROM quiz_question WHERE quiz_id='$quizId' ORDER BY question_no";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }
}
