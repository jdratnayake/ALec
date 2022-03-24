<?php

class ReviewModel extends Database
{
    public function getQuizNameAndCourseID($quizId)
    {
        $query = "SELECT quiz_name, course_id FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id WHERE quiz_id='$quizId'";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    // reviewQuizListView - START
    public function getEnrolledCourses($userId)
    {
        $query = "SELECT course.course_id, course_name FROM course INNER JOIN course_registration_lec ON course.course_id=course_registration_lec.course_id WHERE lecturer_id='$userId' ORDER BY course.course_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getQuizDetails($userId, $courseId = "0")
    {
        if ($courseId == "0") {
            $query = "SELECT quiz_id, quiz_name, course.course_id, course_name, DATE_FORMAT(quiz.create_date, '%M %d %Y') AS date FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id INNER JOIN course ON course_topic.course_id=course.course_id WHERE quiz.lecturer_id='$userId' ORDER BY quiz.create_date DESC";
        } else {
            $query = "SELECT quiz_id, quiz_name, course.course_id, course_name, DATE_FORMAT(quiz.create_date, '%M %d %Y') AS date FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id INNER JOIN course ON course_topic.course_id=course.course_id WHERE quiz.lecturer_id='$userId' AND course.course_id='$courseId' ORDER BY quiz.create_date DESC";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
    // reviewQuizListView - END

    // reviewQuizView - START
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
    // reviewQuizView - END

    public function getStudentsResults($quizId)
    {
        $query = "SELECT user.user_id, index_no, CONCAT(first_name, ' ', last_name) AS name, marks FROM quiz_attempt INNER JOIN user ON student_id=user.user_id INNER JOIN student ON student_id=student.user_id WHERE quiz_id = '$quizId' ORDER BY quiz_attempt.attempt_time";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }
}
