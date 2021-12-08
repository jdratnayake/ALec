<?php

class TagsModel extends Database
{
    public function getTagNames($userId)
    {
        $query = "SELECT tag_id, tag_name FROM tag WHERE student_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getTopicDiscussionDetails()
    {
    }
}
