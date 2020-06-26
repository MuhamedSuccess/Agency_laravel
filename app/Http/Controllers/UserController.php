<?php

namespace App\Http\Controllers;
use App\Models\Trip;

use Auth;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();

        if ($user->isAdmin()) {
            
            // return view('pages.admin.home'); dashboard
            return view('pages.admin.dashboard');
        }else{
            $trips = Trip::all();
            return view('pages.travel.index')->with('trips', $trips);

        }

        
    }


    public function index_old()
    {
        $user = Auth::user();

        if ($user->isAdmin()) {
            
            return view('pages.admin.home'); 
            
        }else{
            $trips = Trip::all();
            return view('pages.travel.index')->with('trips', $trips);

        }

        
    }



}