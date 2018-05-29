@extends(layouts.main)

@section('events')
  <div class="container" id="events">
    <a href="/{id}" class="card horizontal waves-effect">
      <div class="card-image">
        <img src="http://absfreepic.com/absolutely_free_photos/small_photos/silver-laptop-on-a-black-background-3888x2592_20486.jpg">
      </div>
      <div class="card-stacked">
        <div class="card-content flex flex-column">
          <div class="card-title">
            <div class="left">Card Design 1</div>
            <small class="right">Organizer</small>
          </div>
          <div class="mt-auto">
            <div class="flow-text">Event Date</div>
            <div class="flow-text">Event Venue</div>
          </div>
        </div>
      </div>
    </a>
  </div>
@endsection
