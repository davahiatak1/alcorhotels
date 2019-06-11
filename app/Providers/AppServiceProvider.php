<?php

namespace App\Providers;

use App\About;
use App\Alcor;
use App\Blog;
use App\ChambreHotel;
use App\Post;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        View::share([
            'alcor' => Alcor::all()->last(),
            //'overviewChambres' => ChambreHotel::all()->random()->take(6)->get(),
            'overviewChambres' => [],


            'about' => About::all()->last(),
            'newPosts' => Blog::all()->last(),
        ]);

    }
}
