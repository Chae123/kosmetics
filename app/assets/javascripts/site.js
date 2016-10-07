// Alert messages

// Rating Stars


$(document).on('turbolinks:load', function(){
 $('.rating').raty( {
     scoreName: 'comment[rating]',
   starHalf        : <% image_path('star-half.png') %>,
   starOff         : <% image_path('star-off.png') %>,
   starOn          : <% image_path('star-on.png') %>
 });
 $('.rated').raty({ 
        readOnly: true,
   starHalf        : <% image_path('star-half.png') %>,
   starOff         : <% image_path('star-off.png') %>,
   starOn          : <% image_path('star-on.png') %>,
        score: function() {
            return $(this).attr('data-score');
        }
    });
});