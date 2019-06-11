<?php

namespace App\Http\Controllers;

use App\ChambreHotel;
use App\Plat;
use App\Residence;
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
        $overviewChambres = (ChambreHotel::all()->count() >=5)? ChambreHotel::all()->random(5) : ChambreHotel::take(-5)->get();

        $overviewAppartements = (Residence::all()->count() >= 4)? Residence::all()->random(4): Residence::take(-4)->get();

        $overviewPlats = (Plat::all()->count() >= 9)? Plat::all()->random(9) : Plat::take(-4)->get();

        return view('welcome', [
            'overviewChambres' => $overviewChambres,
            'overviewAppartements' => $overviewAppartements,
            'overviewPlats' => $overviewPlats,
        ]);
    }
}
