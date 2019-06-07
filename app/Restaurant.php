<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Restaurant extends Model
{
    use Resizable;

    protected $fillable = [
        'nom', 'description','image'
    ];
}
