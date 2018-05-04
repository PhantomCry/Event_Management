$(function () {
  'use strict';

  $('.fixed-action-btn').floatingActionButton();

  $('#search').on('click', function () {
    $('#header').addClass('h-25');
    $('#events').addClass('top-25');
    $('#logo').hide(500);
  });
});
