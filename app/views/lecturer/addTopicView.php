<?php
$errors = $data['errors'];
$courseId = $data["bread"]["courseDetails"]["course_id"];
$courseName = explode("-", $data["bread"]["courseDetails"]["course_name"])[0];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ALec</title>

    <?php linkCSS('add_new_course'); ?>

</head>

<body>

    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="<?php echo BASEURL . "/lecturerCoursePage/index" ?>">My Course</a></li>
        <li><a href="<?php echo BASEURL . "/lecturerTopicPage/index/{$courseId}" ?>"><?php echo $courseName ?></a></li>
        <li>Add New Topic</li>
    </ul>

    <div class="wrapper center">

        <div class="form-container">
            <div class="slide"> ADD NEW TOPIC </div>

            <div class="form-inner">

                <!-- FORM START -->
                <form method="post" action="<?php echo BASEURL . '/addTopic/index/' . $courseId; ?>" class="login" id="registerForm" onsubmit="validateAll()">

                    <div class="field" id="courseField">
                        <label for="c_name"></label>
                        <input type="text" placeholder="Topic Name" name="t_name" id="t_name" onfocusout="validateCourseName()">
                        <div class="error" id="error"><?php echo $errors["name"]; ?></div>
                    </div>

                    <div class="field-long">
                        <label for="c_desc"></label>
                        <textarea placeholder="Topic Description" name="t_desc" id="t_desc" rows="10" cols="30" onfocusout="validateCourseDescription()"></textarea>
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="Add New Topic">
                    </div>
                </form>
                <!-- FORM END -->


            </div>
        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>



</body>

</html>