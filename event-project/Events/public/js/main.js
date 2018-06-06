$(function () {
  'use strict';

  $('.fixed-action-btn').floatingActionButton();

  // enable chips
  $('.chips').chips();
  // store chip content in array
  var org = [];
  var venue = [];
  var tag = [];

  $('form').on('submit', function () {
    org = [];
    venue = [];
    tag = [];
    
    $.each(M.Chips.getInstance($('#org')).chipsData, function (key, value) {
      org.push(value.tag);
    });

    $.each(M.Chips.getInstance($('#venue')).chipsData, function (key, value) {
      venue.push(value.tag);
    });

    $.each(M.Chips.getInstance($('#tag')).chipsData, function (key, value) {
      tag.push(value.tag);
    });

    $('#organizerInput').val(org.join());
    $('#venueInput').val(venue.join());
    $('#tagInput').val(tag.join());
  });
  //Action Confirmation
  $('.modal').modal();
  //Date Picker
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

  $('.readonly>input').attr('readonly', true);
});