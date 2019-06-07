<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Contact extends Model
{
    protected $guarded = [];
    use Resizable;
}
