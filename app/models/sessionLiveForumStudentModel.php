<?php

class sessionLiveForumStudentModel extends Database
{
    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name, course_id FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getForumQuestionDetails($sessionId)
    {
        $query = "SELECT question_id, student_id, question, points, TIME_FORMAT(post_time, '%h.%i %p') AS post_time, random_status, CONCAT(first_name, ' ', last_name) AS name, CONCAT(random_first_name, ' ', random_last_name) AS random_name FROM session_forum_question INNER JOIN user ON student_id=user.user_id INNER JOIN student ON student_id=student.user_id WHERE session_id='$sessionId' ORDER BY points DESC, post_time";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function insertSessionQuestion($question, $sessionId, $studentId, $randomStatus = "F")
    {
        $question = mysqli_real_escape_string($GLOBALS["db"], $question);

        $query = "INSERT INTO session_forum_question(question, session_id, student_id, random_status) VALUES ('$question', '$sessionId', '$studentId', '$randomStatus')";
        mysqli_query($GLOBALS["db"], $query);
    }
}
