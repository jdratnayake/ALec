<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Simple HTML Form</title>

    <?php linkCSS('register'); ?>

    <!-- <script src="js/form.js"></script> -->
</head>

<body>

    <?php linkPhp("navigationBar"); ?>

    <!-- <div class="form-container">
        <form name="form" onsubmit="return validateForm()">
            <h2>Registration Form</h2>

            <div class="row">
                <div class="box">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email">
                    <div class="error" id="error"></div>
                </div>

                <div class="box">
                    <label for="regno">Registration No</label>
                    <input type="text" name="regno" id="regno">
                    <div class="error" id="error"></div>
                </div>
            </div>



            <div class="row">
                <div class="box">
                    <label for="fname">First Name</label>
                    <input type="text" name="fname" id="fname">
                    <div class="error" id="error"></div>
                </div>

                <div class="box">
                    <label for="lname">Last Name</label>
                    <input type="text" name="lname" id="lname">
                    <div class="error" id="error"></div>
                </div>
            </div>

            <div class="row">
                <div class="box">
                    <label>Type</label>
                    <select name="type" id="type">
                        <option>Lecturer</option>
                        <option>Student</option>
                    </select>
                    <div class="error" id="error"></div>
                </div>

                <div class="box">
                    <label for="password1">Password</label>
                    <input type="text" name="password1" id="password1">
                    <div class="error" id="error"></div>
                </div>
            </div>


            <div class="box">
                <input type="submit" value="Register" class="center">
            </div>
        </form>
    </div> -->

    <div class="wrapper center">

        <div class="form-container">
            <div class="slide-controls">
                <input type="radio" name="slide" id="login" checked>
                <input type="radio" name="slide" id="signup">
                <label for="login" class="slide login">Lecturer</label>
                <label for="signup" class="slide signup">Student</label>
                <div class="slider-tab"></div>
            </div>


            <div class="form-inner">

                <!-- LECTURER FORM START -->
                <form action="#" class="login">
                    <input type='hidden' name='type' value='<?php echo 1; ?>' />

                    <div class="field">
                        <input type="text" placeholder="Email Address">
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field">
                        <input type="text" placeholder="Registration No">
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field">
                        <input type="text" placeholder="First Name">
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field">
                        <input type="text" placeholder="Last Name">
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field">
                        <input type="password" placeholder="Password">
                        <div class="error" id="error"></div>
                    </div>

                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="Register">
                    </div>
                </form>
                <!-- LECTURER FORM END -->

                <!-- STUDENT FORM START -->
                <form action="#" class="signup">
                    <div class="field">
                        <input type="text" placeholder="Email Address">
                    </div>
                    <div class="field">
                        <input type="password" placeholder="Password">
                    </div>
                    <div class="field">
                        <input type="password" placeholder="Confirm password">
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

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("registerStyle"); ?>

</body>

</html>