<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ALec</title>

    <?php linkCSS('add_new_course'); ?>

</head>

<body>

<?php linkPhp("navigationBarAdmin"); ?>

<div class="wrapper center">

    <div class="form-container">
        <div class="slide"> ADD NEW COURSE </div>

        <div class="form-inner">

            <!-- FORM START -->
            <form method="post" action="" class="login" id="registerForm" onsubmit="">

                <div class="field">
                    <input type="text" placeholder="Course name" name="c_name" id="c_name">
                    <div class="error" id="error"></div>
                </div>

                <div class="field-long">
                    <textarea placeholder="Course Description" name="c_desc" id="c_desc" rows="10" cols="30"></textarea>
                    <div class="error" id="error"></div>
                </div>

                <div class="field">
                    <input type="text" placeholder="Year" name="c_year" id="c_year">
                    <div class="error" id="error"></div>
                </div>

<!--                <div class="field">-->
<!--                    <input type="text" placeholder="Email Address" name="email" id="email">-->
<!--                    <div class="error" id="error"></div>-->
<!--                </div>-->
<!---->
<!--                <div class="field">-->
<!--                    <input type="text" placeholder="Employee No" name="regNo" id="regNo">-->
<!--                    <div class="error" id="error"></div>-->
<!--                </div>-->
<!---->
<!--                <div class="field">-->
<!--                    <input type="text" placeholder="First Name" name="fName" id="fName">-->
<!--                    <div class="error" id="error"></div>-->
<!--                </div>-->
<!---->
<!--                <div class="field">-->
<!--                    <input type="text" placeholder="Last Name" name="lName" id="lName">-->
<!--                    <div class="error" id="error"></div>-->
<!--                </div>-->
<!---->
<!--                <div class="field">-->
<!--                    <input type="text" placeholder="Password" name="password" id="password">-->
<!--                    <div class="error" id="error"></div>-->
<!--                </div>-->

                <div class="field btn">
                    <div class="btn-layer"></div>
                    <input type="submit" value="Register">
                </div>
            </form>
            <!-- FORM END -->


        </div>
    </div>
</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

<?php linkJS("registerStyle"); ?>

<?php linkJS("lecturerRegisterValidation"); ?>

<?php linkJS("studentRegisterValidation"); ?>

</body>

</html>
