<?php
class DisplayPollModel extends Database
{
    public function insertMcqAttempt($userId, $questionId, $answerId)
    {
        $query = "INSERT INTO session_mcq_attempt(student_id, question_no, choice_id) VALUES('$userId', '$questionId', '$answerId')";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function insertOpenAttempt($userId, $questionId, $answer)
    {
        $query = "INSERT INTO session_open_attempt(student_id, question_no, answer) VALUES('$userId', '$questionId', '$answer')";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function getQuestion($questionId)
    {
        $query = "SELECT question_no, question_type, question FROM session_question WHERE question_no='$questionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getAnswers($questionId)
    {
        $query = "SELECT choice_id, choice_name FROM session_answer WHERE question_no='$questionId' ORDER BY choice_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
