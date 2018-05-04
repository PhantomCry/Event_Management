$(function () {
  'use strict';

  $('.fixed-action-btn').floatingActionButton();

  $('#search').on('click', function () {
    $('#header').addClass('h-25').removeClass('fixed');
    $('#logo').hide(500);
  });
});
