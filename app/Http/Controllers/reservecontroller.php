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
    public function show($id)
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
        return view('reservations', compact('reserve', 'users', 'trip'));


    }

    public function getReservationData(Request $request, $id)
    {
        $trip = Trip::find($id);

        $user_id = \Auth::user()->id;
        if (reservation::where('user_id', '=', $user_id)->
            where('trip_id', '=', $id)->count() > 0) {
            echo "<script>alert('You have already reserved this trip !');</script>";
            $reserve = reservation::All();
            $users = User::all();
            $trip = trip::find($id);
            return view('reservations', compact('reserve', 'users', 'trip'));;
        } else {

            if (request()->ajax()) {




                $adult = $request->adults;
                $child = $request->childs;
                $senior = $request->senior;

                $package = array($request->adults, $request->childs, $request->senior); //quantity of each of them
                $number = array_sum($package); //number of tourists

                $cost = $this->calcPrice($package, $id); //total cost



                return response()->json(
                    ['success' => 'You are ready to reserve the trip',
                        'trip' => $trip, //reserved trip
                        'cost' => $cost, //total cost for that trip
                        'package' => $package //package information and reservation data
                    ]);

            } else {

                return response()->json(['error' => 'json data is missing']);

            }


            // return view('reservations',compact('reserve','users','trip'));
        }

    }

    public function confirm(Request $request, $id)
    {

        $trip = Trip::find($id);

        $user_id = \Auth::user()->id;
        if (reservation::where('user_id', '=', $user_id)->
            where('trip_id', '=', $id)->count() > 0) {
            echo "<script>alert('You have already reserved this trip !');</script>";
            $reserve = reservation::All();
            $users = User::all();
            $trip = trip::find($id);
//            return view('reservations', compact('reserve', 'users', 'trip'));
            return response()->json(['error' => 'You have already reserved this trip !',

                'trip' => $trip,
                'reserve' => $reserve
                ]);
        } else {

            if (request()->ajax()) {
                $reserve = new reservation();

                $reserve->trip_id = $trip->id;
                $reserve->user_id = $user_id;
                $reserve->reserve = '1';

//                $reserve->phone = $request->input('phone');
                $reserve->phone = 2432398;

                $reserve->adult = $request->adults;
                $reserve->child = $request->childs;
                $reserve->senior = $request->senior;

                $package = array($request->adults, $request->childs, $request->senior); //quantity of each of them
                $reserve->number = array_sum($package); //number of tourists

                $reserve->cost = $this->calcPrice($package, $id); //total cost

                $reserve->save();
                $reserve = reservation::All();
                $users = User::all();
                $trip = trip::find($id);

                return response()->json(
                    ['success' => 'You are accepted in this trip',
                        'trip' => $trip,
                        'reserve' => $reserve
                    ]);

            } else {

                return response()->json(['error' => 'json data is missing']);

            }


            // return view('reservations',compact('reserve','users','trip'));
        }
    }


    public function calcPrice($package, $id)
    {
//        $trip = DB::select('select * from trip where id=' . $id . '');
        $trip = Trip::find($id);

        if (!empty($trip)) {
            // Example 1
// $pizza  = "3xadult+2xchild+2xsenior";

            $arr_cost = [$trip->adult, $trip->child, $trip->senior];


//            $pieces = explode("+", $package);
            $arr = [];
//            $arr_cost = ["adult" => $trip->adult, "child" => $trip->child, "senior" => $trip->senior];

            for ($i = 0; $i < 3; $i++) {
//                $unit_cost = explode("x", $pieces[$i]);
//                $left = $unit_cost[0];
//                $right = $unit_cost[1];
                $arr[$i] = $package[$i] * $arr_cost[$i];
            }

// print_r($arr);

            $totoal_cost = $arr[0] + $arr[1] + $arr[2];

            $final_package = $package[0]."xadult+". $package[1]."xchild+".$package[2]."xsenior";
            DB::insert('insert into pricing (package, trip_id, currency ,cost) values (?, ?, ?, ?)', [$final_package, $id, 'dollar', $totoal_cost]);


            return $totoal_cost;

        } else {
            return 0;
        }


    }

    public function getReservation($id){
        $reservation = reservation::find(id);
        if(!empty($reservation)){
            return response()->json(['reserve' => $reserve]);
        }
    }

    public function getreservationDetails($id)
    {
//        $trip = DB::select('select * from trip where id=' . $id . '');
//        $pricing = DB::select('select * from pricing where trip_id=' . $id . '');
        $reservation = reservation::find($id);

        if(!empty($reservation)){
            return response()->json(['reserve' => $reserve]);
        }else{
            return response()->json(['error' => 'json data is missing']);

        }

//        return response()->json(['trip' => $trip, 'pricing' => $pricing]);

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
        return view('allreservation', compact('reserve', 'users'));

    }

    public function userreservation()
    {
        $users = User::all();

        $user_id = Auth::user()->id;
        $reserve = reservation::where('user_id', '=', $user_id)->get();;


        //$someVariable = Input::get("some_variable");
        //$results = DB::select( DB::raw("SELECT * FROM reservation WHERE user_id = '$user_id'") );
        /*         $reserve = DB::table('reservation')
                            ->join('users','reservation.user_id','users.id')
                            ->join('trip','reservation.trip_id','trip.id')
                            ->get(); */
        //echo $results ;
        return view('userreservation', compact('reserve', 'users'));

    }


}
