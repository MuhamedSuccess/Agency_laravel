<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trip;
use App\reservation;

use App\Models\User;
use Auth;

use DB;

class reservecontroller extends Controller
{
    public function show( $id)
    {
        //$reservation = reservations::All();
/*             try {
                $reserve = Trip::find($id);
                return view('reservations')->with('reserve', $reserve);
            } catch (ModelNotFoundException $exception) {
                abort(404);
            } */
     // return view('reservations', compact('trip'));


    }

    public function index($id)
    {
        $reserve = reservation::All();
        $users = User::all();
        $trip = trip::find($id);

/*         $reserve = DB::table('reservation')
                    ->join('users','reservation.user_id','users.id')
                    ->join('trip','reservation.trip_id','trip.id')
                    ->get(); */
        return view('reservations',compact('reserve','users','trip'));



    }
    public function confirm(Request $request,$id)
    {

        $trip = trip::find($id);

       $user_id = Auth::user()->id ; 
       if (reservation::where('user_id', '=', $user_id )->
                        where('trip_id', '=', $id )->count() > 0) {
                            echo "<script>alert('You have already reserved this trip !');</script>";
                            $reserve = reservation::All();
                            $users = User::all();
                            $trip = trip::find($id);
                            return view('reservations',compact('reserve','users','trip'));
; 
        }else{
        $reserve = new reservation();

        $reserve->trip_id = $trip->id ;
        $reserve->user_id = $user_id;
        $reserve->reserve = '1' ;
        $reserve->number = $request->input('number');
        $reserve->phone = $request->input('phone');


        $reserve->save();
        $reserve = reservation::All();
        $users = User::all();
        $trip = trip::find($id);
  
        return view('reservations',compact('reserve','users','trip'));
    }
    }

    public function delete($id)
    {
        $reserve = reservation::find($id);
        $reserve->delete();
        $reserve = reservation::All();
        $users = User::all();
        $trip = trip::find($id);
            
 
    }
    public function allreservation()
    {
        $reserve = reservation::All();
        $users = User::all();

/*         $reserve = DB::table('reservation')
                    ->join('users','reservation.user_id','users.id')
                    ->join('trip','reservation.trip_id','trip.id')
                    ->get(); */
        return view('allreservation',compact('reserve','users'));

    }
    public function userreservation()
    {
        $users = User::all();

        $user_id = Auth::user()->id ; 
        $reserve = reservation::where('user_id', '=', $user_id )->get();;


        //$someVariable = Input::get("some_variable");
        //$results = DB::select( DB::raw("SELECT * FROM reservation WHERE user_id = '$user_id'") );
/*         $reserve = DB::table('reservation')
                    ->join('users','reservation.user_id','users.id')
                    ->join('trip','reservation.trip_id','trip.id')
                    ->get(); */
        //echo $results ;
        return view('userreservation',compact('reserve','users'));

    }


}
