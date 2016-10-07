// Alert messages
// ('.alert').delay(2000).fadeOut();
$(".alert-message").alert();
window.setTimeout(function() { $(".alert-message").alert('close'); }, 2000)

// Rating Stars
$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
});