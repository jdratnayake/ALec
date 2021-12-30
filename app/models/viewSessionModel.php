<?php

class ViewSessionModel extends Database
{
    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name, status, DATE(create_date), course_name FROM session INNER JOIN course ON session.course_id=course.course_id WHERE session_id='$sessionId'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return mysqli_fetch_assoc($result);
    }

    public function setStatus($sessionId, $status)
    {
        $query = "UPDATE session SET status='$status' WHERE session_id='$sessionId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function setQuestionStatus($sessionId, $questionId, $status)
    {
        if ($status == "T") {
            $query = "UPDATE session_question SET status='F' WHERE session_id='$sessionId'";
            mysqli_query($GLOBALS["db"], $query);

            $query = "UPDATE session_question SET status='T', published_time=NOW() WHERE session_id='$sessionId' AND question_no='$questionId'";
            mysqli_query($GLOBALS["db"], $query);

            //Set the schedule
            $this->setSchedule($sessionId, $questionId);
        } else if ($status == "F") {
            $query = "UPDATE session_question SET status='F', published_time=NULL WHERE session_id='$sessionId' AND question_no='$questionId'";
            mysqli_query($GLOBALS["db"], $query);

            //Delete the schedule
            $this->dropSchedule($sessionId, $questionId);
        }
    }

    public function setSchedule($sessionId, $questionId)
    {
        //Get duration
        $query = "SELECT TIME_TO_SEC(duration) AS duration FROM session_question WHERE question_no='$questionId'";
        $result = mysqli_query($GLOBALS["db"], $query);
        $duration = mysqli_fetch_assoc($result)["duration"];

        //Set schedule
        $query =
            "
        CREATE EVENT session_question_event_{$sessionId}_{$questionId}
        ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL $duration SECOND
        DO
        UPDATE session_question SET status='F' WHERE question_no='$questionId'
        ";
        mysqli_query($GLOBALS["db"], $query);
    }

    public function dropSchedule($sessionId, $questionId)
    {
        $query = "DROP EVENT IF EXISTS session_question_event_{$sessionId}_{$questionId}";
        mysqli_query($GLOBALS["db"], $query);
    }

    public function getSessionQuestions($sessionId)
    {
        $query = "SELECT question_no, question, status FROM session_question WHERE session_id='$sessionId'";

        return mysqli_query($GLOBALS["db"], $query);
    }

    public function getSessionForumQuestions($sessionId)
    {
        $query = "SELECT question_id, question, points FROM session_forum_question WHERE session_id='$sessionId'";

        return mysqli_query($GLOBALS["db"], $query);
    }
}
