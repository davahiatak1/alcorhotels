<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Hotel extends Model
{
    use Resizable;

    public function chambres()
    {
    	return $this->hasMany('App\Chambre');
    }
}
