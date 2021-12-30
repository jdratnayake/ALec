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

    public function getCourseId($questionId)
    {
        $query = "SELECT course_id, session_name FROM session INNER JOIN session_question ON session.session_id=session_question.session_id WHERE question_no='$questionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getQuestion($questionId)
    {
        $query = "SELECT question_no, question_type, question, question_count FROM session_question WHERE question_no='$questionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getMcqAnswers($questionId)
    {
        $query = "SELECT choice_id, choice_name, answer_count FROM session_answer WHERE question_no='$questionId' ORDER BY choice_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getOpenAnswers($questionId)
    {
        $query = "SELECT answer, COUNT(answer) AS answer_count FROM session_open_attempt WHERE question_no='$questionId' GROUP BY answer ORDER BY answer_count, answer";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
