<?php

namespace App\Http\Controllers;

use App\Plat;
use App\Restaurant;
use Illuminate\Http\Request;

class RestaurantController extends Controller
{
    //

  public function index()
  {
    $restaurants = Restaurant::all();
    return view('restaurant.index',compact('restaurants'));
  }

  public function show($id)
  {
    $restaurant = Restaurant::find($id);
    $plats = Plat::where('restaurant_id',$id)->get();
    return view('restaurant.show',compact('plats','restaurant'));
  }
}
