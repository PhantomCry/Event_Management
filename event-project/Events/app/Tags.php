<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
  protected $primaryKey = 'tagID';
  public $timestamps = false;
  
  public function events(){
    return $this->belongsToMany('App\Events','tag_of_events', 'tagID', 'idevents');
  }
}
