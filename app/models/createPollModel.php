<?php

class CreatePollModel extends Database
{
    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function addQuestion($sessionId, $type, $question, $answer, $durHr, $durMin, $durSec)
    {
        $type = mysqli_real_escape_string($GLOBALS["db"], $type);
        $question = mysqli_real_escape_string($GLOBALS["db"], $question);
        $answer = mysqli_real_escape_string($GLOBALS["db"], $answer);
        $durHr = mysqli_real_escape_string($GLOBALS["db"], $durHr);
        $durMin = mysqli_real_escape_string($GLOBALS["db"], $durMin);
        $durSec = mysqli_real_escape_string($GLOBALS["db"], $durSec);

        $dur = "{$durHr}:{$durMin}:{$durSec}";

        $query = "INSERT INTO session_question(session_id, question_type, question, answer, duration) VALUES('$sessionId', '$type', '$question', '$answer', '$dur')";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT question_no FROM session_question ORDER BY question_no DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["question_no"];
    }

    public function addAnswer($questionId, $sessionId, $choice)
    {
        $choice = mysqli_real_escape_string($GLOBALS["db"], $choice);

        $query = "INSERT INTO session_answer(question_no, session_id, choice_name) VALUES('$questionId', '$sessionId', '$choice')";
        mysqli_query($GLOBALS["db"], $query);
    }
}
