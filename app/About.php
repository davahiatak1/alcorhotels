<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class About extends Model
{
    //
     use Resizable;
       protected $fillable = [
        'texte1', 'texte2','image'
    ];
}
