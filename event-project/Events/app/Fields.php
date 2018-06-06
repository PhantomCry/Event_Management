<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fields extends Model
{
    public function events()
    {
      return $this->belongsToMany('App\Events');
    }
}
