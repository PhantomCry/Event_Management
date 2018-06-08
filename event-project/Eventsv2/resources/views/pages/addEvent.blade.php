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
  <nav class="grey">
    <div class="nav-wrapper">
      <a href="/" class="brand-logo ml-3">
        <img src="{{asset('images/LOGO.png')}}" alt="Logo" id="addEventLogo">
      </a>
    </div>
  </nav>
  <div class="container ">
    @include('includes.messages')
  </div>
  <div class="container cons">
  <div class="row mt-1 ">
    <div class="col s3 container">
      <img src="/uploads/avatar/default.png" class="responsive-img materialbox" id="avatar">
      <div class="btn-group flex flex-column">

      <!-- <form action="{{ URL::to('upload') }}" method="post" enctype="multipart/form-data">
					<label>Select image to upload:</label>
				    <input type="file" name="file" id="file">
				    <input type="submit" value="Upload" name="submit">
					<input type="hidden" value="{{ csrf_token() }}" name="_token">
			</form>
       -->
       <div class="middle">
      	<div class="content">
        <label for="file" class="btn center waves-effect mx-auto mt-1 w-100 pink">Edit Display Image</label for="file">

				<form action="{{ URL::to('upload') }}" method="post" enctype="multipart/form-data">
				    <input type="file" name="file" id="file" class="hide">
           
					<input type="hidden" value="{{ csrf_token() }}" name="_token">
				</form>

  
        <button class="btn center waves-effect mx-auto mt-1 w-100 pink">Cancel</button> 
        
        </div>
      
        </div>

      </div>
     
    </div>
    {!! Form::open(['action'=>'PostsController@store', 'method'=>'post', 'id' => 'eventform', 'class' => 'col s8']) !!}
      <div class="row">
        <div class="col s6">
          <div class="input-field">
            {{Form::label('eventname', 'Event Name', ['class' => 'pink-text'])}}
            {{Form::text('eventname', '', ['class' => 'boxes'])}}
          </div>
        </div>
        <div class="col s6">
            <div class="chips boxes" id="org">
            </div>
            {{Form::text('organizer', '', ['style'=> 'border:none;margin:0;padding:0', 
            'class'=>'hide','id'=>'organizerInput'])}}
        </div>
      </div>
      <div class="row">
        <div class="col s6">
            <div class="chips boxes" id="venue"></div>
            {{Form::text('venue', '', ['style'=> 'border:none;margin:0;padding:0', 
            'class'=>'hide','id'=>'venueInput'])}}
        </div>
        <div class="col s6">
          <div class="input-field">
            {{Form::label('sDate', 'Start Date', ['class' => 'pink-text'])}}
            {{Form::text('sDate', '', ['class' => 'datepicker'])}}
          </div>
        </div>
        <div class="col s6">
            <div class="input-field ">
                {{Form::label('tag', 'Tag', ['class' => 'pink-text'])}}
                {{Form::text('tag', '', ['class' => 'boxes'])}}
              </div>
        </div>
        <div class="col s6">
          <div class="input-field">
            {{Form::label('eDate', 'End Date', ['class' => 'pink-text'])}}
            {{Form::text('eDate', '', ['class' => 'datepicker'])}}
          </div>
        </div>
        <div class="p-1">
            <button type="button" class="btn pink right">Add New Field</button>
        </div>
      </div>

      <div>
        <div class="input-field">
            {{Form::label('field', 'Field Title', ['class' => 'pink-text'])}}
            {{Form::text('field', '')}}
        </div>
        <div class="input-field">
            {{Form::label('body', 'Body', ['class' => 'pink-text'])}}
            {{Form::text('body', '')}}
        </div>
        <div class="p-1 hide">
            <button type="button" class="btn pink right">Add New Field</button>
        </div>
      </div>
      

      <div class="row">
      <div class="col"> <button class="btn right waves-effect mx-auto mt-1 w-100 pink">Delete Event</button></div>
              <div class="col right">
      {{Form::submit('Save Event', ['form'=> 'eventform', 'class' => 'btn center waves-effect mx-auto mt-1 w-100 pink'])}}</div>
     
      </div>
    {!! Form::close() !!}
  </div>
  </div>
  @include('includes.scripts')
  <script>
    $(function(){
      $('#file').on('change', function(evt){
        $('#avatar').attr('src', this.files[0].mozFullPath + evt.target.files[0].name);
      });
    });
  </script>
</body>

</html>