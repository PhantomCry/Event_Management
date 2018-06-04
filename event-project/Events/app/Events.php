<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Events extends Model
{
  protected $primaryKey = 'idevents';
  public $timestamps = false;

  public function tags(){
    return $this->hasMany('App\Tags');
  }

}
