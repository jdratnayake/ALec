
document.getElementsByClassName('radio-btn')[0].addEventListener('click', (e) => {
    let btn = document.getElementById("manage-users-btn");

    if (e.target.id === 'assign-users') {
        btn.setAttribute('value', 'Assign users');
    }
    if (e.target.id === 'delete-users') {
        btn.setAttribute('value', 'Delete users');
    }
});