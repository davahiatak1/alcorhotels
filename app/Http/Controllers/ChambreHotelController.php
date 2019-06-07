<?php

namespace App\Http\Controllers;

use App\ChambreHotel;
use App\Hotel;
use Illuminate\Http\Request;

class ChambreHotelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ChambreHotel  $chambreHotel
     * @return \Illuminate\Http\Response
     */
    public function show(Hotel $hotel, ChambreHotel $chambre)
    {
        $chambres = ChambreHotel::all()->where('id', '!=', $chambre->id)->where('hotel_id', $hotel);

        return view('chambre-hotels.show', [
            'hotel' => $hotel,
            'chambre' => $chambre,
            'chambres' => $chambres,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ChambreHotel  $chambreHotel
     * @return \Illuminate\Http\Response
     */
    public function edit(ChambreHotel $chambreHotel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ChambreHotel  $chambreHotel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ChambreHotel $chambreHotel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ChambreHotel  $chambreHotel
     * @return \Illuminate\Http\Response
     */
    public function destroy(ChambreHotel $chambreHotel)
    {
        //
    }
}
