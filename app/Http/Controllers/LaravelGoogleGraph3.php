<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB ; 

class LaravelGoogleGraph3 extends Controller
{
    function index()
    {
        $data = DB::table('users')
        ->select(
        DB::raw('user_type as user_type'),
        DB::raw('count(*) as number'))
        ->groupBy('user_type')
        ->get();
        $array[] = ['user_type', 'Number'];
        foreach($data as $key => $value)
        {
        $array[++$key] = [$value->user_type, $value->number];
        }
        return view('google_pie_chart3')->with('user_type', json_encode($array));
    }
}
