<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{

    
  public $timestamps = false;
    public function events(){
      return $this->belongsToMany('App\Events');
    }
}
