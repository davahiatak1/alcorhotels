<?php

namespace App\Providers;

use App\Alcor;
use App\ChambreHotel;
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
            // 'overviewChambres' => ChambreHotel::all()->random()->take(6)->get(),
            'overviewChambres' => [],

        ]);

    }
}
