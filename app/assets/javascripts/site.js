// Alert messages
('.alert').delay(2000).fadeOut();

// Rating Stars
$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
});