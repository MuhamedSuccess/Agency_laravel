<?php

namespace App\Http\Controllers\Trip;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Trip;
use App\Models\TripPlan;
use App\Models\TourismType;
use App\Models\Guide;
use Illuminate\Support\Facades\DB;



class TripController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    



    public function index()
    {
        $trips = Trip::all();
        return view('pages.travel.index')->with('trips', $trips);
    }


    public function create()
    {
        $plans = TripPlan::all();
        $guide =  Guide::all();

        // $guides = $guide;

        $guides = DB::select('SELECT users.id , users.name from users INNER JOIN guide ON users.id = guide.id');

        

        // $guides = DB::select('SELECT id, name FROM users WHERE id IN('.$IDS['id'].')');
        $tourism_types = TourismType::all();
        
        
        return view('pages.travel.create-trip',['guides' => $guides, 'trip_plans' => $plans , 'tourism_types' =>$tourism_types]);
    }


    public function store(array $data)
    {
        if ($request->hasFile('cover')) {
            $file = $request->file('cover');
            $cover = $this->upload($avatar);

            $trip = Trip::create(
                [
                    ['name'] => $data['name'],
                    ['description'] => $data['description'],
                    ['days'] => $data['days'],
                    ['cover'] => $cover,
                    ['guide_id'] => $data['guide'],
                    ['trip+plan_id'] => $data['trip_plan'],
                    ['tourism_type_id'] => $data['tourim_type'],

                ]
            );
            $trip->save();
            return redirect('trip');

        }else {
            return response()->json(false, 200);
        }
    }

    

    public function show($id){

        try {
            $trip = Trip::find($id);
            return view('pages.travel.trip-details')->with('trip', $trip);
        } catch (ModelNotFoundException $exception) {
            abort(404);
        }

    }


    public function upload($file)
    {
        
            
            $cover = $file;
            $filename = 'trip-cover.'.$cover;
            $save_path = storage_path().'/trips/cover/';
            $path = $save_path.$filename;
            $public_path = '/images/trip/'.$file.'/cover/'.$filename;

            // Make the user a folder and set permissions
            File::makeDirectory($save_path, $mode = 0755, true, true);

            // Save the file to the server
            Image::make($avatar)->resize(300, 300)->save($save_path.$filename);

            // Save the public image path
            $currentUser->profile->avatar = $public_path;
            $currentUser->profile->save();

            return response()->json(['path' => $path], 200);
        
    }


}
