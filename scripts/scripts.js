$(function () {
  $('.calendar').fullCalendar({
    header: {
      left: 'prevYear,prev,today',
      center: 'title',
      right: 'today,next,nextYear'
    },
    titleFormat: 'MMMM YYYY',
    selectable: true,
    themeSystem: 'bootstrap4',
    height: 'parent'
  });
});
