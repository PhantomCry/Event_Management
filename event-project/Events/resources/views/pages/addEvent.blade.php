<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Occassion</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="{{asset('css/materialize.min.css')}}">
  <link rel="stylesheet" href="{{asset('css/main.css')}}">
</head>

<body>
  <nav class="transparent">
    <div class="nav-wrapper">
      <a href="/" class="brand-logo ml-3">
        <img src="{{asset('images/LOGO.png')}}" alt="Logo" id="addEventLogo">
      </a>
    </div>
  </nav>
  <div class="container">
    @include('includes.messages')
  </div>
  <div class="row mt-1">
    <div class="col s3 container">
      <img src="http://absfreepic.com/absolutely_free_photos/small_photos/silver-laptop-on-a-black-background-3888x2592_20486.jpg" class="responsive-img materialbox">
      <div class="btn-group flex flex-column">
        <button class="btn center waves-effect mx-auto mt-1 w-100 pink">Edit Display Image</button>
        <button class="btn center waves-effect mx-auto mt-1 w-100 pink">Cancel</button>
        {{Form::submit('Save Event', ['form'=> 'eventform', 'class' => 'btn center waves-effect mx-auto mt-1 w-100 pink'])}}
        <button class="btn center waves-effect mx-auto mt-1 w-100 pink">Delete Event</button>
      </div>
    </div>
    {!! Form::open(['action'=>'PostsController@store', 'method'=>'post', 'id' => 'eventform', 'class' => 'col s9']) !!}
      <div class="row">
        <div class="col s6">
          <div class="input-field">
            {{Form::text('eventname', '', ['placeholder'=> 'Event Name'])}}
          </div>
        </div>
        <div class="col s6">
            <div class="chips" id="org">
            </div>
            {{Form::text('organizer', '', ['class'=>'hide','id'=>'organizerInput'])}}
        </div>
      </div>
      <div class="row">
        <div class="col s6">
            <div class="chips" id="venue"></div>
            {{Form::text('venue', '', ['class'=>'hide','id'=>'venueInput'])}}
        </div>
        <div class="col s6">
          <div class="input-field">
            {{Form::text('sDate', '', ['class' => 'datepicker', 'placeholder'=>'Start Date'])}}
          </div>
        </div>
        <div class="col s6">
          <div class="chips" id="tag"></div>
          {{Form::text('tag', '', ['class'=>'hide','id'=>'tagInput'])}}
        </div>
        <div class="col s6">
          <div class="input-field">
            {{Form::text('eDate', '', ['class' => 'datepicker', 'placeholder'=>'End Date'])}}
          </div>
        </div>
      </div>
      {{-- Add New Fields --}}
      <div class="input-fields">
        {{Form::text('field[]', '', ['placeholder'=>'Field Name'])}}
      </div>
      <button type="button" id="add">Add field</button>
      <button type="submit">Submit</button>
      
    {!! Form::close() !!}
    <div class="result"></div>

  </div>
  @include('includes.scripts')
  {{-- <script src="//cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script> --}}
  <script>
      //CKEditor implementation
      // CKEDITOR.replace( 'editor' );
      
      //Placeholders for Chips
      $('#org').chips({
        placeholder: 'Organizer'
      });
      $('#venue').chips({
        placeholder: 'Venue'
      });
      
      $('#tag').chips({
        placeholder: 'Tags'
      });


      //Add Fields
      $(function() {
      $('#add').on('click', function() {
        $('.input-fields').append('<input type="text" name="field[]">');
      });

      // $('form').on('submit', function(evt) {
      //   evt.preventDefault();

      //   $.ajax({
      //     type: 'POST',
      //     data: $('form').serialize(),
      //     url: $('form').attr('action'),
      //     success: function(res) {
      //       $('.result').html(res);
      //     },
      //     error: function() {
      //       console.log('ndi gumana');
      //     }
      //   });
      // });
    });
		</script>
</body>

</html>