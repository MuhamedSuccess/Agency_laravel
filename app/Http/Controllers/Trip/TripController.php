<?php

namespace App\Http\Controllers\Trip;

use Illuminate\View\compact;
use App\Store;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Trip;
use App\Models\Comment;
use App\Models\User;
use App\Models\TripPlan;
use App\Models\ToruistPlaces;
use App\Models\TourismType;
use App\Models\Guide;
use Illuminate\Support\Facades\DB;
use File;
use Image;
use Illuminate\Support\Facades\Storage;


class TripController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }




    public function homepage()
    {
        $trips = Trip::all();
        return view('pages.travel.index')->with('trips', $trips);
    }


    public function create()
    {
        $plans = TripPlan::all();
        $guide =  Guide::all();
        $places = ToruistPlaces::all();

        // $guides = $guide;

        $guides = DB::select('SELECT users.id , users.name from users INNER JOIN guide ON users.id = guide.id');



        // $guides = DB::select('SELECT id, name FROM users WHERE id IN('.$IDS['id'].')');
        $tourism_types = TourismType::all();


        return view(
            'pages.travel.create-trip',
            [
                'guides' => $guides,
                'trip_plans' => $plans,
                'tourism_types' => $tourism_types,
                'tourist_places' => $places
            ]
        );

    }


    public function store(Request $request)
    {
        // echo $data->input();



        print_r($request->input());
        if ($request->hasFile('cover')) {
            $file = $request->file('cover');



            // Get filename with the extension
            $filenameWithExt = $request->file('cover')->getClientOriginalName();
            // Get just filename
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            // Get just ext
            $extension = $request->file('cover')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore = $filename . '_' . time() . '.' . $extension;
            // Upload Image
            $path = $request->file('cover')->storeAs('public/trip/cover_images', $fileNameToStore);




            // $cover = $this->upload($file);

            $trip = new Trip();

            $trip->name = $request->input('name');
            $trip->description = $request->input('description');
            $trip->days = $request->input('days');
            $trip->date = date('Y-m-d H:i:s');
            $trip->trip_cover = $fileNameToStore;
            $trip->guide_id = $request->input('guide');
            $trip->trip_plan_id = $request->input('trip_plan');
            $trip->tourism_type_id = $request->input('tourim_type');
            $trip->place = $request->input('tourist_place');

            // $trip = Trip::create(
            //     [
            //         ['name'] => $request->input('name'),
            //         ['description'] => $request->input('description') ,
            //         ['days'] => $request->input('days') ,
            //         ['date'] => $request->input('date') ,
            //         ['cover'] =>$cover['path'],
            //         ['guide_id'] => $request->input('guide') ,
            //         ['trip_plan_id'] =>$request->input('trip_plan')  ,
            //         ['tourism_type_id'] => $request->input('tourim_type')  ,

            //     ]
            // );
            $trip->save();
            return redirect('/trip')->with('success', 'Trip Created Successfully');
        } else {
            return response()->json(false, 200);
        }
    }



    public function show($id)
    {


        $trip = Trip::find($id);


        // $profile = Profile::where('user_id', $user->id)->first();
        // $comments = Comment::where('user_id', $user->id)->where(function ($query) {
        //     $query->where('trip_id', '>', $id)
        //           ->orWhere('title', '=', 'Admin');
        // })


        // $comments_data =  DB::select('select * from comment where user_id= ' . $user->id . ' and trip_id = ' . $id . '');
        $comments_data =  DB::select('select * from comment where  trip_id = ' . $id . '');
        // $comments_data =  DB::select('select * from comment where user_id= '.$user->id.' and trip_id = '.$id.' ORDER BY date desc ');
        // $comments = (array)$comments;
        $comments = json_decode(json_encode($comments_data), true);
        // $replies_data = DB::select('select * from comment where parent_id != 0');
        // $replies = json_decode(json_encode($$replies_data), true);

        // $user = Comment::where('user_id', ) User::find($comments['user_id']);

        $data = [
            'trip'         => $trip,
            'comments' => $comments,
        ];
        // print_r($comments[0]['parent_id']);
        // echo print_r(($comments[0]['body']));

        return view(
            'pages.travel.trip-details',
            [
                'trip' => $trip,
                // 'user' => $user,
                'comments' => $comments
            ]
        );
    }





    public function upload($file)
    {



        $cover = $file;
        $filename = 'cover.' . $cover->getClientOriginalExtension();
        $save_path = storage_path() . '/trips/cover/';
        $path = $save_path . $filename;
        $public_path = '/images/trip/cover/' . $filename;

        // Make the user a folder and set permissions
        File::makeDirectory($save_path, $mode = 0755, true, true);

        // Save the file to the server
        Image::make($cover)->resize(300, 300)->save($save_path . $filename);



        // $cover = $file;
        // $filename = '/cover/'.date('H:i:s').'.'.$cover->getClientOriginalExtension();
        // $save_path = storage_path().'/trips/cover/';
        // $path = $save_path.$filename;
        // $public_path = '/images/trip/'.$file.$filename;

        // // Make the user a folder and set permissions
        // // File::makeDirectory($save_path, $mode = 0755, true, true);
        // $file->move($save_path, $save_path.$filename);
        // // Save the file to the server


        // Image::make($file)->resize(300, 300)->save($save_path.$filename);


        // $extension = $cover->getClientOriginalExtension();
        // $public_path = '/images/trip/'.$cover->getFilename().'.'.$extension;
        // Storage::disk('public')->put($cover->getFilename().'.'.$extension,  File::get($cover));

        // Save the public image path


        return $public_path;
    }
}
