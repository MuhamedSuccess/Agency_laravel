<?php

namespace App\Http\Controllers;
use App\Models\Trip;
use App\places;

use App\Models\Guide;
use App\Models\User;
use Auth;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

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
            $places = places::all();

            return view('pages.travel.index')->with('trips', $trips)->with('places' , $places ) ;

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

    public function activity()
    {
        $maxUser = 0;
        $maxGuide = 0;
        $maxUserId =0;
        $maxGuideId = 0; 
        $allTrips = Trip::all();
        foreach (User::all() as $user) {
            if ($user->reservations()->count() > $maxUser) {
                $maxUser = $user->reservations()->count();
                $maxUserId = $user->id;
            }
        }
        foreach (Guide::all() as $guide) {
            if ($guide->reservations()->count() > $maxGuide) {
                $maxGuide = $guide->reservations()->count();
                $maxGuideId = $guide->id;
            }
        }
        $maxUsers = [];
        if($maxUserId != 0)
            array_push($maxUsers, $maxUserId);
        $maxGuides = [];
        if($maxGuideId != 0)
            array_push($maxGuides, $maxGuideId);
        $maxUser = User::find($maxUsers);
        $maxGuide = Guide::find($maxGuides);
        $topTrips = Trip::find($this->topTrips());
        $lowTrips = Trip::find($this->lowTrips());

        $pdfFile = PDF::loadView('reports.most', compact('topTrips', 'lowTrips', 'maxUser', 'maxGuide','allTrips'));
        $pdfFile->save(storage_path() . 'report' . time() . '.pdf');
        return $pdfFile->stream('report.pdf');
    }

    public function topTrips()
    {
        $topTrips = DB::table('reservation')
            ->select('trip_id', DB::raw('count(*) as total'))
            ->groupBy('trip_id')
            ->get()
            ->pluck('total', 'trip_id');
        $max = 0;
        $maxTripId = [];
        $maxTripsCount = [];
        $isAdded = true;
        foreach ($topTrips as $key => $topTrip){
            if ($topTrip >= $max){
                foreach($maxTripsCount as $count){
                    if ($topTrip < $count)
                        $isAdded = false;
                }
                if ($isAdded) {
                    array_push($maxTripId, $key);
                    $max = $topTrip;
                    $isAdded = true;
                }
            }
        }
        return $maxTripId;
    }

    public function lowTrips()
    {
        $topTrips = DB::table('reservation')
            ->select('trip_id', DB::raw('count(*) as total'))
            ->groupBy('trip_id')
            ->orderBY('total', 'ASC')
            ->get()
            ->pluck('total', 'trip_id');
        $min = INF;
        $minTripId = [];
        $minTripsCount = [];
        $isAdded = true;
        foreach ($topTrips as $key => $topTrip){
            if ($topTrip <= $min){
                foreach($minTripsCount as $count){
                    if ($topTrip > $count) {
                        $isAdded = false;
                    }
                }
                if ($isAdded) {
                    array_push($minTripId, $key);
                    $min = $topTrip;
                    $isAdded = true;
                }
            }
        }
        return $minTripId;
    }

}
