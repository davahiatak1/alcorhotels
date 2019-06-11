<?php

namespace App\Http\Controllers;

use App\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    //

  public function index()
  {
    $posts = Blog::latest()->get();
    return view('blog.index',compact('posts'));
  }

  public function show($id)
  {
    $post = Blog::find($id);
    if(Blog::count()>= 16)
      {
        $posts= Blog::where('id','<>',$id)->random(15);
      }else
      {
        $posts = Blog::where('id','<>',$id)->take(-15)->get();
      }
    return view('blog.show',compact('posts','post'));
  }

}
