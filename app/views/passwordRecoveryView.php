<?php $errors = $data['errors'] ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ALec</title>

    <!-- CSS file -->
    <?php linkCSS('password_recovery'); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon('logo1.jpg'); ?>
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
                    <div class="slide"> Find Your Account </div>

                    <div class="form-inner">

                        <!-- FORM START -->
                        <form method="post" action="<?php echo BASEURL . '/passwordRecovery/enterEmail'; ?>" class="login" id="sendForm">

                            <br>

                            Please enter your email address to send an OTP.

                            <div class="field" id="courseField">
                                <label for="email"></label>
                                <input type="text" placeholder="Email" name="email" id="email" value="<?php if (isset($data['email'])) echo $data['email']; ?>" onfocusout="validateEmail()">
                                <div class="error" id="error"><?php echo $errors["email"]; ?></div>
                            </div>

                            <div class="field btn">
                                <div class="btn-layer"></div>
                                <input type="submit" value="Send">
                            </div>
                        </form>
                        <!-- FORM END -->


                    </div>
                </div>
            </div>
        </div>
    </div>




    <!-- FontAwesome Icon -->
    <script src="https://kit.fontawesome.com/3220c9480a.js" crossorigin="anonymous"></script>

    <?php linkJS("passwordRecovery") ?>
</body>

</html>