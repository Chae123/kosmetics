// Alert messages

// Rating Stars

$(document).on('turbolinks:load', function(){
 $('.rating').raty( {
     scoreName: 'comment[rating]',
   starHalf        : <% asset_path('star-half.png') %>,
   starOff         : <% asset_path('star-off.png') %>,
   starOn          : <% asset_path('star-on.png') %>
 });
 $('.rated').raty({ 
        readOnly: true,
   starHalf        : <% asset_path('star-half.png') %>,
   starOff         : <% asset_path('star-off.png') %>,
   starOn          : <% asset_path('star-on.png') %>,
        score: function() {
            return $(this).attr('data-score');
        }
    });
});

