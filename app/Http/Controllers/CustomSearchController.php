<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class CustomSearchController extends Controller
{
    function index(Request $request)
    {
     if(request()->ajax())
     {
      if(!empty($request->filter_gender))
      {
       $data = DB::table('users')
         ->select('name', 'first_name', 'last_name', 'email', 'gender', 'user_type')
         ->where('gender', $request->filter_gender)
         ->where('user_type', $request->filter_type)
         ->get();
      }
      else
      {
       $data = DB::table('users')
         ->select('name', 'first_name', 'last_name', 'email', 'gender', 'user_type')
         ->get();
      }
      return datatables()->of($data)->make(true);
     }
     $userType = DB::table('users')
          ->select('user_type')
          ->groupBy('user_type')
          ->orderBy('user_type', 'ASC')
          ->get();
     return view('custom_search', compact('userType'));
    }
}
