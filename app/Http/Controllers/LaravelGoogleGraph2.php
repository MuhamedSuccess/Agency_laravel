<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB ;
class LaravelGoogleGraph2 extends Controller
{
    function index()
    {
     $data = DB::table('users')
       ->select(
        DB::raw('preferences as preferences'),
        DB::raw('count(*) as number'))
       ->groupBy('preferences')
       ->get();
     $array[] = ['preferences', 'Number'];
     foreach($data as $key => $value)
     {
      $array[++$key] = [$value->preferences, $value->number];
     }
     return view('google_pie_chart2')->with('preferences', json_encode($array));
    }}
