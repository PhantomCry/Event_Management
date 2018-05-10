$(function () {
  'use strict';
  
  $('.fixed-action-btn').floatingActionButton();
  $('.chips').chips();
  $('.chips-autocomplete').chips({
    autocompleteOptions: {
      data: {
        'Apple': null,
        'Microsoft': null,
        'Google': null
      },
      limit: Infinity,
      minLength: 1
    }
  });
  $('#tags').chips({
    placeholder: 'Enter a tag',
    secondaryPlaceholder: 'Add another tag'
  });
  $('#organizer').chips({
    placeholder: 'Organizer',
    secondaryPlaceholder: 'Add another organizer'
  });
  $('#venue').chips({
    placeholder: 'Venue',
    secondaryPlaceholder: 'Add another venue'
  });
  $('.datepicker').datepicker();
  
  $('#search').on('click', function () {
    $('#header').addClass('h-25');
    $('#events').addClass('top-25');
    $('#logo').hide(500);
    $('#searchContainer').removeClass('pb-5');
    $('#exNav').removeClass('op-0');
    $('#exaddeve').hide(500);
  });

  $('.readonly>input').attr('readonly',true);
  // $('.chips input').html('<i class="material-icons prefix">icon d2</a>');
});
