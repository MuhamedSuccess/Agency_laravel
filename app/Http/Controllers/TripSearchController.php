<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class TripSearchController extends Controller
{
    function index(Request $request)
    {
     if(request()->ajax())
     {
      if(!empty($request->filter_days))
      {
       $data = DB::table('trip')
         ->select('name', 'description', 'guide_id', 'days','trip_plan_id')
         ->where('days', $request->filter_days)
         ->where('name', $request->filter_place)
         ->get();
      }
      else
      {
       $data = DB::table('trip')
         ->select('name', 'description', 'guide_id', 'days','trip_plan_id')
         ->get();
      }
      return datatables()->of($data)->make(true);
     }
     $place_name = DB::table('trip')
          ->select('name')
          ->groupBy('name')
          ->orderBy('name', 'ASC')
          ->get();

    $Days = DB::table('trip')
          ->select('days')
          ->groupBy('days')
          ->orderBy('days', 'ASC')
          ->get();
     return view('trip_search', compact('place_name','Days'));
    }
}
