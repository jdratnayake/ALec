<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Simple HTML Form</title>

    <!--    --><?php //linkCSS('success_message'); ?>
    <link rel="stylesheet" href="public/css/success_message.css">
</head>

<body>

<!--Success message box-->
<div class="message-container" id="success-box">
    <!--        style="display: none"-->
    <div class="close-btn"><i class="fa fa-times-circle-o" aria-hidden="true"></i></div>
    <div class="face success"><i class="fa fa-check-circle" aria-hidden="true"></i></div>
    <div class="message"><h1 class="alert success">SUCCESS!</h1>
        <p>yay, everything is working :)</p></div>
    <button class="button-box blue-btn"><span>continue</span></button>
</div>

<!--Error message box-->
<div class="message-container" id="error-box">
<!--        style="display: none"-->
    <div class="close-btn"><i class="fa fa-times-circle-o" aria-hidden="true"></i></div>
    <div class="face error"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
    <div class="message"><h1 class="alert error">ERROR!</h1>
        <p>oh no, something went wrong :(</div>
    <button class="button-box red-btn"><span>try again</span></button>
</div>

<!-- FontAwesome Icon -->
<script src="https://kit.fontawesome.com/3220c9480a.js" crossorigin="anonymous"></script>

</body>
