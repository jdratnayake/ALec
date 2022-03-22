<?php

class QuizDraft extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->quizDraftModel = $this->model("quizDraftModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");

        $data["courseDetails"] = $this->quizDraftModel->getEnrolledCourses($userId);
        $this->view("lecturer/quizDraftView", $data);
    }

    public function topic($courseId)
    {
        $topicDetails = $this->quizDraftModel->getTopics($courseId);

        $output = "<option value='0'>--No topic selected--</option>";

        while ($row = mysqli_fetch_assoc($topicDetails)) {
            $output .=
                "
                <option value='{$row['topic_id']}'>{$row['topic_name']}</option>
                ";
        }

        echo $output;
    }

    public function draftQuiz($courseId, $topicId)
    {
        $quizDetails = $this->quizDraftModel->getDraftedQuizzes($courseId, $topicId);

        $output = "";

        while ($row = mysqli_fetch_assoc($quizDetails)) {
            $output .=
                "
                <div class='drafts'>
                    <div class='draft'>
                        <div class='draft-details'>
                            <a href='http://localhost/ALec/quizDraftComplete/index/{$row['quiz_id']}' class='draft-name'>
                                <span>
                                    {$row['quiz_name']}
                                </span>
                            </a>
                        </div>

                        <span class='draft-created-date'>
                            {$row['date']}
                        </span>
                    </div>
                </div>
                ";
        }

        echo $output;
    }
}
