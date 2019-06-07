<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class ChambreHotel extends Model
{
    use Resizable;

    public function hotel()
    {
    	return $this->belongsTo('App\Hotel');
    }
}
