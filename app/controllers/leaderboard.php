<?php

class Leaderboard extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu", "lec");
        $this->helper("linker");
        $this->leaderboardModel = $this->model("leaderboardModel");

        $this->badgeAwardModel = $this->model("badgeAwardModel");
        $this->userProfileModel = $this->model("userProfileModel");
    }

    public function index()
    {
        $defaultYear = "3";

        $data["userType"] = $this->getSession("type");
        $data["studentDetails"] = $this->leaderboardModel->getStudentDetails($defaultYear);

        $this->view("leaderboardView", $data);
    }

    public function updateLeaderboard($year)
    {
        $studentDetails = $this->leaderboardModel->getStudentDetails($year);

        $output = "";

        $i = 1;
        while ($row = mysqli_fetch_assoc($studentDetails)) {

            if (empty($row["marks"])) {
                $row["marks"] = 0;
            }

            $output .= "
                        <tr>
                            <td>$i</td>
                            <td>{$row["index_no"]}</td>
                            <td>{$row["name"]}</td>
                            <td>{$row["marks"]}</td>
                            <td>
                                <button type='button' class='button' onclick=\"location.href='http://localhost/ALec/leaderboard/studentBadge/{$row["user_id"]}'\">
                                    <span class='button__text'>View</span>
                                </button>
                            </td>
                        </tr>
                        ";
            $i++;
        }

        echo $output;
    }

    public function studentBadge($studentId)
    {
        $data["loggedUserType"] = $this->getSession("type");

        $type = "stu";

        $data["success"] = "";

        $data["studentId"] = $studentId;

        $data["userDetails"] = $this->userProfileModel->getUserDetails($studentId);
        $data["userDetails"]["randomName"] = $this->userProfileModel->getRandomName($studentId);
        $data["userDetails"]["type"] = $type;
        $data["userDetails"]["regNo"] = $this->userProfileModel->getRegistrationNo($studentId, $type);

        $data["courseDetails"] = $this->userProfileModel->getCourseDetails($studentId, $type);

        $data["badgeDetails"] = $this->badgeAwardModel->getBadgeDetails($studentId);

        $this->view("studentBadgeProfileView", $data);
    }
}
