<?php

class InitialPasswordResetModel extends Database
{
    public function changePassword($userId, $password)
    {
        $userId = mysqli_real_escape_string($GLOBALS["db"], $userId);
        $password = mysqli_real_escape_string($GLOBALS["db"], $password);

        $password = password_hash($password, PASSWORD_DEFAULT);

        $query = "UPDATE user SET pass='$password', status='1' WHERE user_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
