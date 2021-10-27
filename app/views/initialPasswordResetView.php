<?php $errors = $data['errors'] ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ALec</title>

    <!-- CSS file -->
    <?php linkCSS('password_recovery_edit_password'); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon('logo1.png'); ?>
</head>

<body>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/login">Back to login</a></li>
    </ul>

    <div class="container">
        <div class="home-content">
            <div class="wrapper">

                <div class="form-container">
                    <div class="slide"> Enter New Password </div>

                    <div class="form-inner">

                        <!-- FORM START -->
                        <form method="post" action="<?php echo BASEURL . '/initialPasswordReset/changePassword/' . $data["userId"]; ?>" class="login" id="submit" onsubmit="validateAll()">

                            <div class="field" id="courseField">
                                <label for="password1"></label>
                                <input type="password" placeholder="Password" name="password1" id="password1" onfocusout="validatePassword1()">
                                <div class="error" id="error"><?php echo $errors["password1"]; ?></div>
                            </div>

                            <div class="field" id="courseField">
                                <label for="password2"></label>
                                <input type="password" placeholder="Confirm Password" name="password2" id="password2" onfocusout="validatePassword2()">
                                <div class="error" id="error"><?php echo $errors["password2"]; ?></div>
                            </div>

                            <div class="field btn">
                                <div class="btn-layer"></div>
                                <input type="submit" value="Submit">
                            </div>
                        </form>
                        <!-- FORM END -->


                    </div>
                </div>
            </div>
        </div>
    </div>


    <?php linkJS("passwordRecoveryEditPassword") ?>

    <!-- FontAwesome Icon -->
    <script src="https://kit.fontawesome.com/3220c9480a.js" crossorigin="anonymous"></script>
</body>

</html>