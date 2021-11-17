<?php $errors = $data['errors'] ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Simple HTML Form</title>
	
	<!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <?php linkCSS('register'); ?>

    <!-- <script src="js/form.js"></script> -->
</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/userDetails/index">User details</a></li>
        <li><a href="<?php echo BASEURL . '/userProfile/index/' . $data["userDetails"]["user_id"] ?> ">View user</a></li>
        <li>
            <?php
            if ($data["userDetails"]["user_type"] == "stu") {
                echo 'Edit Student';
            } else if ($data["userDetails"]["user_type"] == "lec") {
                echo 'Edit Lecturer';
            }
            ?>
        </li>
    </ul>

    <div class="wrapper center">

        <div class="form-container">

            <?php
            if ($data["userDetails"]["user_type"] == "stu") {
                echo '<h2>Edit Student</h2>';
            } else if ($data["userDetails"]["user_type"] == "lec") {
                echo '<h2>Edit Lecturer</h2>';
            }
            ?>

            <div class="form-inner">

                <!-- LECTURER FORM START -->
                <form method="post" action="<?php echo BASEURL . '/userEdit/index'; ?>" class="login" id="registerForm" onsubmit="validateAll()">
                    <!-- Used to identify user type -->
                    <input type='hidden' name='userID' value='<?php echo $data["userDetails"]["user_id"]; ?>' />
                    <input type='hidden' name='type' value='2' />

                    <div class="field">
                        <label for="email"></label>
                        <input type="text" placeholder="Email Address" name="email" id="email" onfocusout="validateEmail()" value='<?php echo $data["userDetails"]["email"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["email"] ?></div>
                    </div>

                    <div class="field">
                        <label for="regNo"></label>
                        <input type="text" placeholder="Employee No" name="regNo" id="regNo" onfocusout="validateEmployeeNo()" value='<?php echo $data["userDetails"]["reg_no"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["regNo"] ?></div>
                    </div>

                    <div class="field">
                        <label for="fName"></label>
                        <input type="text" placeholder="First Name" name="fName" id="fName" onfocusout="validateFirstName()" value='<?php echo $data["userDetails"]["first_name"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["fName"] ?></div>
                    </div>

                    <div class="field">
                        <label for="lName"></label>
                        <input type="text" placeholder="Last Name" name="lName" id="lName" onfocusout="validateLastName()" value='<?php echo $data["userDetails"]["last_name"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["lName"] ?></div>
                    </div>

                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="Register">
                    </div>
                </form>
                <!-- LECTURER FORM END -->

                <!-- STUDENT FORM START -->
                <form method="post" action="<?php echo BASEURL . '/userEdit/index'; ?>" class="login" id="registerForm1" onsubmit="validateAll1()">
                    <!-- Used to identify user type -->
                    <input type='hidden' name='userID' value='<?php echo $data["userDetails"]["user_id"]; ?>' />
                    <input type='hidden' name='type' value='3' />

                    <div class="field">
                        <label for="email1"></label>
                        <input type="text" placeholder="Email Address" name="email" id="email1" onfocusout="validateEmail1()" value='<?php echo $data["userDetails"]["email"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["email"] ?></div>
                    </div>

                    <div class="field">
                        <label for="regNo1"></label>
                        <input type="text" placeholder="Index No" name="regNo" id="regNo1" onfocusout="validateEmployeeNo1()" value='<?php echo $data["userDetails"]["reg_no"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["regNo"] ?></div>
                    </div>

                    <div class="field">
                        <label for="fName1"></label>
                        <input type="text" placeholder="First Name" name="fName" id="fName1" onfocusout="validateFirstName1()" value='<?php echo $data["userDetails"]["first_name"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["fName"] ?></div>
                    </div>

                    <div class="field">
                        <label for="lName1"></label>
                        <input type="text" placeholder="Last Name" name="lName" id="lName1" onfocusout="validateLastName1()" value='<?php echo $data["userDetails"]["last_name"]; ?>'>
                        <div class="error" id="error"><?php echo $errors["lName"] ?></div>
                    </div>

                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="Register">
                    </div>
                </form>
                <!-- STUDENT FORM END -->

            </div>
        </div>
    </div>

    <!-- JS code -->
    <?php
    if ($data["userDetails"]["user_type"] == "stu") {
        echo '<script>
        const loginText = document.querySelector(".title-text .login");
        const loginForm = document.querySelector("form.login");

        loginForm.style.marginLeft = "-50%";
        loginText.style.marginLeft = "-50%";
    </script>';
    }
    ?>



    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("userEditView"); ?>

    <?php linkJS("editLecturerRegisterValidation"); ?>

    <?php linkJS("editStudentRegisterValidation"); ?>

</body>

</html>