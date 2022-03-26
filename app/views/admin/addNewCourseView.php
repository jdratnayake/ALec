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
        <li>Add new course</li>
    </ul>

    <div class="wrapper center">

        <div class="form-container">
            <div class="slide"> ADD NEW COURSE</div>

            <div class="form-inner">

                <!-- FORM START -->
                <form method="post" action="<?php echo BASEURL . '/addNewCourse/index'; ?>" class="login" id="registerForm" onsubmit="validateAll()">

                    <div class="field" id="courseField">
                        <label for="c_name"></label>
                        <input type="text" placeholder="Course Name" name="c_name" id="c_name" onfocusout="validateCourseName()">
                        <div class="error" id="error"><?php echo $errors["name"]; ?></div>
                    </div>

                    <div class="field-long">
                        <label for="c_desc"></label>
                        <textarea placeholder="Course Description" name="c_desc" id="c_desc" rows="10" cols="30" onfocusout="validateCourseDescription()"></textarea>
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field">
                        <!--                        <label for="c_year"></label>-->
                        <!--                        <input type="text" placeholder="Year" name="c_year" id="c_year" onfocusout="validateCourseYear()">-->
                        <!--                        <div class="error" id="error">-->
                        <?php //echo $errors["year"]; 
                        ?>
                        <!--</div>-->

                        <label for="year-selection"></label>
                        <select name="year-selection" id="year-selection" class="year-dropdown" placeholder="Year">
                            <option value=''>--All years--</option>
                            <option value='1'>Year 1</option>
                            <option value='2'>Year 2</option>
                            <option value='3'>Year 3</option>
                            <option value='4'>Year 4</option>
                        </select>
                        <div class="error" id="error"></div>
                    </div>

                    <!--                    <div class="year-selection">-->
                    <!--                        <label for="year-selection">Year:</label>-->
                    <!--                        <select name="year-selection" id="year-selection" class="year-dropdown">-->
                    <!--                            <option value='0'>--All years--</option>-->
                    <!--                            <option value='1'>Year 1</option>-->
                    <!--                            <option value='2'>Year 2</option>-->
                    <!--                        </select>-->
                    <!--                    </div>-->

                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="Register">
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