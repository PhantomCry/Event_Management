<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events;
use App\Tags;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.addEvent');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'eventname' => 'required'           
        ]);
        
        $event = new Events;
        $tag = new Tags;

        $tag->tagname = $request->input('tag');
        $event->eventname = $request->input('eventname');
        $event->managedBy = $request->input('organizer');
        $event->venue = $request->input('venue');
        $event->startdate = $request->input('sDate');
        $event->enddate = $request->input('eDate');
        $event->save();
        $tag->save();

        return redirect('/');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $details = Events::find($id);
      return view('pages.details')->with('events', $details);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $details = Events::find($id);
        return view('pages.edit')->with('events', $details);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'eventname' => 'required'           
        ]);
        
        $event = Events::find($id);
        $event->eventname = $request->input('eventname');
        $event->managedBy = $request->input('organizer');
        $event->venue = $request->input('venue');
        $event->startdate = $request->input('sDate');
        $event->enddate = $request->input('eDate');
        $event->save();

        return redirect('/');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
