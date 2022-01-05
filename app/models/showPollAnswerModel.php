<?php

class ShowPollAnswerModel extends Database
{
    public function getSessionDetails($questionId)
    {
        $query = "SELECT session.session_id, session_name FROM session INNER JOIN session_question ON session.session_id=session_question.session_id WHERE question_no='$questionId'";
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
        $query = "SELECT attempt_no, answer, COUNT(answer) AS answer_count FROM session_open_attempt WHERE question_no='$questionId' GROUP BY answer ORDER BY answer_count, answer";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    //Function that are need for respondent model

    public function getSessionDetailsForResponses($type, $choiceId)
    {
        if ($type == "mcq") {
            $query = "SELECT session.session_id, session.session_name, session_answer.question_no FROM session_answer INNER JOIN session ON session_answer.session_id=session.session_id WHERE session_answer.choice_id='$choiceId'";
        } else if ($type == "open") {
            $query = "SELECT session.session_id, session.session_name, session_open_attempt.question_no FROM session_open_attempt INNER JOIN session_question ON session_open_attempt.question_no=session_question.question_no INNER JOIN session ON session_question.session_id=session.session_id WHERE attempt_no='$choiceId'";
        }


        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    //getRespondents function use this function
    public function getAnswer($type, $choiceId)
    {
        if ($type == "mcq") {
            $query = "SELECT choice_name AS choice FROM session_answer WHERE choice_id='$choiceId'";
        } else if ($type == "open") {
            $query = "SELECT answer AS choice FROM session_open_attempt WHERE attempt_no='$choiceId'";
        }


        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getRespondents($type, $choiceId)
    {
        if ($type == "mcq") {
            $query = "SELECT user_id, index_no FROM session_mcq_attempt INNER JOIN student ON student_id=user_id WHERE choice_id='$choiceId' ORDER BY attempt_time";
        } else if ($type == "open") {
            $answer = $this->getAnswer($type, $choiceId);
            $answer = $answer["choice"];

            $query = "SELECT user_id, index_no FROM session_open_attempt INNER JOIN student ON student_id=user_id WHERE answer='$answer' ORDER BY attempt_time";
        }


        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
