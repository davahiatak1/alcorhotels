<?php
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

if (!function_exists('set_active_route')) {
    function set_active_route($route)
    {
        return Route::is($route) ? 'active' : '';
    }
}



if (!function_exists('flash'))
{
    function flash($message,$type='success')
    {
        session()->flash('notification.message',$message);
        session()->flash('notification.type',$type);
    }
}


