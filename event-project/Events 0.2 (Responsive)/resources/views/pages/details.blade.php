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
  <nav class="transparent z-depth-0">
    <div class="nav-wrapper">
      <a href="/" class="brand-logo ml-3">
        <img src="{{asset('images/LOGO.png')}}" alt="Logo" id="addEventLogo">
      </a>
    </div>
  </nav>
  
  <div class="modal" id="delete">
    <div class="modal-content">
      <div class="flow-text">Are you sure you want to DELETE THE EVENT?</div>
    </div>
    <div class="modal-footer">
      <button data-target="confirm" class="btn modal-close modal-trigger blue">yes</button>
      <button class="btn modal-close red">no</button>
    </div>
  </div>

  <div class="modal" id="confirm">
    <div class="modal-content">
      <div class="flow-text">The event has been deleted</div>
    </div>
    <div class="modal-footer">
      <button class="btn modal-close pink">ok</button>
    </div>
  </div>

  <div class="row mt-1">
    <div class="col s3 container">
      <img src="http://absfreepic.com/absolutely_free_photos/small_photos/silver-laptop-on-a-black-background-3888x2592_20486.jpg" class="responsive-img">
      <div class="btn-group flex flex-column">
        <a href="addEvent.html" class="btn center waves-effect mx-auto mt-1 w-100 pink">Edit</a href="../.">
        <button data-target="delete" class="btn center waves-effect mx-auto mt-1 w-100 pink modal-trigger">Delete Event</button>
      </div>
    </div>
    <div class="col s9">
      <div class="row">
        <div class="col s6">
          <div class="input-field">
            <input type="text" id="title" value="{{$events->eventname}}" readonly>
            <label for="title" class="pink-text readonly">Event Title</label>
          </div>
        </div>
        <div class="col s6">
          <div class="chips pink-text readonly" id="organizer"><div class="chip">{{$events->managedBy}}</div></div>
        </div>
      </div>
      <div class="row">
        <div class="col s6">
          <div class="chips pink-text readonly" id="venue"><div class="chip">{{$events->venue}}</div></div>
        </div>
        <div class="col s6">
          <div class="input-field">
            <input type="text" id="sDate" value="{{$events->startdate}}" readonly>
            <label for="sDate" class="pink-text">Start Date</label>
          </div>
        </div>
        <div class="col s6">
          <div class="chips chips-autocomplete chips-placeholder pink-text readonly" id="tags"><div class="chip">Chip</div></div>
        </div>
        <div class="col s6">
          <div class="input-field">
            <input type="text" id="eDate" value="{{$events->enddate}}" readonly>
            <label for="eDate" class="pink-text">End Date</label>
          </div>
        </div>
      </div>
      <div class="pink lighten-5 p-1">
        <div class="row">
          <div class="p-1">
            <div class="input-field">
              <input type="text" id="fieldTitle" value="People Involved" readonly>
              <label for="fieldTitle" class="pink-text">Field Title</label>
            </div>
            <div class="input-field">
              <textarea id="text" class="materialize-textarea" readonly>The Louisian Agenda blah blah blah blah blah blah blah blah blah blah blah blah blah blah </textarea>
              <label for="text" class="pink-text">Text</label>
            </div>
            <div>
              <div class="left">
                <div class="pink-text">Document</div>
                <img src="https://cdn.onlinewebfonts.com/svg/img_77564.png" class="file-img">
                <div>Attendance-ling name.xlsx</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="{{asset('js/materialize.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/main.js')}}"></script>
</body>

</html>