//get modal element
var modal = document.getElementById('signup_modal');

//get open modal button
var btnModal = document.getElementById('btn-signup');

//get close modal button
var closeBtn = document.getElementById('closeBtn');

//listen for an open click
btnModal.addEventListener('click', openModal);

//listen for a close  click
closeBtn.addEventListener('click', closeModal);

//listen for windows  click
window.addEventListener('click', clickOutside);


//function to open modal
function openModal(){
    modal.style.display = "block";
}


//function to close modal if outside is clicked
function clickOutside(e) {
    if(e.target == modal){
        modal.style.display = "none";
    }
    
}


//function to close modal
function closeModal(){
    modal.style.display = "none";
}