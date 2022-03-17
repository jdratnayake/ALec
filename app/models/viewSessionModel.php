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
        if ($status == "F") {
            $query = "UPDATE session SET status='$status', active_question_id=NULL WHERE session_id='$sessionId'";
        } else {
            $query = "UPDATE session SET status='$status' WHERE session_id='$sessionId'";
        }

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
        $query = "SELECT question_id, question, points FROM session_forum_question WHERE session_id='$sessionId' ORDER BY points DESC, post_time LIMIT 2";

        return mysqli_query($GLOBALS["db"], $query);
    }

    public function deleteSession($sessionId)
    {
        $query = "DELETE FROM session WHERE session_id='$sessionId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function deleteSessionQuestion($questionId)
    {
        $query = "DELETE FROM session_question WHERE question_no='$questionId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function getForumQuestionDetails($sessionId)
    {
        $query = "SELECT session_forum_question.question_id, session_forum_question.student_id, question, points, TIME_FORMAT(post_time, '%h.%i %p') AS post_time, random_status, CONCAT(first_name, ' ', last_name) AS name FROM session_forum_question INNER JOIN user ON student_id=user.user_id INNER JOIN student ON student_id=student.user_id WHERE session_id='$sessionId' ORDER BY resolved_status ASC, points DESC, post_time";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getQuestionIds($sessionId)
    {
        $query = "SELECT question_id FROM session_forum_question WHERE session_id='$sessionId' ORDER BY points DESC, post_time";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getSessionActiveQuestion($sessionId)
    {
        $query = "SELECT active_question_id FROM session WHERE session_id='$sessionId'";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["active_question_id"];
    }

    public function getResolvedCount($sessionId)
    {
        $query = "SELECT COUNT(question_id) AS count FROM session_forum_question WHERE session_id='$sessionId' AND resolved_status='1'";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["count"];
    }

    public function getUnResolvedCount($sessionId)
    {
        $query = "SELECT COUNT(question_id) AS count FROM session_forum_question WHERE session_id='$sessionId' AND resolved_status='0'";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["count"];
    }
}
