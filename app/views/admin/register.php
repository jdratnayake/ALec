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

    <div class="form-container">
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
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

</body>

</html>