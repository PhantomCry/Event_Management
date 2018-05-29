<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events;

class PagesController extends Controller
{
    public function index()
    {
      $events = Events::all();
      return view('layouts.main')->with('events', $events);
    }
}
