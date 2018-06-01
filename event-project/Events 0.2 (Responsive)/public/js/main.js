$(function () {
  'use strict';
  
  $('.fixed-action-btn').floatingActionButton();
  // $('.chips').chips({
  //   data: [{
  //     tag: 'Rizal'
  //   }]
  // });
  $('.modal').modal();
  $('.datepicker').datepicker({
    format: "yyyy-mm-dd"
  });
  
  $('#search').on('click', function () {
    $('#header').addClass('h-25');
    $('#events').addClass('top-25');
    $('#logo').hide(500);
    $('#searchContainer').removeClass('pb-5');
    $('#exNav').removeClass('op-0');
    $('#exaddeve').hide(500);
  });

  $('.readonly>input').attr('readonly',true);
});
