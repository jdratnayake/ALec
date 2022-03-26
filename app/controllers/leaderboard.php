<?php

class Leaderboard extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu", "lec");
        $this->helper("linker");
        $this->leaderboardModel = $this->model("leaderboardModel");
    }

    public function index()
    {
        $data["userType"] = $this->getSession("type");
        $data["studentDetails"] = $this->leaderboardModel->getStudentDetails("1");

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
                                <button type='button' class='button'>
                                    <span class='button__text'>View</span>
                                </button>
                            </td>
                        </tr>
                        ";
            $i++;
        }

        echo $output;
    }
}
