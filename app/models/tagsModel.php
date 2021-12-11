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

    public function createTag($userId, $tagName)
    {
        $query = "INSERT INTO tag(tag_name, student_id) VALUES('$tagName', '$userId')";
        mysqli_query($GLOBALS["db"], $query);
    }

    public function deleteTag($tagId)
    {
        $query = "DELETE FROM tag WHERE tag_id='$tagId'";
        mysqli_query($GLOBALS["db"], $query);
    }
}
