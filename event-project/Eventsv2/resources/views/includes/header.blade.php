<header class="full flex flex-column z-depth-2 fixed waves-effect waves-light" id="header">
  <nav class="fixed transparent z-depth-0 op-0" id="exNav">
    <a href="/" class="brand-logo ml-3">
      <img src="{{asset('images/LOGO.png')}}" alt="Logo" id="addEventLogo">
    </a>
    <div class="nav-wrapper flex">
      <ul class="ml-auto mr-2 my-auto">
        <li><a href="event/create" class="btn pink">Add Event</a></li>
      </ul>
    </div>
  </nav>
  <div class="container my-auto flex flex-column pb-5" id="searchContainer">
    <img src="{{asset('images/LOGO.png')}}" class="mx-auto" id="logo">
    <div class="flex">
      <a href="event/create" class="btn my-auto pink shrink-0" id="exaddeve">Add Event</a>
      <div class="input-field m-auto grow px-1 boxes-home" id="searchField">
        <i class="material-icons prefix">search</i>
        <input type="text" class="mb-0" id="search" autocomplete="off">
      </div>
    </div>
  </div>
</header>
