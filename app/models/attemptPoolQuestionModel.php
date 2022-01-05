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
        $query = "SELECT question_no, question_type, question, ADDTIME(published_time, duration) AS cancel_time, TIME_TO_SEC(duration) AS total_duration FROM session INNER JOIN session_question ON active_question_id=question_no WHERE session.session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getAnswers($sessionId)
    {
        $query = "SELECT choice_id, choice_name FROM session INNER JOIN session_question ON active_question_id=session_question.question_no INNER JOIN session_answer ON session_question.question_no=session_answer.question_no WHERE session.session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    //Functions that are need for realtime question update
    public function getActiveQuestionId($userId, $sessionId)
    {
        $query = "SELECT active_question_id, question_type FROM session LEFT JOIN session_question ON active_question_id=question_no WHERE session.session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        $row = mysqli_fetch_assoc($result);
        $questionId = $row["active_question_id"];
        $type = $row["question_type"];



        //Atempt Test
        if ($type == "mcq" || $type == "mcq-tf") {
            $query = "SELECT * FROM session_mcq_attempt WHERE question_no='$questionId' AND student_id='$userId'";
        } else if ($type == "open") {
            $query = "SELECT * FROM session_open_attempt WHERE question_no='$questionId' AND student_id='$userId'";
        }
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) != 0) {
            $questionId = "";
        }


        return $questionId;
    }
}
