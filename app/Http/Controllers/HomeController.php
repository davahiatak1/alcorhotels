<?php

namespace App\Http\Controllers;

use App\ChambreHotel;
use App\Hotel;
use App\Plat;
use App\Residence;
use App\Restaurant;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $appartements = (Residence::all()->count() >= 4)? Residence::all()->random(4): Residence::take(-4)->get();

        $restaurants = (Restaurant::all()->count() >= 9)? Restaurant::all()->random(9) : Restaurant::take(-4)->get();

        $hotels = (Hotel::all()->count() >= 9)? Hotel::all()->random(9) : Hotel::take(-4)->get();

        return view('welcome', [
            'appartements' => $appartements,
            'restaurants' => $restaurants,
            'hotels' => $hotels,
        ]);
    }
}
