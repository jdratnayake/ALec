<?php

class AttemptPoolQuestionModel extends Database
{
    public function getSessionId($courseId)
    {
        $query = "SELECT active_session_id FROM course WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["active_session_id"];
    }

    public function getSessionDetails($sessionId)
    {
        $query = "SELECT * FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getQuestion($sessionId)
    {
        $query = "SELECT question_no, question_type, question, duration FROM session INNER JOIN session_question ON active_question_id=question_no WHERE session.session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getAnswers($sessionId)
    {
        $query = "SELECT choice_id, choice_name FROM session INNER JOIN session_question ON active_question_id=session_question.question_no INNER JOIN session_answer ON session_question.question_no=session_answer.question_no WHERE session.session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
