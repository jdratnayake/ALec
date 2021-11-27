function deleteFunction(link) {
    document.body.insertAdjacentHTML('afterbegin', deleteMessage(link));
}

function deleteMessage(link) {
    const output = `
        <div class="message-container" id="delete-box">
            <div class="face error-msg"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
            <div class="message-content">
                <h1 class="alert error-msg tag-txt">Warning!</h1>
                <p class="message-txt">Are you sure you want to continue?
            </div>
            <div class="button-boxes">
                <button class="red-btn confirm-btn"><span class="tag-txt" 
                onclick="location.href='http://localhost/ALec/${link}'">
                Yes, delete</span></button>
                <button class="red-btn confirm-btn cancel-btn" id="delete-close-btn" onclick="deleteCloseMessage()"><span class="tag-txt">No, cancel</span></button>
            </div>
        </div>
        `;

    return output;
}

function deleteCloseMessage() {
    document.getElementById("delete-box").remove();
}