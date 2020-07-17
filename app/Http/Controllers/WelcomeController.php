<?php

namespace App\Http\Controllers;

class WelcomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function welcome()
    {
        // return "welcome";
        return redirect('trip');        
    }

    public function travel()
    {
        return view('pages.travel.index');
    }

    // public function map()
    // {
    //     return view('pages.map.index');
    // }

    public function map()
    {
        return view('pages.map.map-geolocation');
    }


    public function mail()
    {
        return view('pages.mail.map-geolocation');
    }



}
