@if(count($errors) > 0)
  @foreach($errors->all() as $error)
  <h1>Errors</h1>  
  <p>{{$error}}</p>
  @endforeach
@endif

@if(session('success'))
  <h1>Success</h1>
  <p>{{session('success')}}</p>
@endif

@if(session('error'))
  <h1>Success</h1>
  <p>{{session('error')}}</p>
@endif