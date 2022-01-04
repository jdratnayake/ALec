<?php

//userId = studentId

class sessionLiveForumStudentModel extends Database
{
    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name, course_id FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getForumQuestionDetails($sessionId, $userId)
    {
        $query = "SELECT session_forum_question.question_id, session_forum_question.student_id, question, points, TIME_FORMAT(post_time, '%h.%i %p') AS post_time, random_status, CONCAT(first_name, ' ', last_name) AS name, CONCAT(random_first_name, ' ', random_last_name) AS random_name, session_forum_question_points.student_id AS vote_status FROM session_forum_question INNER JOIN user ON student_id=user.user_id INNER JOIN student ON student_id=student.user_id LEFT JOIN session_forum_question_points ON session_forum_question.question_id=session_forum_question_points.question_id AND session_forum_question_points.student_id='$userId' WHERE session_id='$sessionId' ORDER BY points DESC, post_time";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function insertSessionQuestion($question, $sessionId, $studentId, $randomStatus = "F")
    {
        $question = mysqli_real_escape_string($GLOBALS["db"], $question);

        $query = "INSERT INTO session_forum_question(question, session_id, student_id, random_status) VALUES ('$question', '$sessionId', '$studentId', '$randomStatus')";
        mysqli_query($GLOBALS["db"], $query);
    }

    function changeVote($questionId, $userId)
    {
        $query = "SELECT * FROM session_forum_question_points WHERE student_id='$userId' AND question_id='$questionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) == 1) {
            $query = "DELETE FROM session_forum_question_points WHERE student_id='$userId' AND question_id='$questionId'";
        } else {
            $query = "INSERT INTO session_forum_question_points(question_id, student_id) VALUES('$questionId', '$userId')";
        }

        mysqli_query($GLOBALS["db"], $query);
    }
}
