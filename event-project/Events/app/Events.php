<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Events extends Model
{
  protected $primaryKey = 'idevents';
  public $timestamps = false;

  public function tags(){
    return $this->belongsToMany('App\Tags','tag_of_events', 'idevents', 'tagID');
  }
}
