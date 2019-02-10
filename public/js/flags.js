$(document).ready(function(e) {
try {
$("#country").msDropDown();
} catch(e) {
alert(e.message);
}
});