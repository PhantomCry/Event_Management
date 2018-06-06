<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>{{config('app.name', 'Occassions')}}</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="{{asset('css/materialize.min.css')}}">
  <link rel="stylesheet" href="{{asset('css/main.css')}}">

</head>

<body>
  @include ('includes/header') @if(count($events) > 0)
  <div class="row grid" id="events">
    @foreach($events as $event)
    <div class="col s12 m4 l3 events-col">
      <a href="/event/{{$event->idevents}}">
        <div class="card waves-effect waves-block">
          <div class="card-image">
            <img src="http://absfreepic.com/absolutely_free_photos/small_photos/silver-laptop-on-a-black-background-3888x2592_20486.jpg">
            <div class="card-title">{{$event->eventname}}</div>
          </div>
          <div class="card-content card-display">
          <div class="mb-1">Event Date: {{$event->startdate}} - {{$event->enddate}}</div>
            <div data-chips>
              <div>Organizer/s: </div>
              <input type="hidden" value="{{$event->managedBy}}">
            </div>
            <div data-chips>
              <div>Venue/s: </div>
              <input type="hidden" value="{{$event->venue}}">
            </div>
          </div>
        </div>
      </a>
    </div>

    @endforeach
  </div>
  @endif @include('includes.scripts')
  <script>
    $(function () {

      $('#search').on('input', function() {
        var cardName = $('.events-col .card-title');
        $.each(cardName, function(key, value) {
          if ($(value).text().toLowerCase().indexOf($('#search').val().toLowerCase()) > -1) {
            $(value).parent().parent().parent().parent().show(300);
          } else {
            $(value).parent().parent().parent().parent().hide(300);
          }
        });
      });

      $.each($('[data-chips] > [type=hidden]'), function (key, value) {
        var parent = $(this).parent();
        var v = $(value).val().split(',');
        $.each(v, function (i, val) {
          $(parent).append("<div class=\"chip\">" + val + "</div>");
        });
      });
    });
  </script>
</body>

</html>