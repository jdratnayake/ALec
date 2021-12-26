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
}
