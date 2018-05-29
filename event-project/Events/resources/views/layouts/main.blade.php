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
  @include ('includes/header')
  @if(count($events) > 0)
  <div class="container" id="events">
    @foreach($events as $event)
    <a href="/event/{{$event->idevents}}" class="card horizontal waves-effect black-text">
      <div class="card-image">
        <img src="http://absfreepic.com/absolutely_free_photos/small_photos/silver-laptop-on-a-black-background-3888x2592_20486.jpg">
      </div>
      <div class="card-stacked">
        <div class="card-content flex flex-column">
          <div class="card-title">
            <div class="left event-name">{{$event->eventname}}</div>
            <small class="right event-organizer">{{$event->managedBy}}</small>
          </div>
          <div class="mt-auto">
            <div class="pr-1">Event Date: {{$event->startdate}}</div>
            <div class="chip">{{$event->venue}}</div>
          </div>
        </div>
      </div>
    </a>
    @endforeach
  </div>
  @endif
  @include('includes.scripts')
</body>

</html>