<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;


class AboutController extends Controller
{
    //
  public function index()
  {
    $about = About::first();
    // $about = $about->last
    return view('about',compact('about'));
  }
}
