<?php $errors = $data['errors'] ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ALec</title>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <?php linkCSS('add_new_course'); ?>

</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/courseDetails/index">Course page</a></li>
        <li><a href="http://localhost/ALec/courseProfile/index/47">Course profile</a></li>
        <li>Edit course</li>
    </ul>

    <div class="wrapper center">

        <div class="form-container">
            <div class="slide"> EDIT COURSE </div>

            <div class="form-inner">

                <!-- FORM START -->
                <form method="post" action="<?php echo BASEURL . '/courseEdit/index/' . $data["courseDetails"]["course_id"]; ?>" class="login" id="registerForm" onsubmit="validateAll()">

                    <input type="hidden" name="c_id" value='<?php echo $data["courseDetails"]["course_id"]; ?>'>

                    <div class="field" id="courseField">
                        <label for="c_name"></label>
                        <input type="text" placeholder="Course Name" name="c_name" id="c_name" value='<?php echo $data["courseDetails"]["course_name"]; ?>' onfocusout="validateCourseName()">
                        <div class="error" id="error"><?php echo $errors["name"]; ?></div>
                    </div>

                    <div class="field-long">
                        <label for="c_desc"></label>
                        <textarea placeholder="Course Description" name="c_desc" id="c_desc" rows="10" cols="30" onfocusout="validateCourseDescription()"><?php echo $data["courseDetails"]["course_description"]; ?>'</textarea>
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field">
                        <label for="c_year"></label>
                        <input type="text" placeholder="Year" name="c_year" id="year-selection" value='<?php echo $data["courseDetails"]["year"]; ?>' onfocusout="validateCourseYear()">
                        <div class="error" id="error"><?php echo $errors["year"]; ?></div>
                    </div>


                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="Edit">
                    </div>
                </form>
                <!-- FORM END -->


            </div>
        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("corseRegisterValidation"); ?>

</body>

</html>

<!-- <script>
    document.getElementById('year-selection').value = '4';
</script> -->