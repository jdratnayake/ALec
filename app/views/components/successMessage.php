<!-- NEED TO LINK SUCESS MESSAGE CSS FILE -->
<!-- NEED TO LINK SUCESS MESSAGE JS FILE -->

<?php

function printSucessMsg($msg)
{
    if (!empty($msg)) {
        echo
        "
        <div class='message-container' id='success-box'>
            <!--        style='display: none'-->
            <div class='close-btn' id='close-btn'><i class='fa fa-times-circle-o' aria-hidden='true'></i></div>
            <div class='face success-msg'><i class='fa fa-check-circle' aria-hidden='true'></i></div>
            <div class='message-content'>
                <h1 class='alert success-msg tag-txt'>Success!</h1>
                <p class='message-txt'> $msg </p>
            </div>
            <button class='button-box blue-btn' id='continue-button'><span class='tag-txt'>continue</span></button>
        </div>
        ";
    }
}
