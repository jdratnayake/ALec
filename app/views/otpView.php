<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/3220c9480a.js" crossorigin="anonymous"></script>
    <title>Message</title>
    <?php echo linkCSS("otp"); ?>
    <link rel="stylesheet" href="/Assets/css/flashMessages.css?version=1">
</head>

<body>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/login">Back to login</a></li>
    </ul>

    <div class="container">
        <div class="bgWhite">
            <div class="title">
                <h3>OTP Verification</h3>

                <h5>Enter the OTP code sent to your email to change your account password.</h5>
            </div>

            <form action="<?php echo BASEURL . "/passwordRecovery/otpCheck"; ?>" method="post">
                <div class="otp_no">
                    <label for="input1"></label>
                    <input id="input1" name="input1" class="otp" type="text" oninput='digitValidate(this)' onkeyup='tabChange(1)' maxlength=1>
                    <label for="input2"></label>
                    <input id="input2" name="input2" class="otp" type="text" oninput='digitValidate(this)' onkeyup='tabChange(2)' maxlength=1>
                    <label for="input3"></label>
                    <input id="input3" name="input3" class="otp" type="text" oninput='digitValidate(this)' onkeyup='tabChange(3)' maxlength=1>
                    <label for="input4"></label>
                    <input id="input4" name="input4" class="otp" type="text" oninput='digitValidate(this)' onkeyup='tabChange(4)' maxlength=1>
                    <label for="input5"></label>
                    <input id="input5" name="input5" class="otp" type="text" oninput='digitValidate(this)' onkeyup='tabChange(5)' maxlength=1>
                    <label for="input6"></label>
                    <input id="input6" name="input6" class="otp" type="text" oninput='digitValidate(this)' onkeyup='tabChange(6)' maxlength=1>
                    <label for="current_url"></label>
                    <input id="current_url" value="/otp/compareOTP" type="hidden">

                </div>

                <div class="error">
                    <?php echo $data["error"]; ?>
                </div>

                <input type="submit" value="Verify" class="btn solid customBtn" />
            </form>

            <div class="msg">
                <p class="text">Didn't receive code?
                    <a href="<?php echo BASEURL . "/passwordRecovery/sendOTP"; ?>">Resend OTP</a>
                </p>
            </div>

            <div class="msg">
                <p class="text">Entered Email incorrectly?
                    <a href="<?php echo BASEURL . "/passwordRecovery/enterEmail" ?>">Go Back</a>
                </p>
            </div>

        </div>
    </div>

    <?php linkJS("otp"); ?>
</body>

</html>